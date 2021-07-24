;this file for FamiStudio Sound Engine generated by FamiStudio

cools_music_data:
	.byte 2
	.word @instruments
	.word @instruments_vrc7
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,@song0ch5,@song0ch6,@song0ch7,@song0ch8,@song0ch9,@song0ch10
	.byte .lobyte(@tempo_env_10_mid), .hibyte(@tempo_env_10_mid), 0, 0
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,@song1ch5,@song1ch6,@song1ch7,@song1ch8,@song1ch9,@song1ch10
	.byte .lobyte(@tempo_env_10_mid), .hibyte(@tempo_env_10_mid), 0, 0

.export cools_music_data
.global FAMISTUDIO_DPCM_PTR

@instruments:
	.word @env8,@env2,@env11,@env5
	.word @env13,@env2,@env17,@env10
	.word @env16,@env2,@env17,@env10
	.word @env9,@env2,@env12,@env10
	.word @env1,@env2,@env11,@env10
	.word @env7,@env2,@env11,@env10

@instruments_vrc7:
	.word @env13, @env2, @env10
	.byte $70, $00
	.byte $21,$61,$1d,$07,$82,$81,$11,$07
	.word @env0, @env2, @env10
	.byte $40, $00
	.byte $31,$61,$0c,$07,$a8,$64,$61,$27
	.word @env15, @env2, @env10
	.byte $b0, $00
	.byte $17,$c1,$24,$07,$f8,$f8,$22,$12
	.word @env4, @env2, @env10
	.byte $f0, $00
	.byte $21,$72,$0d,$00,$c1,$d5,$56,$06
	.word @env3, @env2, @env10
	.byte $f0, $00
	.byte $21,$72,$0d,$00,$c1,$d5,$56,$06
	.word @env14, @env2, @env10
	.byte $b0, $00
	.byte $17,$c1,$24,$07,$f8,$f8,$22,$12
	.word @env6, @env2, @env10
	.byte $70, $00
	.byte $21,$61,$1d,$07,$82,$81,$11,$07
	.word @env13, @env2, @env10
	.byte $40, $00
	.byte $31,$61,$0c,$07,$a8,$64,$61,$27

@samples:
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;1 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;2 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;3 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;4 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;5 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;6 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;7 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;8 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;9 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;10 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;11 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;12 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;13 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;14 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;15 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;16 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;17 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;18 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;19 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;20 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;21 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;22 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;23 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;24 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;25 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;26 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;27 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;28 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;29 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;30 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;31 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;32 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;33 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;34 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;35 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$0c,$0f	;36 (BassDrum)
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;37 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;38 
	.byte $03+.lobyte(FAMISTUDIO_DPCM_PTR),$30,$0f	;39 (Snare)
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;40 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;41 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;42 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;43 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;44 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;45 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;46 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;47 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;48 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;49 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;50 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;51 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;52 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;53 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;54 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;55 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;56 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;57 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;58 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;59 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;60 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;61 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;62 
	.byte $00+.lobyte(FAMISTUDIO_DPCM_PTR),$00,$00	;63 

@env0:
	.byte $04,$ca,$7f,$00,$01
@env1:
	.byte $00,$c7,$02,$c6,$02,$c5,$03,$c4,$03,$c3,$03,$c2,$03,$c1,$00,$0d
@env2:
	.byte $c0,$7f,$00,$00
@env3:
	.byte $04,$c9,$7f,$00,$01
@env4:
	.byte $00,$c5,$04,$c4,$00,$03
@env5:
	.byte $80,$cb,$00,$01
@env6:
	.byte $04,$cc,$7f,$00,$01
@env7:
	.byte $00,$c0,$c0,$c1,$c1,$c3,$c4,$c5,$c5,$c6,$00,$09
@env8:
	.byte $00,$c5,$c4,$c3,$c2,$c1,$03,$c0,$00,$07
@env9:
	.byte $00,$c7,$c7,$c6,$c5,$c4,$c3,$c2,$c1,$c0,$00,$09
@env10:
	.byte $00,$c0,$7f,$00,$01
@env11:
	.byte $7f,$00,$00
@env12:
	.byte $c2,$7f,$00,$00
@env13:
	.byte $04,$cb,$7f,$00,$01
@env14:
	.byte $00,$c7,$c9,$ca,$ca,$cb,$1a,$ca,$08,$c9,$0a,$c8,$c8,$c7,$03,$c6,$c6,$c5,$00,$11
@env15:
	.byte $00,$c3,$c5,$c6,$c6,$c7,$1a,$c6,$08,$c5,$0a,$c4,$c4,$c3,$03,$c2,$c2,$c1,$00,$11
@env16:
	.byte $04,$c7,$7f,$00,$01
@env17:
	.byte $c1,$02,$c2,$02,$c1,$02,$c0,$c0,$c0,$00,$00
@env18:
	.byte $00,$c0,$be,$bd,$bd,$be,$bf,$c1,$c2,$c3,$c3,$c2,$00,$01
@tempo_env_10_mid:
	.byte $03,$04,$06,$05,$05,$05,$80
@song0ch0:
	.byte $cf
@song0ch0loop:
	.byte $6a, .lobyte(@tempo_env_10_mid), .hibyte(@tempo_env_10_mid), $82
@song0ref7:
	.byte $29, $a5, $2d, $91, $2e, $a5, $30, $91, $2e, $91, $2d, $a5, $2e, $91, $2d, $91, $29, $a5, $2d, $91, $2a, $91, $29, $91
	.byte $6b, $2a, $91, $29, $91, $27, $91, $25, $a5, $27, $91, $29, $91, $24, $9b, $00, $87, $24, $87, $00, $87, $24, $87, $00
	.byte $87, $29, $d7, $00, $87, $6b, $a7, $29, $a5, $2e, $a5, $31, $a5, $61, $ff, $2d, $2e, $cd, $62, $2e, $cd, $6b, $93, $25
	.byte $91, $29, $91, $2a, $a5, $2c, $91, $2a, $91, $29, $b9, $27, $a5, $24, $a5, $27, $a3, $f9, $6b, $29, $a5, $2d, $91, $2e
	.byte $a5, $30, $91, $2e, $91, $2d, $91, $62, $61, $fd, $2d, $2e, $91, $61, $fc, $34, $35, $87, $62, $35, $87, $33, $91, $31
	.byte $a5, $35, $91, $33, $91, $35, $91, $6b, $2a, $91, $25, $91, $2e, $91, $31, $91, $30, $91, $2e, $91, $30, $91, $31, $91
	.byte $30, $91, $2d, $87, $00, $87, $29, $87, $00, $87, $30, $cd, $00, $91, $6b, $a7, $29, $91, $22, $91, $2e, $91, $22, $91
	.byte $30, $91, $22, $91, $31, $91, $22, $91, $2e, $91, $61, $fd, $30, $31, $91, $62, $31, $91, $33, $91, $61, $05, $32, $31
	.byte $87, $62, $31, $9b, $6b, $31, $91, $33, $91, $35, $91, $31, $a5, $35, $91, $33, $91, $30, $f7, $91, $35
