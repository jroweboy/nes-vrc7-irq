
.include "common.s"

.import InitMusic, UpdateMusic, IRQInit, PPUNMICallback, InitPPU
.import PPUOff, PPUUpdate, ClearNametable, palette
.import music_queue
.importzp nmi_palette
.export GameInit, GameMain, GameIRQHandler, NMICallback

.segment "ZEROPAGE" : ZEROPAGE

main_tmp:       .res 1
main_tmp2:      .res 1
main_tmp3:      .res 1
main_tmp_ptr:   .res 2
frame_counter:  .res 1
next_frame:     .res 1

prev_game_state:.res 1
game_state:     .res 1
game_jmp_abs:   .res 3
game_jmp_ptr := game_jmp_abs + 1

.globalzp main_tmp, main_tmp2, main_tmp3, main_tmp_ptr

.segment "FIXED"

.proc NMICallback
  jsr PPUNMICallback
  ; jsr PrepareNextScreen
  jsr UpdateMusic
  inc next_frame
  rts
.endproc

.proc GameInit
  jsr InitPPU
  jsr IRQInit
  jsr InitMusic
  lda SONG_TOASTY
  sta music_queue
  lda #OP_JMP_ABS
  sta game_jmp_abs
  rts
.endproc

;; Standard game state machine
STATE_LOADING   = 0
STATE_IDLE      = 1
.proc GameMain
  lda next_frame
  beq GameMain
  ; do usual game stuff here
  lda game_state
  asl
  tax
  lda GameStateTable,x
  sta game_jmp_ptr
  lda GameStateTable+1,x
  sta game_jmp_ptr+1
  jsr game_jmp_abs

  dec next_frame
  inc frame_counter
  jmp GameMain ; Loop until the next frame starts
GameStateTable:
  .word (GameStateLoading)
  .word (GameStateIdle)
.endproc

.proc GameIRQHandler
  pha
    txa
    pha
      tya
      pha
      sta IRQ_ACKNOWLEDGE
      ; cancel the IRQ till next frame
      IRQ_DISABLE
      pla
      tay
    pla
    tax
  pla
  rti
.endproc

.proc GameStateLoading
  lda #STATE_LOADING
  sta prev_game_state
  jsr PPUOff
  lda #$00
  jsr ClearNametable
  lda #$04
  jsr ClearNametable

  @palette_size = 32
  ldx #@palette_size - 1
:
    lda GenericPalette,x
    sta palette,x
    dex
    bpl :-
  inc nmi_palette

  lda #STATE_IDLE
  sta game_state

  jmp PPUUpdate

GenericPalette:
  .byte $0f,$0f,$30,$26
  .byte $0f,$0f,$0f,$0f
  .byte $0f,$0f,$0f,$0f
  .byte $0f,$0f,$0f,$0f
  .byte $0f,$0f,$30,$26
  .byte $0f,$0f,$0f,$0f
  .byte $0f,$0f,$0f,$0f
  .byte $0f,$0f,$0f,$0f
.endproc

.proc GameStateIdle
  ; check if we just transitioned to this state
  lda game_state
  cmp prev_game_state
  beq SkipInit
    sta prev_game_state
SkipInit:
  rts
.endproc
