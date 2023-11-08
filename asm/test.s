	.org $8000
start:
	lda #$f0
	ldx #$01
    sta $01
    adc #$02
	sta $01,x

	.org $fffc
	.word start
	.word $8000