@song0ref220:
	.byte $a5
@song0ref221:
	.byte $6b, $36, $91, $2a, $91, $84, $35, $91, $82, $36, $91, $2a, $91, $84, $35, $91, $82, $36, $91, $2a, $91, $84, $36, $91
	.byte $2a, $91, $82, $36, $91, $2a, $91, $36, $91, $61, $fc, $37, $38, $87, $62, $38, $87, $36, $91, $35, $91, $6b, $33, $91
	.byte $35, $91, $84, $2e, $91, $82, $35, $91, $22, $91, $84, $2e, $91, $82, $35, $91, $36, $91, $84, $2e, $91, $82, $36, $91
	.byte $35, $91, $84, $2e, $91, $82, $38, $91, $36, $91, $35, $91, $33, $91, $6b, $36, $91, $2a, $91, $84, $35, $91, $82, $36
	.byte $91, $2a, $91, $84, $35, $91, $82, $36, $91, $2a, $91, $84, $36, $91, $2a, $91, $82, $36, $91, $2a, $91, $36, $91, $61
	.byte $fc, $37, $38, $87, $62, $38, $87, $3a, $91, $38, $91, $6b, $3a, $87, $38, $87, $36, $87, $38, $87, $36, $87, $35, $87
	.byte $36, $87, $35, $87, $33, $87, $35, $87, $33, $87, $31, $87, $33, $87, $31, $87, $30, $87, $31, $87, $30, $91, $2e, $91
	.byte $30, $91, $31, $b9, $30
	.byte $ff, $8d
	.word @song0ref220
	.byte $2a, $91, $29, $91, $6b
	.byte $ff, $31
	.word @song0ref7
	.byte $b9, $61, $f2, $2b, $2d, $87, $2d, $9b, $6b, $29, $87, $61, $24, $29, $25, $87, $84, $29, $87, $61, $24, $29, $25, $87
	.byte $82, $29, $a5, $2e, $a5, $31, $a5, $61, $ff, $2d, $2e, $cd, $62, $2e, $b9, $22, $91, $6b, $93, $25, $91, $29, $91, $2a
	.byte $a5, $2c, $91, $2a, $91, $29, $b9, $31, $91, $84, $29, $91, $82, $30, $91, $84, $29, $91, $82, $2d, $91, $84, $27, $8f
	.byte $f9, $6b, $82, $29, $91, $84, $29, $91, $82, $2d, $91, $2e, $a5, $30, $91, $31, $91, $33, $91, $84, $33, $91, $82, $35
	.byte $91, $36, $91, $31, $a5, $35, $91, $33, $91, $35, $91, $6b, $2a, $91, $84, $22, $91, $82, $36, $91, $35, $91, $84, $35
	.byte $91, $82, $30, $91, $2e, $91, $30, $91, $31, $91, $84, $29, $91, $82, $33, $91, $35, $cd, $84, $35, $91, $6b, $a7, $82
	.byte $29, $91, $22, $91, $2e, $91, $22, $91, $30, $91, $22, $91, $31, $91, $22, $91, $2e, $91, $61, $fd, $30, $31, $91, $62
	.byte $31, $91, $33, $91, $61, $05, $32, $31, $87, $62, $31, $9b, $6b, $31, $91, $33, $91, $35, $91, $36, $a5, $38, $91, $36
	.byte $91, $35, $b9, $61, $fe, $38, $39, $91, $62, $39, $e1
	.byte $ff, $8d
	.word @song0ref221
	.byte $ff, $8d
	.word @song0ref220
	.byte $2a, $91, $29, $91, $fd
	.word @song0ch0loop
@song0ch1:
	.byte $cf
@song0ch1loop:
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf
	.byte $f7, $f7, $cf, $86
@song0ref651:
	.byte $2e, $91, $22, $91, $29, $91, $2e, $91, $29, $91, $22, $91, $2e, $91, $29, $91, $22, $91, $2e, $91, $29, $91, $22, $91
	.byte $2e, $91, $22, $91, $29, $91, $2e, $91, $f7, $f7, $cf, $35, $87, $33, $87, $31, $87, $33, $87, $31, $87, $30, $87, $31
	.byte $87, $30, $87, $2e, $87, $30, $87, $2e, $87, $2c, $87, $2e, $87, $2c, $87, $2a, $87, $2e, $87, $2c, $91, $2a, $91, $2c
	.byte $91, $2e, $b9, $2c, $a5, $f7, $f7, $cf
	.byte $ff, $4b
	.word @song0ref651
	.byte $27, $91, $25, $91, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7
	.byte $cf, $f7, $f7, $cf, $f7, $f7, $cf
	.byte $ff, $50
	.word @song0ref651
	.byte $ff, $4b
	.word @song0ref651
	.byte $27, $91, $25, $91, $fd
	.word @song0ch1loop
@song0ch2:
	.byte $80, $36, $87, $37, $87, $31, $91, $36, $87, $37, $87, $31, $91
@song0ch2loop:
	.byte $a7, $80
@song0ref794:
	.byte $36, $cd, $36, $cd, $36, $cd, $36, $91, $36, $91, $a7, $36, $b9, $36, $a5, $36, $a5, $36, $91, $36, $cd, $36, $a5, $a7
	.byte $36, $cd, $36, $cd, $36, $cd, $36, $91, $36, $91, $a7, $36, $b9, $36, $a5, $36, $a5, $36, $91, $36, $cd, $36, $a5, $a7
	.byte $ff, $30
	.word @song0ref794
