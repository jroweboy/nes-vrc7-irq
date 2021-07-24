
; Common PPU defines
PPUCTRL     = $2000
PPUMASK     = $2001
PPUSTATUS   = $2002
OAMADDR     = $2003
OAMDATA     = $2004
PPUSCROLL   = $2005
PPUADDR     = $2006
PPUDATA     = $2007
OAMDMA      = $4014

PRG_SELECT_0      = $8000
PRG_SELECT_1      = $8010
PRG_SELECT_2      = $9000

CHR_SELECT_0      = $a000
CHR_SELECT_1      = $a010
CHR_SELECT_2      = $b000
CHR_SELECT_3      = $b000
CHR_SELECT_4      = $c010
CHR_SELECT_5      = $c000
CHR_SELECT_6      = $d000
CHR_SELECT_7      = $d010

VRC7_AUDIO_SELECT = $9010
VRC7_AUDIO_WRITE  = $9030
MIRRORING_CONTROL = $e000
IRQ_LATCH         = $e010
IRQ_CONTROL       = $f000
IRQ_ACKNOWLEDGE   = $f010


;Audio

SONG_TOASTY     = 0
SONG_CHILLY     = 1
SONG_PAUSED_MASK= %10000000
SONG_PAUSE      = 253
SONG_STOP       = 254
SONG_CLEAR      = 255

; various ppu bit masks
PPU_PAUSE   = 0   ; skip ppu updates
PPU_READY   = 1   ; write new ppu data
PPU_OFF     = $ff ; disable rendering and NMI

.macro IRQ_DISABLE
  lda #%00000000
  sta IRQ_CONTROL
.endmacro
.macro IRQ_ENABLE
  lda #%00000010
  sta IRQ_CONTROL
.endmacro


; Used to create a jmp abs command in the zeropage
OP_JMP_ABS        = $4c
