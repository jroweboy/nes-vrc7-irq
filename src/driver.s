
.include "common.s"

.import GameInit, GameMain, NMICallback
.importzp nmi_lock
.import oam

;
; iNES header
;

.segment "HEADER"

.include "nes2header.inc"

nes2mapper 85
nes2prg 32768
nes2chr 8192
nes2bram 8192
nes2mirror 'V'
nes2tv 'N'
nes2end


; INES_MAPPER = 85 ; 85 = VRC7
; INES_MIRROR = 1 ; 0 = horizontal mirroring, 1 = vertical mirroring
; INES_SRAM   = 1 ; 1 = battery backed SRAM at $6000-7FFF

; .byte 'N', 'E', 'S', $1A ; ID
; .byte $01 ; 16k PRG chunk count
; .byte $01 ; 8k CHR chunk count
; .byte INES_MIRROR | (INES_SRAM << 1) | ((INES_MAPPER & $f) << 4)
; .byte (INES_MAPPER & %11110000)
; .byte $0, $0, $0, $0, $0, $0, $0, $0 ; padding

;
; vectors placed at top 6 bytes of memory area
;
.import IRQHandler


.segment "VECTORS"
.word (HandleNMI)
.word (Reset)
.word (IRQHandler)

.segment "FIXED"
Reset:
  sei       ; mask interrupts
  cld       ; disable decimal mode
  lda #0
  sta PPUCTRL ; disable NMI
  sta PPUMASK ; disable rendering
  sta $4015 ; disable APU sound
  sta $4010 ; disable DMC IRQ
  lda #$40
  sta $4017 ; disable APU IRQ
  ldx #$FF
  txs       ; initialize stack
  ; wait for first vblank
  bit PPUSTATUS
  :
    bit PPUSTATUS
    bpl :-
  ; clear all RAM to 0
  lda #0
  ldx #0
  :
    sta $0000, X
    sta $0100, X
    sta $0200, X
    sta $0300, X
    sta $0400, X
    sta $0500, X
    sta $0600, X
    sta $0700, X
    inx
    bne :-
  ; place all sprites offscreen at Y=255
  lda #255
  ldx #0
  :
    sta oam, X
    inx
    inx
    inx
    inx
    bne :-
  ; wait for second vblank
  :
    bit PPUSTATUS
    bpl :-


  ; VRC7 setup - From the wiki
  ; 7  bit  0
  ; ---------
  ; RS.. ..MM
  ; ||     ||
  ; ||     ++- Mirroring (0: vertical; 1: horizontal;
  ; ||                        2: one-screen, lower bank; 3: one-screen, upper bank)
  ; |+-------- Silence expansion sound if set
  ; +--------- WRAM enable (1: enable WRAM, 0: protect)
  ldx # (1 << 7)
  stx MIRRORING_CONTROL
  
  lda #0
  sta PRG_SELECT_0
  lda #1
  sta PRG_SELECT_1
  lda #2
  sta PRG_SELECT_2
  lda #0
  sta CHR_SELECT_0
  lda #1
  sta CHR_SELECT_1
  lda #2
  sta CHR_SELECT_2
  lda #3
  sta CHR_SELECT_3
  lda #4
  sta CHR_SELECT_4
  lda #5
  sta CHR_SELECT_5
  lda #6
  sta CHR_SELECT_6
  lda #7
  sta CHR_SELECT_7

  ; disable the IRQ on the mapper side, but enable them on the NES side
  IRQ_DISABLE
  cli

  ; NES is initialized, ready to begin!
  ; enable the NMI for graphical updates, and jump to our main program
  lda #%10001000
  sta PPUCTRL
  jsr GameInit
  jmp GameMain

.proc HandleNMI
  pha
    lda PPUSTATUS       ; Clear the NMI flag
    lda nmi_lock
    bne NMIEarlyExit
    beq NMIStart
NMIEarlyExit:
  pla
  rti
NMIStart:
  ; save registers. A was already saved above
    txa
    pha
      tya
      pha
        jsr NMICallback
        ; unlock re-entry flag
        lda #0
        sta nmi_lock
      pla
      tay
    pla
    tax
  pla
  rti
.endproc