@song0ref845:
	.byte $36, $cd, $36, $cd, $36, $b9, $36, $a5, $36, $91, $93, $36, $91, $36, $a5, $36, $91, $36, $a5, $36, $91, $36, $a5, $36
	.byte $a5, $36, $87, $37, $87, $31, $91, $36, $87, $37, $87, $31, $91, $a7
	.byte $ff, $26
	.word @song0ref845
	.byte $ff, $26
	.word @song0ref845
	.byte $ff, $26
	.word @song0ref845
	.byte $ff, $30
	.word @song0ref794
	.byte $ff, $30
	.word @song0ref794
	.byte $ff, $26
	.word @song0ref845
	.byte $ff, $26
	.word @song0ref845
	.byte $ff, $26
	.word @song0ref845
	.byte $ff, $25
	.word @song0ref845
	.byte $fd
	.word @song0ch2loop
@song0ch3:
	.byte $cf
@song0ch3loop:
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $bb, $80
@song0ref929:
	.byte $3c, $cd, $3c, $cd, $3c, $a5, $3c, $a5, $3c, $91, $bb, $3c, $cd, $3c, $cd, $3c, $a5, $3c, $a5, $3c, $91, $bb, $3c, $cd
	.byte $3c, $cd, $3c, $a5, $3c, $b9, $bb, $3c, $cd, $3c, $cd
@song0ref964:
	.byte $3c, $a5, $3c, $a5, $3c, $91, $93, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $91, $93
	.byte $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $a5, $3c, $91, $93, $3c, $a5, $3c, $a5, $3c, $a5, $3c
	.byte $a5, $3c, $a5
	.byte $ff, $33
	.word @song0ref964
	.byte $ff, $28
	.word @song0ref964
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $bb
	.byte $ff, $56
	.word @song0ref929
	.byte $ff, $33
	.word @song0ref964
	.byte $ff, $28
	.word @song0ref964
	.byte $fd
	.word @song0ch3loop
@song0ch4:
	.byte $27, $87, $27, $87, $24, $91, $27, $87, $27, $87, $24, $91
@song0ch4loop:
	.byte $24, $a5, $27, $cd, $27, $cd, $27, $cd, $27, $a5, $a7, $27, $cd, $27, $cd, $27, $cd, $27, $91, $27, $91
@song0ref1080:
	.byte $a7, $27, $cd, $27, $cd, $27, $cd, $27, $a5, $a7, $27, $cd, $27, $cd, $27, $cd, $27, $91, $27, $91, $a7, $27, $cd, $27
	.byte $cd, $27, $cd, $27, $a5, $a7, $27, $cd, $27, $cd, $27
@song0ref1115:
	.byte $cd, $27, $91, $27, $91, $a7, $27, $cd, $27, $cd, $27, $cd, $27, $a5, $a7, $27, $cd, $27, $cd, $27, $a5, $27, $87, $27
	.byte $87, $24, $91, $27, $87, $27, $87, $24, $91
@song0ref1148:
	.byte $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5
	.byte $24, $a5, $27, $91, $24, $91, $27, $91, $24, $91, $27, $87, $27, $87, $24, $87, $24, $87, $24, $a5, $27, $a5, $24, $a5
	.byte $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $a5, $27, $a5, $24, $9b, $24, $87, $27, $91
	.byte $27, $91, $27, $91, $24, $87, $27, $91, $24, $87, $27, $87, $27, $87
	.byte $ff, $56
	.word @song0ref1148
	.byte $ff, $37
	.word @song0ref1080
	.byte $ff, $77
	.word @song0ref1115
	.byte $ff, $56
	.word @song0ref1148
	.byte $fd
	.word @song0ch4loop
@song0ch5:
	.byte $cf
@song0ch5loop:
	.byte $80
@song0ref1252:
	.byte $3a, $a5, $3d, $91, $41, $a5, $3f, $91, $3d, $91, $3c, $a5, $3d, $91, $3c, $91, $3a, $a5, $3c, $91, $3a, $91, $38, $91
	.byte $3a, $91, $38, $91, $36, $91, $35, $a5, $36, $91, $38, $91, $33, $9b, $f9, $87, $33, $87, $f9, $87, $33, $87, $f9, $87
	.byte $39, $e1, $f9, $a5, $3a, $a5, $3d, $a5, $40, $a5, $41, $a5, $62, $61, $fd, $41, $40, $a5, $62, $61, $03, $40, $41, $a5
	.byte $62, $41, $a5, $93, $36, $91, $39, $91, $3a, $a5, $3c, $91, $3a, $91, $39, $e1, $f9, $cb, $00
	.byte $ff, $52
	.word @song0ref1252
	.byte $82
@song0ref1347:
	.byte $3a, $91, $31, $f9, $8f, $36, $91, $3a, $91, $31, $f9, $8f, $36, $91, $3a, $91, $31, $f9, $8f, $36, $91, $41, $91, $46
	.byte $91, $49, $91, $4b, $9b, $62, $61, $ee, $4b, $4a, $87, $49, $a5, $48, $f7, $f7, $a5, $f9, $a5, $3a, $91, $31, $f9, $8f
	.byte $36, $91, $3a, $91, $31, $f9, $8f, $36, $91, $3a, $91, $31, $f9, $8f, $36, $91, $41, $91, $46, $91, $49, $91, $4b, $9b
	.byte $62, $61, $ee, $4b, $4a, $87, $49, $a5, $61, $12, $4a, $4b, $87, $62, $4b, $af, $4d, $f7, $e1, $f9, $a5
	.byte $ff, $51
	.word @song0ref1347
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf
	.byte $ff, $51
	.word @song0ref1347
	.byte $ff, $51
	.word @song0ref1347
	.byte $fd
	.word @song0ch5loop
@song0ch6:
	.byte $cf
@song0ch6loop:
@song0ref1478:
	.byte $86
@song0ref1479:
	.byte $35, $91, $31, $91, $2e, $91, $35, $91, $31, $91, $2e, $91, $35, $91, $31, $91, $2e, $91, $35, $91, $31, $91, $2e, $91
	.byte $35, $91, $31, $91, $2e, $91, $35, $91, $2a, $91, $2e, $91, $31, $91, $2a, $91, $2e, $91, $31, $91, $2a, $91, $30, $91
	.byte $33, $91, $30, $91, $2d, $91, $33, $91, $30, $91, $2d, $91, $33, $91, $30, $91
	.byte $ff, $3d
	.word @song0ref1479
	.byte $a5
	.byte $ff, $40
	.word @song0ref1479
	.byte $ff, $3d
	.word @song0ref1479
