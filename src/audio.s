
.include "./common.s"

.importzp main_tmp_ptr, jmp_addr_hi, jmp_addr_lo
.import PatchIRQHandler, PatchIRQHandlerTerminal, StartIRQ
.global music_queue, select_queue, write_queue

.import __AUDIO_DMC_LOAD__

.export InitMusic
.export UpdateMusic


.segment "ZEROPAGE"
vrc7_current_offset:  .res 1

.segment "BSS"
; make sure these are page aligned so it doesn't spill over into a new page
.ALIGN 32
  select_queue: .res 32
.ALIGN 32
  write_queue:  .res 32

music_queue:      .res 1
audio_current:    .res 1



; FamiStudio config.
FAMISTUDIO_CFG_EXTERNAL       = 1
FAMISTUDIO_CFG_NTSC_SUPPORT   = 1
FAMISTUDIO_CFG_DPCM_SUPPORT   = 1
FAMISTUDIO_CFG_SMOOTH_VIBRATO = 1

FAMISTUDIO_USE_VOLUME_TRACK   = 1
FAMISTUDIO_USE_SLIDE_NOTES    = 1
FAMISTUDIO_USE_VIBRATO        = 1

FAMISTUDIO_EXP_VRC7           = 1

FAMISTUDIO_DPCM_OFF           = __AUDIO_DMC_LOAD__

.define FAMISTUDIO_CA65_ZP_SEGMENT   ZEROPAGE
.define FAMISTUDIO_CA65_RAM_SEGMENT  BSS
.define FAMISTUDIO_CA65_CODE_SEGMENT AUDIO_CODE

.segment "FIXED"

.proc InitMusic
  lda #SONG_CLEAR
  sta music_queue
  sta audio_current

  lda #1 ; NTSC
  ldx #<(cools_music_data)
  ldy #>(cools_music_data)
  jmp famistudio_init
  ; rts
.endproc

.proc UpdateMusic
  jsr MusicUpdate
  jsr RestorePreviousHandler
  jsr famistudio_update
  jsr PatchTerminalHandler
  jsr RunIRQ
  rts
.endproc

.proc RunIRQ
  ldx vrc7_current_offset
  beq Exit
    lda #$00
    sta jmp_addr_lo
    lda #$60
    sta jmp_addr_hi
    jsr StartIRQ
Exit:
  rts
.endproc

.proc RestorePreviousHandler
  patch_ptr = main_tmp_ptr
  lda #$00
  sta main_tmp_ptr
  ; add vrc7_current_offset - 1
  lda #$5f
  clc
  adc vrc7_current_offset
  sta main_tmp_ptr+1
  jsr PatchIRQHandler
  lda #0
  sta vrc7_current_offset
  rts
.endproc

.proc PatchTerminalHandler
  patch_ptr = main_tmp_ptr
  lda #$00
  sta main_tmp_ptr
  ; add vrc7_current_offset - 1
  lda #$5f
  clc
  adc vrc7_current_offset
  sta main_tmp_ptr+1
  jsr PatchIRQHandlerTerminal
  
  ;rts
.endproc

.proc MusicUpdate
  lda music_queue
  cmp #SONG_CLEAR
    beq Exit
  cmp #SONG_STOP
    beq MusicStop
  cmp #SONG_PAUSE
    beq MusicPause

  ; music_play
  ; the SONG_ defines are setup to be the same as the famistudio exported song list
  sta audio_current
  jsr famistudio_music_play
  jmp ClearQueue

MusicPause:
  lda audio_current
  bmi Unpause
    ; pause
    ora #SONG_PAUSED_MASK
    sta audio_current
    lda #1
    jsr famistudio_music_pause
    bne ClearQueue
  Unpause:
    and #%01111111 ; #~SONG_PAUSED_MASK
    sta audio_current
    lda #0
    jsr famistudio_music_pause
    bne ClearQueue ;should be unconditional

MusicStop:
  lda #SONG_CLEAR
  sta audio_current
  jsr famistudio_music_stop


ClearQueue:
  lda #SONG_CLEAR
  sta music_queue
Exit:
  rts
.endproc


.segment "AUDIO_CODE"
.include "./famistudio_ca65.s"

.segment "AUDIO"
.include "../audio/vrc7_famistudio_demo.s"

.segment "AUDIO_DMC"
.incbin "../audio/vrc7_famistudio_demo.dmc"


