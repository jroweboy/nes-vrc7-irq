
.include "common.s"

.import InitMusic, UpdateMusic, IRQInit, PPUNMICallback
.import music_queue
.export GameInit, GameMain, GameIRQHandler, NMICallback

.segment "ZEROPAGE" : ZEROPAGE

main_tmp:       .res 1
main_tmp2:      .res 1
main_tmp3:      .res 1
main_tmp_ptr:   .res 2
frame_counter:  .res 1
next_frame:     .res 1

.globalzp main_tmp, main_tmp2, main_tmp3, main_tmp_ptr

.segment "OAM"
oam: .res 256        ; sprite OAM data to be uploaded by DMA
.global oam

.segment "FIXED"


.proc NMICallback
  jsr PPUNMICallback
  ; jsr PrepareNextScreen
  jsr UpdateMusic
  inc next_frame
  rts
.endproc

.proc GameInit
  jsr IRQInit
  jsr InitMusic
  lda SONG_TOASTY
  sta music_queue
  rts
.endproc

.proc GameMain
  lda next_frame
  beq GameMain
  ; do usual game stuff here
  dec next_frame
  inc frame_counter
  jmp GameMain ; Loop until the next frame starts
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