@song0ref1553:
	.byte $a5, $82
@song0ref1555:
	.byte $42, $91, $3d, $91, $00, $91, $42, $91, $3d, $91, $00, $91, $42, $91, $3d, $91, $00, $91, $3d, $91, $42, $91, $46, $91
	.byte $46, $a5, $3f, $a5, $41, $f7, $f7, $a5, $f9, $a5, $42, $91, $3d, $91, $00, $91, $42, $91, $3d, $91, $00, $91, $42, $91
	.byte $3d, $91, $00, $91, $3d, $91, $42, $91, $46, $91, $48, $a5, $46, $a5, $61, $08, $47, $48, $91, $62, $48, $a5, $49, $b9
	.byte $46, $f7, $a5, $f9, $a5
	.byte $ff, $49
	.word @song0ref1555
	.byte $ff, $40
	.word @song0ref1478
	.byte $ff, $3d
	.word @song0ref1479
	.byte $a5
	.byte $ff, $40
	.word @song0ref1479
	.byte $ff, $3d
	.word @song0ref1479
	.byte $ff, $4a
	.word @song0ref1553
	.byte $ff, $49
	.word @song0ref1555
	.byte $fd
	.word @song0ch6loop
@song0ch7:
	.byte $cf
@song0ch7loop:
	.byte $84
@song0ref1660:
	.byte $35, $f7, $f7, $cd, $31, $f7, $91, $2d, $f7, $b9, $35, $f7, $f7, $cd, $36, $f7, $91, $39, $f7, $b9, $35, $f7, $f7, $cd
	.byte $31, $f7, $91, $2d, $f7, $b9, $35, $f7, $f7, $cd, $36, $f7, $91, $39, $f5, $3c, $b7
@song0ref1701:
	.byte $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f
	.byte $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $35, $8f, $00, $93, $35, $8f, $00, $93, $35, $8f, $00, $93, $35, $8f
	.byte $00, $93, $35, $8f, $00, $93, $35, $8f, $00, $93, $35, $8f, $00, $93, $35, $8f
	.byte $ff, $40
	.word @song0ref1701
	.byte $ff, $40
	.word @song0ref1701
	.byte $ff, $40
	.word @song0ref1701
	.byte $00
	.byte $ff, $69
	.word @song0ref1660
	.byte $ff, $40
	.word @song0ref1701
	.byte $ff, $40
	.word @song0ref1701
	.byte $ff, $40
	.word @song0ref1701
	.byte $00, $fd
	.word @song0ch7loop
@song0ch8:
	.byte $cf
@song0ch8loop:
	.byte $84
@song0ref1794:
	.byte $3a, $f7, $f7, $cd, $36, $f7, $91, $33, $f7, $b9, $3a, $f7, $f7, $cd, $3d, $f7, $91, $3c, $f7, $b9, $3a, $f7, $f7, $cd
	.byte $36, $f7, $91, $33, $f7, $b9, $3a, $f7, $f7, $cd, $3d, $f7, $91, $3c, $f5, $41, $b7
@song0ref1835:
	.byte $00, $93, $3f, $8f, $00, $93, $3f, $8f, $00, $93, $3f, $8f, $00, $93, $3f, $8f, $00, $93, $3f, $8f, $00, $93, $3f, $8f
	.byte $00, $93, $3f, $8f, $00, $93, $3f, $8f, $00, $93, $3d, $8f, $00, $93, $3d, $8f, $00, $93, $3d, $8f, $00, $93, $3d, $8f
	.byte $00, $93, $3d, $8f, $00, $93, $3d, $8f, $00, $93, $3d, $8f, $00, $93, $3d, $8f
	.byte $ff, $40
	.word @song0ref1835
	.byte $ff, $40
	.word @song0ref1835
	.byte $ff, $40
	.word @song0ref1835
	.byte $00
	.byte $ff, $69
	.word @song0ref1794
	.byte $ff, $40
	.word @song0ref1835
	.byte $ff, $40
	.word @song0ref1835
	.byte $ff, $40
	.word @song0ref1835
	.byte $00, $fd
	.word @song0ch8loop
@song0ch9:
	.byte $cf
@song0ch9loop:
	.byte $84
@song0ref1928:
	.byte $31, $f7, $f7, $cd, $2e, $f7, $91, $29, $b9, $27, $b9, $29, $b9, $31, $f7, $f7, $cd, $2e, $f7, $91, $35, $f7, $b9, $31
	.byte $f7, $f7, $cd, $2e, $f7, $91, $29, $b9, $27, $b9, $29, $b9, $31, $f7, $f7, $cd, $2e, $f7, $91, $35, $f5, $30, $b7
@song0ref1975:
	.byte $00, $93, $36, $8f, $00, $93, $36, $8f, $00, $93, $36, $8f, $00, $93, $36, $8f, $00, $93, $36, $8f, $00, $93, $36, $8f
	.byte $00, $93, $36, $8f, $00, $93, $36, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f
	.byte $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f, $00, $93, $3a, $8f
	.byte $ff, $40
	.word @song0ref1975
	.byte $ff, $40
	.word @song0ref1975
	.byte $ff, $40
	.word @song0ref1975
	.byte $00
	.byte $ff, $6f
	.word @song0ref1928
	.byte $ff, $40
	.word @song0ref1975
	.byte $ff, $40
	.word @song0ref1975
	.byte $ff, $40
	.word @song0ref1975
	.byte $00, $fd
	.word @song0ch9loop
@song0ch10:
	.byte $cf
@song0ch10loop:
	.byte $88
@song0ref2068:
	.byte $16, $91, $16, $91, $22, $91, $16, $91, $16, $91, $22, $91, $16, $91, $16, $91, $22, $91, $16, $91, $16, $91, $22, $91
	.byte $16, $91, $22, $91, $16, $91, $22, $91, $12, $91, $12, $91, $12, $91, $12, $a5, $1e, $91, $12, $91, $15, $a5, $15, $91
	.byte $15, $91, $15, $a5, $15, $91, $21, $91, $15, $91
	.byte $ff, $2c
	.word @song0ref2068
	.byte $18, $a5, $24, $91, $18, $91, $15, $a5, $15, $91, $21, $91, $15, $91
	.byte $ff, $3a
	.word @song0ref2068
	.byte $ff, $2c
	.word @song0ref2068
