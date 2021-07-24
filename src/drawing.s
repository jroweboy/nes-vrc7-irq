
.include "common.s"

.export PPUNMICallback, InitPPU, PPUOff, PPUUpdate, ClearNametable
.exportzp nmi_lock, nmi_ready, nmi_palette

.segment "ZEROPAGE" : zeropage

nmi_lock:       .res 1 ; prevents NMI re-entry
nmi_count:      .res 1 ; is incremented every NMI
nmi_ready:      .res 1 ; is incremented every NMI
nmi_palette:    .res 1 ; increment if you have palette updates

scroll_x:       .res 1 ; x scroll position
scroll_y:       .res 1 ; y scroll position
scroll_nmt:     .res 1 ; nametable select (0-3 = PPUCTRL,$2400,$2800,$2C00)

ppumask_mirror: .res 1
ppuctrl_mirror: .res 1

.segment "BSS"
blackout_flag:    .res 1
palette:          .res 32  ; palette buffer for PPU update
.export palette


.segment "OAM"
oam: .res 256        ; sprite OAM data to be uploaded by DMA
.global oam

.segment "TILES"
.incbin "../chr/whatever.chr"

.segment "FIXED"

.proc InitPPU
  lda #%00011110
  sta ppumask_mirror
  lda #%10001000
  sta ppuctrl_mirror
  rts
.endproc

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
  ; sprite OAM DMA
  ldx #0
  stx OAMADDR
  lda #>oam
  sta OAMDMA
  ; palettes
  lda nmi_palette
  beq NMTUpdate
    lda #0
    sta nmi_palette
    ldy blackout_flag
    lda ppuctrl_mirror
    sta PPUCTRL ; set horizontal nametable increment
    lda PPUSTATUS
    lda #$3F
    sta PPUADDR
    stx PPUADDR ; set PPU address to $3F00
    cpy #1
    beq Blackout
    RAM:
      lda palette,x
      sta PPUDATA
      inx
      cpx #32
      bcc RAM
      bcs NMTUpdate
    Blackout:
      lda #$0f
    :
      sta PPUDATA
      inx
      cpx #32
      bcc :-    
    
NMTUpdate:
  ; jsr WriteNMTBuffer
Scroll:
  lda scroll_nmt
  and #%00000011 ; keep only lowest 2 bits to prevent error
  ora #%10001000
  sta PPUCTRL
  lda scroll_x
  sta PPUSCROLL
  lda scroll_y
  sta PPUSCROLL
  ; enable rendering if we aren't blanked
  lda ppumask_mirror
  sta PPUMASK
  ; flag PPU update complete
  ldx #0
  stx nmi_ready
PPUUpdateEnd:
  rts
.endproc


; Writes #$00 to nametable A.
; A = nametable to clear (nmt0 == 0, nmt1 = 4, etc)
.proc ClearNametable
  ldx PPUSTATUS ; reset latch
  clc
  adc #$20
  sta PPUADDR
  ldx #$00
  stx PPUADDR

  lda #$00
  ldy #30 ; 30 rows
  :
    ldx #32 ; 32 columns
    :
      sta PPUDATA
      dex
      bne :-
    dey
    bne :--
  ; set all attributes to 0
  ldx #64 ; 64 bytes
  :
    sta PPUDATA
    dex
    bne :-
  rts
.endproc
  ; jmp PPUUpdate

; ppu_update: waits until next NMI, turns rendering on (if not already), uploads OAM, palette, and nametable update to PPU
.proc PPUUpdate
  lda #PPU_READY
  sta nmi_ready
  :
    lda nmi_ready
    bne :-
  rts
.endproc

; ppu_skip: waits until next NMI, does not update PPU
.proc PPUSkip
  lda nmi_count
  :
    cmp nmi_count
    beq :-
  rts
.endproc

; ppu_off: waits until next NMI, turns rendering off (now safe to write PPU directly via PPUDATA)
.proc PPUOff
  lda #PPU_OFF
  sta nmi_ready
  :
    lda nmi_ready
    bne :-
  rts
.endproc
