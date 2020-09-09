"Resource/UI/HudAccountPanel.res"
{
	"CHudAccountPanel"			// floating numbers when picking up/spending metal
	{
		delta_item_x			40
		delta_item_start_y	80
		delta_item_end_y		40
		PositiveColor			"0 255 0 255"
		NegativeColor			"255 0 0 255"
		delta_lifetime			1.5
		delta_item_font		"Thin 18"
	}
	
	"MetalIcon"	
	{
		ControlName			CIconPanel
		fieldName			"MetalIcon"
		xpos					19
		ypos					116
		zpos					1
		wide					10
		tall					10
		visible				0
		scaleImage			1	
		icon					"ico_metal"
		iconColor			"ProgressOffWhite"
	}
	
	"AccountValue"			// engi metal count
	{		
		ControlName					CExLabel
		fieldName					"AccountValue"
		xpos							0
		ypos							0
		zpos							2
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"%metal%"
		font							"Bold 20"
		textAlignment				center
		fgColor						"AmmoNormalFg"
		paintbackground			0
	}

	"AccountValueShadow"
	{		
		ControlName					CExLabel
		fieldName					"AccountValueShadow"
		xpos							0
		ypos							0
		zpos							2
		wide							f-1
		tall							f-1
		proportionaltoparent		1
		visible						1

		labelText					"%metal%"
		font							"Bold 20"
		textAlignment				center
		fgColor						"AmmoNormalBg"
		paintbackground			0

		pin_to_sibling				"AccountValue"
	}
}