@song0ref2149:
	.byte $18, $a5, $24, $91, $18, $91, $15, $a5, $15, $91, $21, $91, $15
@song0ref2162:
	.byte $91, $12, $91, $12, $91, $1e, $91, $12, $91, $12, $91, $1e, $91, $12, $91, $12, $91, $1e, $91, $12, $91, $12, $91, $1e
	.byte $91, $12, $91, $1e, $91, $12, $91, $1e, $91, $16, $91, $16, $91, $22, $91, $16, $91, $16, $91, $22, $91, $16, $91, $16
	.byte $91, $22, $91, $16, $91, $16, $91, $22, $91, $15, $91, $21, $91, $14, $91, $20
	.byte $ff, $39
	.word @song0ref2162
	.byte $14, $91, $20, $91, $11, $91, $1d
	.byte $ff, $40
	.word @song0ref2162
	.byte $ff, $39
	.word @song0ref2162
	.byte $14, $91, $20, $91, $11, $91, $1d, $91
	.byte $ff, $3a
	.word @song0ref2068
	.byte $ff, $2c
	.word @song0ref2068
	.byte $18, $a5, $24, $91, $18, $91, $15, $a5, $15, $91, $21, $91, $15, $91
	.byte $ff, $3a
	.word @song0ref2068
	.byte $ff, $2c
	.word @song0ref2068
	.byte $ff, $4d
	.word @song0ref2149
	.byte $ff, $39
	.word @song0ref2162
	.byte $14, $91, $20, $91, $11, $91, $1d
	.byte $ff, $40
	.word @song0ref2162
	.byte $ff, $39
	.word @song0ref2162
	.byte $14, $91, $20, $91, $11, $91, $1d, $91, $fd
	.word @song0ch10loop
@song1ch0:
	.byte $7f
@song1ref2:
	.byte $82, $27, $91, $84, $23, $91, $82, $2a, $91, $84, $27, $91, $82, $2e, $91, $84, $2a, $91, $82, $33, $91, $84, $2e, $91
	.byte $82, $22, $91, $84, $1d, $91, $82, $26, $91, $84, $22, $91, $82, $29, $91, $84, $26, $91, $82, $2e, $91, $84, $29, $91
	.byte $6b, $82, $1e, $91, $84, $1b, $91, $82, $22, $91, $84, $1e, $91, $82, $27, $91, $84, $22, $91, $82, $2a, $91, $84, $27
	.byte $91, $82, $1b, $91, $84, $16, $91, $82, $1e, $91, $84, $1b, $91, $82, $22, $91, $84, $1e, $91, $82, $2e, $91, $84, $2a
	.byte $91, $6b
	.byte $ff, $3e
	.word @song1ref2
	.byte $84, $29, $91
@song1ch0loop:
	.byte $6a, .lobyte(@tempo_env_10_mid), .hibyte(@tempo_env_10_mid), $7f, $86, $1b, $87, $79, $16
@song1ref116:
	.byte $87, $7f, $22, $87, $79, $1b, $87, $7f, $27, $87, $79, $22, $87, $7f, $2a, $87, $79, $27, $87, $7f, $1b, $87, $79, $2a
	.byte $ff, $10
	.word @song1ref116
	.byte $ff, $10
	.word @song1ref116
	.byte $ff, $0d
	.word @song1ref116
	.byte $6b, $7f, $2f, $87, $79, $2a, $87, $7f, $2c, $87, $79, $2f, $87, $7f, $26, $87, $79, $2c, $87, $7f, $22, $87, $79, $26
	.byte $87, $7f, $2c, $87, $79, $22, $87, $7f, $26, $87, $79, $2c, $87, $7f, $22, $87, $79, $26, $87, $7f, $26, $87, $79, $22
	.byte $87, $7f, $2e, $87, $79, $26, $87, $7f, $29, $87, $79, $2e, $87, $7f, $26, $87, $79, $29, $87, $7f, $22, $87, $79, $26
	.byte $87, $7f, $26, $87, $79, $22, $87, $7f, $29, $87, $79, $26, $87, $7f, $2e, $87, $79, $29, $87, $7f, $32, $87, $79, $2e
	.byte $87, $6b, $7f, $1b, $87, $79, $32, $87, $7f, $23, $87, $79, $1b, $87, $7f, $27, $87, $79, $23
@song1ref264:
	.byte $87, $7f, $2e, $87, $79, $27, $87, $7f, $1b, $87, $79, $2e, $87, $7f, $22, $87, $79, $1b, $87, $7f, $27, $87, $79, $22
	.byte $ff, $10
	.word @song1ref264
	.byte $87, $7f, $2e, $87, $79, $27, $87, $7f, $33, $87, $79, $2e, $87, $7f, $2e, $87, $79, $33, $87, $7f, $27, $87, $79, $2e
	.byte $87, $7f, $2e, $87, $79, $27, $87, $6b, $7f, $36, $87, $79, $2e, $87, $7f, $2f, $87, $79, $36, $87, $7f, $2a, $87, $79
	.byte $2f, $87, $7f, $36, $87, $79, $2a, $87, $7f, $2c, $87, $79, $36, $87, $7f, $38, $87, $79, $2c, $87, $7f, $2c, $87, $79
	.byte $38, $87, $7f, $35, $87, $79, $2c, $87, $7f, $00, $87, $79, $35, $87, $7f, $2e, $87, $79, $00, $87, $7f, $2a, $87, $79
	.byte $2e, $87, $7f, $29, $87, $79, $2a, $87, $7f, $26, $87, $79, $29, $87, $7f, $27, $87, $79, $26, $87, $7f, $29, $87, $79
	.byte $27, $87, $7f, $2a, $87, $79
@song1ref417:
	.byte $29, $87, $6b, $7a, $1b, $87, $1e, $87, $22, $87, $26, $87, $27, $87, $2a, $87, $2e, $87, $33, $87, $3a, $87, $33, $87
	.byte $2e, $87, $2a, $87, $27, $87, $26, $87, $22, $87, $1e, $87, $1a, $87, $1d, $87, $22, $87, $26, $87, $29, $87, $2e, $87
	.byte $32, $87, $35, $87, $26
