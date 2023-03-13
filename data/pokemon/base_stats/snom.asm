	db DEX_SNOM ; pokedex id

	db  30,  25,  35,  20,  45
	;   hp  atk  def  spd  spc

	db ICE, BUG ; type
	db 190 ; catch rate
	db 37 ; base exp

	INCBIN "gfx/pokemon/front/snom.pic", 0, 1 ; sprite dimensions
	dw SnomPicFront, SnomPicBack

	db AURORA_BEAM, LEECH_LIFE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(SnomPicFront)
	assert BANK(SnomPicFront) == BANK(SnomPicBack)
