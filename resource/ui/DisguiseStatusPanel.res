"Resource/UI/ItemModelPanel.res"
{
	"itemmodelpanel"
	{
		"ControlName"				"CEmbeddedItemModelPanel"
		"fieldName"					"itemmodelpanel"
	
		"xpos"						"0"
		"ypos"						"0"
		"zpos"						"1"
		"wide"						"100"
		"tall"						"100"
		"autoResize"				"0"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"useparentbg"				"1"

		"fov"						"54"
		"start_framed"				"1"

		"disable_manipulation"		"1"

		"model"
		{
			"angles_x"				"10"
			"angles_y"				"130"
			"angles_z"				"0"
		}
	}


	"SpectatorGUIHealth"			// hp container
	{
		ControlName					EditablePanel
		fieldName					"SpectatorGUIHealth"
		xpos							1
		ypos							rs1-1
		wide							35
		tall							22
		zpos							10
		visible						1

		HealthBonusPosAdj			80
		HealthDeathWarning		0.49
		TFFont						"HudFontSmall"
		//HealthDeathWarningColor	"0 0 0 0"
		TextColor					"HudOffWhite"

		// => resource\ui\SpectatorGuiHealth.res
	}

	"Background"
	{
		ControlName					ImagePanel
		fieldName					"Background"
		xpos							1
		ypos							0
		wide							110
		tall							22
		zpos							-1
		visible						1
		fillColor					"TargetBg"

		pin_to_sibling				"SpectatorGUIHealth"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_TOPRIGHT
	}

	"DisguiseStatusBG"
	{
		"ControlName"				"CTFImagePanel"
		"fieldName"					"DisguiseStatusBG"
		"xpos"						"0"
		"ypos"						"0"
		"zpos"						"1"
		"wide"						"3"
		"tall"	 					"22"
		"autoResize"				"0"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"image"						"replay/thumbnails/panels/solid_white"
		"scaleImage"				"1"
		"teambg_1"					"replay/thumbnails/panels/solid_white"
		"teambg_2"					"replay/thumbnails/panels/solid_teamred"
		"teambg_3"					"replay/thumbnails/panels/solid_teamblue"
		
		"src_corner_height"			"0"
		"src_corner_width"			"0"
		
		"draw_corner_width"			"0"
		"draw_corner_height" 		"0"

		pin_to_sibling				"Background"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_TOPRIGHT
	}

	"DisguiseNameLabel"		// player name
	{	
		ControlName				Label
		fieldName				"DisguiseNameLabel"
		xpos						1
		ypos						0
		zpos						10
		wide						110
		tall						22
		visible					1

		labelText				"%disguisename%"
		font						"Regular 12"
		textAlignment			north-west
		textInsetX				5

		fgcolor_override		"White"
		paintbackground		0
		
		pin_to_sibling				"SpectatorGUIHealth"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_TOPRIGHT
	}

	"DisguiseNameLabelShadow"		// player name
	{	
		ControlName				Label
		fieldName				"DisguiseNameLabelShadow"
		xpos						0
		ypos						0
		zpos						9
		wide						110
		tall						22
		visible					1

		labelText				"%disguisename%"
		font						"Regular 12"
		textAlignment			north-west
		textInsetX				6
		textInsetY				1

		fgcolor_override		"Black"
		paintbackground		0
		
		pin_to_sibling			"DisguiseNameLabel"
	}
	

	"WeaponNameLabel"			// weapon name
	{
		ControlName				Label
		fieldName				"WeaponNameLabel"
		xpos						0
		ypos						0
		zpos						10
		wide						110
		tall						22
		visible					1

		labelText				"%weaponname%"
		font						"Regular 10"
		textAlignment			south-west
		textInsetX				5

		fgcolor_override		"White"
		paintbackground		0
		
		pin_to_sibling			"DisguiseNameLabel"
	}

	"WeaponNameLabelShadow"		// player name
	{	
		ControlName				Label
		fieldName				"WeaponNameLabelShadow"
		xpos						0
		ypos						0
		zpos						9
		wide						110
		tall						22
		visible					1

		labelText				"%weaponname%"
		font						"Regular 10"
		textAlignment			south-west
		textInsetX				6
		textInsetY				1

		fgcolor_override		"Black"
		paintbackground		0
		
		pin_to_sibling			"WeaponNameLabel"
	}
}