@song1ref470:
	.byte $87, $29, $87, $2e, $87, $32, $87, $35, $87, $38, $87, $3a, $87, $38, $87, $6b, $3f, $87, $3a, $87, $36, $87, $33, $87
	.byte $3a
@song1ref495:
	.byte $87, $36, $87, $33, $87, $2e, $87, $2a, $87, $2e, $87, $32, $87, $33, $87, $36, $87, $3a, $87, $3f, $87, $42, $87, $41
	.byte $87, $3e, $87, $3a, $87, $38, $87, $35, $87, $2f, $87, $32, $87, $2e, $87, $32, $87, $35, $87, $38, $87, $32, $87, $2e
	.byte $87, $2c, $87, $2a, $87, $29, $87, $6b, $27, $87, $2a, $87, $2e, $87, $32, $87, $33, $87, $35, $87, $3a, $87, $3b, $87
	.byte $3d, $87, $3b, $87, $3a, $87, $38, $87, $36, $87, $35, $87, $33, $87, $2f, $87, $2e, $87, $29, $87, $2e, $87, $2f, $87
	.byte $2e, $87, $36, $87, $35, $87, $33, $87, $35, $87, $33, $87, $32, $87, $2f, $87, $32, $87, $2e, $87, $2c, $87, $29, $87
	.byte $6b, $2a, $87, $2e, $87, $33, $87, $2e, $87, $33
	.byte $ff, $0d
	.word @song1ref495
	.byte $35, $87, $36, $87, $3a, $87, $3f, $87, $41
	.byte $ff, $0d
	.word @song1ref470
@song1ref640:
	.byte $3e, $87, $41, $87, $3e, $87, $3a, $87, $38, $87, $36, $87, $33, $87, $32, $87, $2e, $87
	.byte $ff, $cb
	.word @song1ref417
	.byte $ff, $0d
	.word @song1ref495
	.byte $35, $87, $36, $87, $3a, $87, $3f, $87, $41
	.byte $ff, $0d
	.word @song1ref470
	.byte $ff, $12
	.word @song1ref640
	.byte $29, $87, $fd
	.word @song1ch0loop
@song1ch1:
@song1ref684:
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf
@song1ch1loop:
	.byte $7c, $84, $2f, $b9, $2e, $f7, $91, $00, $f5
	.byte $ff, $0c
	.word @song1ref684
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $f7, $f7, $cf, $7c, $82, $3a, $91, $3b, $91, $3a, $91, $2e, $91, $3a, $91, $36, $91, $33
	.byte $91, $61, $fe, $3a, $3b, $91, $84, $3b, $a5, $82, $3e, $91, $3a, $91, $84, $3a, $91, $82, $3b, $91, $3e, $91, $41, $91
	.byte $42, $91, $84, $42, $87, $82, $41, $91, $84, $41, $87, $82, $3f, $91, $84, $3f, $91, $82, $41, $91, $3f, $91, $3e, $91
	.byte $84, $3e, $a5, $82, $61, $03, $3c, $3b, $87, $62, $3b, $87, $3a, $91, $84, $3a, $a5, $82, $35, $91, $84, $35, $91
@song1ref804:
	.byte $82, $33, $87, $84, $36, $87, $82, $2e, $87, $84, $33, $87, $82, $36, $87, $84, $2e, $87
	.byte $ff, $0c
	.word @song1ref804
	.byte $82, $33, $87, $84, $36, $87, $2e, $87, $33, $87, $82, $36, $87, $84, $33, $87, $82, $29, $87, $84, $36, $87, $82, $33
	.byte $87, $84, $29, $87, $82, $35, $87, $84, $33, $87, $82, $29, $87, $84, $35, $87, $82, $32, $87, $84, $29, $87, $82, $35
	.byte $87, $84, $3b, $87, $41, $87, $3b
@song1ref880:
	.byte $87, $82, $3f, $87, $84, $3a, $87, $82, $33, $87, $84, $3f, $87, $82, $3a, $87, $84, $33
	.byte $ff, $0c
	.word @song1ref880
	.byte $87, $82, $42, $87, $84, $3a, $87, $82, $32, $87, $84, $42, $87, $82, $3a, $87, $84, $32, $87, $82, $3e, $87, $84, $3a
	.byte $87, $3e, $87, $82, $3a, $87, $84, $3a, $87, $00, $87, $82, $38, $87, $84, $38, $87, $00, $87, $82, $36, $87, $84, $36
	.byte $87, $00, $87, $82, $32, $87, $84, $32, $87, $fd
	.word @song1ch1loop
@song1ch2:
	.byte $88, $17, $cd, $23, $b9, $62, $61, $60, $23, $17, $91, $16, $cd, $22, $b9, $62, $61, $66, $22, $16, $91, $17, $cd, $23
	.byte $a5, $25, $a5, $16, $cd, $1e, $cd, $23, $f7, $a5, $22, $cd, $26, $cd, $27, $f7, $a5, $2e, $cd, $00, $a5, $80, $3d, $87
	.byte $00, $87, $37, $87, $00, $87
@song1ch2loop:
	.byte $a7, $80
@song1ref1018:
	.byte $38, $91, $00, $b9, $38, $91, $00, $b9, $38, $91, $00, $b9, $38, $91, $00, $91, $a7
	.byte $ff, $11
	.word @song1ref1018
	.byte $ff, $11
	.word @song1ref1018
	.byte $ff, $10
	.word @song1ref1018
	.byte $00, $a5
	.byte $ff, $0f
	.word @song1ref1018
@song1ref1049:
	.byte $87, $38
@song1ref1051:
	.byte $87
@song1ref1052:
	.byte $00, $a5, $38, $91, $00, $b9, $38, $91, $00, $b9, $38, $91, $00, $a5, $41, $91, $38, $91, $33, $91
	.byte $ff, $0d
	.word @song1ref1052
	.byte $b9, $38, $91, $00
	.byte $ff, $10
	.word @song1ref1049
@song1ref1082:
	.byte $91, $41, $87, $41, $87, $3d, $87, $3d, $87, $38, $87, $38, $87, $33, $87, $33
	.byte $ff, $0e
	.word @song1ref1051
	.byte $b9, $38, $91, $00
	.byte $ff, $17
	.word @song1ref1049
	.byte $ff, $0d
	.word @song1ref1052
	.byte $b9, $38, $91, $00
	.byte $ff, $10
	.word @song1ref1049
	.byte $ff, $10
	.word @song1ref1082
	.byte $87, $fd
	.word @song1ch2loop
