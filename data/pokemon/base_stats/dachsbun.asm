	db DEX_DACHSBUN ; pokedex id

	db  57,  80,  115,  95,  80
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 90 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/dachsbun.pic", 0, 1 ; sprite dimensions
	dw DachsbunPicFront, DachsbunPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(DachsbunPicFront)
	assert BANK(DachsbunPicFront) == BANK(DachsbunPicBack)
