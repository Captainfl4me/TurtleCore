	.org $8000
start:
	lda #$fe
	ldx #$01
	sta $01,x

	.org $fffc
	.word start
	.word $8000