@song1ch3:
	.byte $77, $8a, $2a, $f7, $f7, $cd, $77, $62, $2a, $f7, $f7, $cd, $77, $2a, $f7, $f7, $cd, $77, $62, $2a, $91, $62, $29, $91
	.byte $7a, $62, $28, $91, $62, $27, $91, $7b, $62, $26, $91, $62, $25, $91, $7c, $62, $24, $91, $62, $23, $91, $7d, $62, $22
	.byte $91, $62, $21, $91, $7e, $62, $20, $91, $62, $22, $91, $7f, $62, $24, $91, $62, $26, $91, $62, $28, $91, $62, $2a, $91
@song1ch3loop:
	.byte $88, $3b, $e1, $80
@song1ref1202:
	.byte $3c, $91, $00, $91, $3c, $91, $00, $91, $3c, $91, $00, $91
	.byte $ff, $0c
	.word @song1ref1202
	.byte $ff, $0c
	.word @song1ref1202
	.byte $ff, $0c
	.word @song1ref1202
	.byte $ff, $0c
	.word @song1ref1202
	.byte $ff, $0c
	.word @song1ref1202
	.byte $ff, $0c
	.word @song1ref1202
	.byte $ff, $0c
	.word @song1ref1202
	.byte $3c, $91, $00, $91, $3c, $91, $00, $cd, $86, $3c, $87, $3a, $87, $38, $87, $36, $87, $34, $87, $32, $87, $31, $87, $30
	.byte $87, $7a, $88
@song1ref1262:
	.byte $3d, $a5, $3c, $a5, $3d, $a5, $3c, $a5, $3d, $a5, $3c, $a5, $3d, $a5, $3c, $a5, $7a
	.byte $ff, $10
	.word @song1ref1262
	.byte $7a
	.byte $ff, $10
	.word @song1ref1262
	.byte $7a
	.byte $ff, $0c
	.word @song1ref1262
	.byte $3b, $a5, $3a, $a5, $7a
	.byte $ff, $10
	.word @song1ref1262
	.byte $7a
	.byte $ff, $10
	.word @song1ref1262
	.byte $7a
	.byte $ff, $10
	.word @song1ref1262
	.byte $7a
	.byte $ff, $0c
	.word @song1ref1262
	.byte $3b, $a5, $3a, $a5, $fd
	.word @song1ch3loop
@song1ch4:
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $24, $91, $00, $f5, $24, $91, $27, $91, $27, $91, $00, $e1, $24, $91, $24, $91, $00, $a5
	.byte $24, $87, $00, $9b, $24, $87, $00, $87, $27, $87, $00, $87, $27, $87, $00, $87, $24, $87, $00, $9b, $24, $87, $00, $9b
	.byte $24, $87, $00, $9b, $24, $87, $00, $9b
@song1ch4loop:
@song1ref1374:
	.byte $24, $91, $00, $91, $27, $91, $00, $a5, $24, $91, $27, $91, $00, $91
	.byte $ff, $0d
	.word @song1ref1374
	.byte $87, $27, $87
	.byte $ff, $0e
	.word @song1ref1374
	.byte $ff, $0d
	.word @song1ref1374
	.byte $87, $27, $87
	.byte $ff, $0e
	.word @song1ref1374
	.byte $ff, $0d
	.word @song1ref1374
	.byte $87, $27, $87
	.byte $ff, $0e
	.word @song1ref1374
	.byte $24, $91, $27, $91, $27, $91, $27, $91, $00, $91, $24, $91, $00, $87, $27, $9b
@song1ref1431:
	.byte $24, $91, $00, $87, $27, $87, $24, $91, $27, $87, $00, $87
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
@song1ref1461:
	.byte $24, $91, $00, $87, $27, $87, $24, $87, $24, $87, $27, $87, $27, $87
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0e
	.word @song1ref1461
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0e
	.word @song1ref1461
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0c
	.word @song1ref1431
	.byte $ff, $0e
	.word @song1ref1461
	.byte $fd
	.word @song1ch4loop
@song1ch5:
	.byte $7c, $8a, $33, $f7, $a5, $32, $f7, $a5, $33, $f7, $a5, $32, $f7, $a5, $2f, $f7, $a5, $2e, $f7, $a5, $33, $f7, $a5, $32
	.byte $cd, $00, $a5, $7e, $32, $87, $00, $87, $32, $91
@song1ch5loop:
	.byte $7f, $8c, $61, $f1, $3d, $3b, $87, $62, $3b, $9b, $3d, $87, $00, $87, $3a, $a5, $63, .lobyte(@env18), .hibyte(@env18)
	.byte $e1, $63, .lobyte(@env10), .hibyte(@env10), $64, $81, $00, $b9, $36, $87, $00, $87, $39, $91, $3a, $91, $3b, $a5, $3a
	.byte $91, $38, $a5, $3a, $91, $35, $f7, $91, $00, $91, $2e, $a5, $61, $f8, $31, $2f, $87, $62, $2f, $9b, $31, $87, $00, $87
	.byte $2e, $a5, $63, .lobyte(@env18), .hibyte(@env18), $e1, $63, .lobyte(@env10), .hibyte(@env10), $64, $81, $00, $b9, $2a
	.byte $87, $00, $87, $2d, $91, $2e, $91, $2f, $a5, $2e, $91, $2c, $a5, $36, $91, $35, $f7, $91, $3a, $91, $39, $91, $38
@song1ref1684:
	.byte $91, $41, $91, $42, $91, $41, $91, $3a, $91, $41, $91, $42, $91, $41, $91, $3f, $91, $3b, $a5, $3e, $91, $3a, $a5, $3b
	.byte $91, $3a, $91, $38, $91, $36, $a5, $33, $91, $3a, $a5, $3b, $91, $3a, $91, $38, $b9, $35, $91, $32, $cd, $33, $91, $35
	.byte $91, $36, $91, $35, $91, $2e, $91, $35, $91, $36, $91, $38, $91, $3a, $91, $3b, $b9, $3a, $b9, $3b, $a5, $3f, $b9, $3a
	.byte $91, $3f, $9b, $42, $9b, $41, $a5, $3e, $9b, $3a, $9b, $38, $9b, $36, $9b, $32
	.byte $ff, $58
	.word @song1ref1684
	.byte $91, $fd
	.word @song1ch5loop
