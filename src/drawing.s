
.include "common.s"

.export PPUNMICallback
.exportzp nmi_lock, nmi_ready, nmi_palette

.segment "ZEROPAGE" : zeropage

nmi_lock:       .res 1 ; prevents NMI re-entry
nmi_count:      .res 1 ; is incremented every NMI
nmi_ready:      .res 1 ; is incremented every NMI
nmi_palette:    .res 1 ; increment if you have palette updates
ppumask_mirror: .res 1


.segment "TILES"
.incbin "../chr/whatever.chr"

.segment "FIXED"

.proc PPUNMICallback
  ; prevent accidental re-entry
  lda #1
  sta nmi_lock
  ; increment frame counter
  inc nmi_count
  ; handle nmi skipping logic
  lda nmi_ready
  bne :+ ; PPU_PAUSE not ready to update PPU
    jmp PPUUpdateEnd
  :
  cmp #PPU_OFF ; nmi_ready == $ff turns rendering off
  bne :+
    lda #%00000000
    sta PPUMASK
    ldx #0
    stx nmi_ready
    jmp PPUUpdateEnd
  :
  ; enable rendering if we aren't blanked
  lda ppumask_mirror
  sta PPUMASK
  ; flag PPU update complete
  ldx #0
  stx nmi_ready
PPUUpdateEnd:
  rts
.endproc
