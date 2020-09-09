"Resource/UI/SpectatorGUIHealth.res"
{
	"PlayerStatusHealthImage"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthImage"
		"xpos"			"9999"
		"ypos"			"6"
		"zpos"			"4"
		"wide"			"20"
		"tall"			"20"
		"visible"		"1"
		"enabled"		"1"
		"scaleImage"	"1"	
	}		
	"PlayerStatusHealthImageBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"PlayerStatusHealthImageBG"
		"xpos"			"9999"
		"ypos"			"4"
		"zpos"			"3"
		"wide"			"24"
		"tall"			"24"
		"visible"		"1"
		"enabled"		"1"
		"image"			"../hud/health_bg"
		"scaleImage"	"1"	
	}	
	"BuildingStatusHealthImageBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"BuildingStatusHealthImageBG"
		"xpos"			"9999"
		"ypos"			"2"
		"zpos"			"2"
		"wide"			"28"
		"tall"			"28"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../hud/health_equip_bg"
		"scaleImage"	"1"	
	}

	"PlayerStatusHealthBonusImage"		// growing overheal image
	{
		ControlName					ImagePanel
		fieldName					"PlayerStatusHealthBonusImage"
		xpos							rs1.5-2
		ypos							cs-0.5
		zpos							2
		wide							p2
		tall							o1
		proportionaltoparent		1
		visible						0
		image							"replay/thumbnails/panels/solid_overheal"
		scaleImage					1
		alpha							170
	}

	"HpAnchor"
	{
		ControlName				EditablePanel
		fieldName				"HpAnchor"
		xpos						0
		ypos						0
		wide						10
		tall						0
		visible					1
	}

	"PlayerStatusHealthValue"		// HP number
	{
		ControlName					CExLabel
		fieldName					"PlayerStatusHealthValue"
		xpos							0
		ypos							0
		zpos							5
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"%Health%"
		textAlignment				center	
		font							"Regular 18"

		fgcolor						"HpNormalFg"
		paintbackground			0

		pin_to_sibling				"HpAnchor"
	}

	"PlayerStatusHealthValueShadow"		// HP number
	{
		ControlName					CExLabel
		fieldName					"PlayerStatusHealthValueShadow"
		xpos							0
		ypos							0
		zpos							5
		wide							f-1
		tall							f-2
		proportionaltoparent		1
		visible						1

		labelText					"%Health%"
		textAlignment				center	
		font							"Regular 18"

		fgcolor						"HpNormalBg"
		paintbackground			0

		pin_to_sibling				"PlayerStatusHealthValue"
	}

	"TargetHealthBg"
	{
		ControlName					EditablePanel
		fieldName					"TargetHealthBg"
		xpos							0
		ypos							cs-0.5
		zpos							1
		wide							44
		tall							f0
		proportionaltoparent		1
		visible						1

		bgcolor_override			"TargetBg"
		paintbackground			1
	}

	"PlayerStatusPlayerLevel"
	{
		"ControlName"	"CExLabel"
		"fieldName"		"PlayerStatusPlayerLevel"
		"xpos"			"8"
		"xpos_minmode"	"0"
		"ypos"			"9"
		"zpos"			"5"
		"wide"			"16"
		"tall"			"12"
		"visible"		"0"
		"enabled"		"1"
		"textAlignment"	"center"	
		"font"			"ScoreboardVerySmall"
		"fgcolor"		"TFOrange"
	}							
}
