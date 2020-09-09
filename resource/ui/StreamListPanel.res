// Main menu stream list

"Resource/UI/StreamListPanel.res"
{
	"HeaderContainer"			// proportionaltoparent not working
	{
		ControlName					EditablePanel
		fieldName					HeaderContainer
		xpos							0
		ypos							0
		wide							300
		tall							22
		proportionaltoparent		1
		visible						1
		
		"HeaderLabel"
		{
			ControlName					CExLabel
			fieldName					"HeaderLabel"
			xpos							0
			ypos							0
			wide							f0
			tall							f0
			proportionaltoparent		1
			visible						1

			font							"Regular 22"
			labelText					"#MMenu_Stream_LiveStream"
			textAlignment				center

			fgcolor_override			"MenuPanelFg"
			bgcolor_override			"MenuPanelBg"
		}
	}
		
	"CloseButton"
	{
		ControlName					CExButton
		fieldName					"CloseButton"
		xpos							0
		ypos							0
		zpos							10
		wide							22
		tall							22
		proportionaltoparent		1
		visible						1
		enabled						1

		labeltext					"ú"
		font							"Symbols 20"
		textAlignment				center
		textInsetY					-2

		Command						"hide_streams"

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
			
		paintbackground			0
			
		defaultFgColor_override "ButtonNormalBg"
		armedFgColor_override 	"ButtonHoverBg"

		pin_to_sibling				"HeaderContainer"
		pin_corner_to_sibling	PIN_TOPRIGHT
		pin_to_sibling_corner	PIN_TOPRIGHT
	}


	"Stream1"
	{
		ControlName					CTFStreamPanel
		fieldName					"Stream1"
		xpos							-3
		ypos							5
		wide							f6
		tall							52
		autoResize					1			// breaks if not
		visible						1
		proportionaltoparent		1

		bgcolor_override			"MenuPanelBg"

		pin_to_sibling				"HeaderContainer"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_BOTTOMLEFT

		// => resource\ui\StreamPanel.res
	}

	"Stream2"
	{
		ControlName					CTFStreamPanel
		fieldName					"Stream2"
		xpos							0
		ypos							3
		wide							f6
		tall							52
		autoResize					1
		visible						1
		proportionaltoparent		1

		bgcolor_override			"MenuPanelBg"

		pin_to_sibling				"Stream1"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_BOTTOMLEFT
	}

	"Stream3"
	{
		ControlName					CTFStreamPanel
		fieldName					"Stream3"
		xpos							0
		ypos							3
		wide							f6
		tall							52
		autoResize					1
		visible						1
		proportionaltoparent		1

		bgcolor_override			"MenuPanelBg"

		pin_to_sibling				"Stream2"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_BOTTOMLEFT
	}

	"Stream4"
	{
		ControlName					CTFStreamPanel
		fieldName					"Stream4"
		xpos							0
		ypos							3
		wide							f6
		tall							52
		autoResize					1
		visible						1
		proportionaltoparent		1

		bgcolor_override			"MenuPanelBg"

		pin_to_sibling				"Stream3"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_BOTTOMLEFT
	}

	"Stream5"
	{
		ControlName					CTFStreamPanel
		fieldName					"Stream5"
		xpos							0
		ypos							3
		wide							f6
		tall							52
		autoResize					1
		visible						1
		proportionaltoparent		1

		bgcolor_override			"MenuPanelBg"

		pin_to_sibling				"Stream4"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_BOTTOMLEFT
	}

	"Stream_URLButton"			// opens twitch in browser
	{
		"ControlName"	"CExButton"
		"fieldName"		"Stream_URLButton"
		"xpos"			"75"
		"ypos"			"0"
		zpos				1000
		"wide"			"150"
		"tall"			"15"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"0"
		"tabPosition"	"0"
		"labelText"		"#MMenu_Stream_ViewMore"
		"textinsetx"	"20"
		"use_proportional_insets" "1"
		"font"			"HudFontSmallestBold"
		"textAlignment"	"center"
		"dulltext"		"0"
		"brighttext"	"0"
		"default"		"1"
		"command"		"view_more"

		"sound_depressed"	"UI/buttonclick.wav"
		"sound_released"	"UI/buttonclickrelease.wav"
			
		"defaultFgColor_override" "235 226 202 255"
		"defaultBgColor_override" "46 43 42 255"
		"armedFgColor_override" "235 226 202 255"
		"depressedFgColor_override" "235 226 202 255"
	}	
}