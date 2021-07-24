;---
; Populate the SRAM
.include "common.s"

.import GameIRQHandler
.importzp main_tmp, main_tmp_ptr
.global select_queue, write_queue, jmp_addr_lo, jmp_addr_hi
.export PatchIRQHandler, PatchIRQHandlerTerminal, StartIRQ, IRQInit

; treat the zeropage address for the IRQHandler as an absolute address
IRQHandler := irq_handler
.export IRQHandler : absolute

.ZEROPAGE
  irq_handler:  .res 3
  jmp_addr_lo := irq_handler+1
  jmp_addr_hi := irq_handler+2


.segment "FIXED"

.proc StartIRQ
  lda #$ff - 50 ; cycle counter counts up to ff, so reload with ff - 50
  sta IRQ_LATCH
  ; 7  bit  0
  ; ---------
  ; .... .MEA
  ;       |||
  ;       ||+- IRQ Enable after acknowledgement (see IRQ Acknowledge)
  ;       |+-- IRQ Enable (1 = enabled)
  ;       +--- IRQ Mode (1 = cycle mode, 0 = scanline mode)
  lda #%00000111
  sta IRQ_CONTROL
  rts
.endproc

.proc IRQInit
  tmp       = main_tmp
  write_ptr = main_tmp_ptr

ZeroBSS:
  lda #0
  ldx #32
  :
    sta select_queue, x
    sta write_queue, x
    dex
    bne :-

CreateIRQHandler:
  lda #OP_JMP_ABS
  sta irq_handler
  lda #$00
  sta jmp_addr_lo
  lda #$60
  sta jmp_addr_hi

CopyIRQCode:
  ; create 32 copies of the IRQHandlerTemplate code and
  ; patch them to load the correct location in RAM
  ldx #31 ; $60 -> $7f == 31
  stx tmp
  ; Initialize the write_ptr to the first location of the IRQ
  lda #$00
  sta write_ptr
  lda #$7f
  sta write_ptr+1
  :
    ; copy the code as data from the IRQ template into the
    ; SRAM address pointed to by write_ptr
    ldy #IRQHandlerTemplateSize-1
    :
      lda IRQHandlerTemplate, y
      sta (write_ptr), y
      dey
      bpl :-
    
    ; patch this IRQ handler to point to the correct spot in RAM
    ldy #TemplateSelectOffset
    lda (write_ptr), y
    clc
    adc tmp
    sta (write_ptr), y

    ldy #TemplateWriteOffset
    lda (write_ptr), y
    clc
    adc tmp
    sta (write_ptr), y

    ; bump the write_ptr_hi by one to move to the next SRAM page
    dec write_ptr+1
    dec tmp
    dex
    bpl :--

  ; patch the last handler to point to the provided terminal
  lda #$00
  sta write_ptr
  lda #$7f
  sta write_ptr+1
  jmp PatchIRQHandlerTerminal
  ; rts
  
.endproc

; 38 total cycles (including the register writes)
IRQHandlerTemplate:
  pha
    ; write the registers for the audio.
TemplateSelect:
    lda select_queue
    sta VRC7_AUDIO_SELECT

    ; we only need 6 cycles of delay for the SELECT register
    ; so we can add a little delay here by acknowledging the IRQ
    sta IRQ_ACKNOWLEDGE

    ; and loading the next byte should provide enough delay
TemplateWrite:
    lda write_queue
    sta VRC7_AUDIO_WRITE

    ; now we normally would need to wait 42 cycles for this write to complete by delaying,
    ; but the magic is we instead will quickly return from the IRQ handler and let the main
    ; code run instead. Then when the IRQ fires again, we can jump back and write the next byte.
    ; But how do we write the next byte? well thats what the patching was for.

    ; We made 32 copies of this IRQ handler and each of them write a load and write a single byte
    ; for each register which is hardcoded into the IRQ handler. The byte that they will write is
    ; patched in during the initialization routine (see PatchIRQCode)

    ; In other words, the first handler will write offset zero into the select/write_queue, the
    ; second handler will write offset 1, and so on. In order to select which IRQ handler will run
    ; we setup a "base" IRQ handler inside the zeropage which contains the instruction
    ; jmp absolute_addr. In order to make the next IRQ handler call the next byte, all we need to do
    ; is increment the hi byte of the absolute_addr by 1, and since we aligned everything correctly,
    ; it'll call the next routine. This is limited to the number of page aligned copies of the IRQ
    ; handler we can fit in SRAM though. We have to offset this by one to make room for the "terminal"
    ; handler which can do whatever it wants (such as set up other IRQs to run or what not)

    ; when writing the last handler we'll patch over the data here with IRQTerminalTemplate
    ; the comments indicate what will replace what
IRQHandlerNormalExit:
    inc jmp_addr_hi ; lda #<(GameIRQHandler) (2 bytes)
  pla ; (last byte) sta jmp_addr_lo
  rti ; 2nd byte of sta jmp_addr_lo
  ; If we patch this IRQ handler to be the terminal one, then we need a little extra code here
  ; and since it doesn't affect the regular IRQ handler, we can just put it at the end of each of them
  lda #>(GameIRQHandler)
  sta jmp_addr_hi
  pla
  rti
IRQHandlerTemplateEnd: ; label used here to define the end so we can calc size

; Calculate const offsets used for patching
IRQHandlerTemplateSize  := (IRQHandlerTemplateEnd - IRQHandlerTemplate)
TemplateSelectLO        := TemplateSelect+1
TemplateSelectOffset    := (TemplateSelectLO - IRQHandlerTemplate)
TemplateWriteLO         := TemplateWrite+1
TemplateWriteOffset     := (TemplateWriteLO - IRQHandlerTemplate)
IRQHandlerExitOffset    := (IRQHandlerNormalExit - IRQHandlerTemplate)

IRQTerminalTemplate:
  lda #<(GameIRQHandler)
  sta jmp_addr_lo
IRQTerminalTemplateEnd:
IRQTerminalTemplateSize  := (IRQTerminalTemplateEnd - IRQTerminalTemplate)


.proc PatchIRQHandler
  write_ptr = main_tmp_ptr
  ldy #IRQHandlerExitOffset + IRQTerminalTemplateSize-1
  ldx #IRQTerminalTemplateSize-1
  :
    lda IRQHandlerNormalExit, x
    sta (write_ptr), y
    dey
    dex
    bpl :-
  rts
.endproc

.proc PatchIRQHandlerTerminal
  write_ptr = main_tmp_ptr
  ldy #IRQHandlerExitOffset + IRQTerminalTemplateSize-1
  ldx #IRQTerminalTemplateSize-1
  ; write the IRQTerminalTemplate over the last 4 bytes of the handler in main_tmp_ptr
  :
    lda IRQTerminalTemplate, x
    sta (write_ptr), y
    dey
    dex
    bpl :-
  rts
.endproc