	db DEX_FIDOUGH ; pokedex id

	db  37,  55,  70,  65,  30
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 190 ; catch rate
	db 62 ; base exp

	INCBIN "gfx/pokemon/front/fidough.pic", 0, 1 ; sprite dimensions
	dw FidoughPicFront, FidoughPicBack

	db TACKLE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm
	; end

	db BANK(FidoughPicFront)
	assert BANK(FidoughPicFront) == BANK(FidoughPicBack)