@song1ch6:
	.byte $7c, $8a, $36, $f7, $a5, $35, $f7, $a5, $36, $f7, $a5, $35, $f7, $a5, $33, $f7, $a5, $35, $f7, $a5, $36, $f7, $a5, $35
	.byte $cd, $00, $a5, $7e, $35, $87, $00, $87, $35, $91
@song1ch6loop:
	.byte $7f, $8e, $61, $e6, $46, $44, $87, $62, $44, $9b, $46, $87, $00, $87, $42, $f7, $91, $00, $b9, $3a, $87, $00, $87, $3e
	.byte $91, $3f, $91, $41, $b9, $42, $a5, $41, $91, $3e, $f7, $91, $3b, $91, $3a, $91, $38, $91, $36, $a5, $38, $91, $35, $f7
	.byte $91, $00, $b9, $27, $87, $00, $87, $2a, $91, $2a, $91, $2c, $a5, $2a, $91, $29, $a5, $32, $91, $3a, $a5, $2e, $a5, $32
	.byte $a5, $35, $91, $36, $91, $35, $91, $32
@song1ref1894:
	.byte $91, $33, $91, $33, $91, $3a, $91, $33, $91, $33, $91, $33, $91, $3a, $91, $33, $91, $32, $b9, $36, $b9, $35, $a5, $33
	.byte $a5, $2e, $91, $36, $b9, $33, $91, $32, $b9, $2f, $91, $2e, $cd, $2c, $91, $2a, $91, $2c, $91, $2e, $91, $35, $91, $29
	.byte $91, $2e, $91, $33, $91, $35, $91, $36, $b9, $35, $b9, $41, $a5, $42, $b9, $3f, $91, $47, $9b, $46, $9b, $44, $a5, $41
	.byte $b9, $41, $9b, $3e, $9b, $3a
	.byte $ff, $4e
	.word @song1ref1894
	.byte $91, $fd
	.word @song1ch6loop
@song1ch7:
	.byte $7c, $8a, $3b, $f7, $91, $3a, $87, $3b, $87, $3a, $f7, $a5, $3b, $f5, $3d, $a5, $3a, $cd, $38, $cd, $36, $f7, $a5, $38
	.byte $cd, $39, $cd, $3a, $f7, $91, $3a, $87, $3b, $87, $3a, $cd, $00, $a5, $7e, $3a, $87, $00, $87, $3a, $91
@song1ch7loop:
	.byte $7b, $8a, $33, $f7, $f7, $cd, $2f, $f7, $a5, $2e, $f7, $a5, $2f, $b9, $2e, $f7, $f7, $91, $2c, $f7, $a5, $29, $cd, $2e
	.byte $cd
@song1ref2050:
	.byte $2e, $f7, $a5, $2f, $f7, $a5, $2a, $f7, $91, $2e, $91, $2c, $a5, $29, $91, $26, $b9, $22, $a5, $27, $f7, $a5, $26, $f7
	.byte $a5, $2a, $f7, $a5, $2e, $f7, $a5
	.byte $ff, $1f
	.word @song1ref2050
	.byte $fd
	.word @song1ch7loop
@song1ch8:
	.byte $ff, $0c
	.word @song1ref684
@song1ch8loop:
	.byte $7b, $8a, $2e, $f7, $f7, $cd, $2c, $f7, $a5, $29, $f7, $a5, $2c, $b9, $2a, $f7, $f7, $91, $29, $f7, $a5, $26, $cd, $29
	.byte $cd
@song1ref2116:
	.byte $2a, $f7, $a5, $29, $f7, $a5, $2e, $f7, $91, $32, $91, $2f, $a5, $2c, $91, $29, $b9, $26, $a5, $2e, $f7, $a5, $2f, $f7
	.byte $a5, $33, $f7, $a5, $32, $f7, $a5
	.byte $ff, $1f
	.word @song1ref2116
	.byte $fd
	.word @song1ch8loop
@song1ch9:
	.byte $ff, $0c
	.word @song1ref684
@song1ch9loop:
	.byte $ff, $0c
	.word @song1ref684
	.byte $ff, $0c
	.word @song1ref684
	.byte $ff, $0c
	.word @song1ref684
	.byte $fd
	.word @song1ch9loop
@song1ch10:
	.byte $f7, $f7, $cf, $f7, $f7, $cf, $88, $17, $f7, $a5, $16, $f7, $a5, $1e, $f7, $a5, $22, $cd, $00, $a5, $22, $91, $16, $91
@song1ch10loop:
	.byte $88
@song1ref2195:
	.byte $0f, $91, $0f, $91, $0f, $91, $16, $91, $12, $91, $12, $91, $12, $91, $1b, $91
	.byte $ff, $0e
	.word @song1ref2195
@song1ref2214:
	.byte $15, $91, $0e, $91, $0e, $91, $0e, $91, $15, $91, $11, $91, $11, $91, $11, $91, $0e, $91, $0e, $91, $1a, $91, $11, $91
	.byte $1d, $91, $12, $91, $1e, $91, $0e, $91, $1a, $91
	.byte $ff, $10
	.word @song1ref2195
	.byte $ff, $0e
	.word @song1ref2195
	.byte $ff, $22
	.word @song1ref2214
	.byte $1b
@song1ref2258:
	.byte $91, $1b, $91, $1b, $91, $1b, $91, $1b, $91, $1b, $91, $1b, $91
@song1ref2271:
	.byte $1b, $91, $1a, $91, $1a, $91, $1a, $91, $1a, $91, $17, $91, $17, $91, $16, $91, $16, $91, $12, $91, $12, $91, $12, $91
	.byte $12, $91, $12, $91, $12, $91, $12, $91, $12, $91, $16, $91, $16, $91, $16, $91, $16, $91, $16, $91, $16, $91, $1d, $91
	.byte $1d
	.byte $ff, $0f
	.word @song1ref2258
	.byte $ff, $31
	.word @song1ref2271
	.byte $ff, $0f
	.word @song1ref2258
	.byte $ff, $31
	.word @song1ref2271
	.byte $ff, $0f
	.word @song1ref2258
	.byte $ff, $31
	.word @song1ref2271
	.byte $91, $fd
	.word @song1ch10loop