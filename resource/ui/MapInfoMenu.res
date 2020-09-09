// Second menu that appears when map is loaded
// Map info
// Would be nice if there was a way to skip this

"Resource/UI/MapInfoMenu.res"
{
	"mapinfo"
	{
		ControlName				Frame
		fieldName				"mapinfo"
		xpos					0
		ypos					0
		wide					f0
		tall					480
	}

	// something dimmers the screen but idk what it is
	// this at least makes it look less ugly

	"Filter"
	{
		ControlName				ImagePanel
		fieldName				"Filter"
		xpos					0
		ypos					0
		zpos					-5
		wide					f0
		tall					f0
		proportionaltoparent		1
		fillColor				"255 255 255 30"
	}
	
	"Background"		// other elements pinned to this
	{
		ControlName     		  	ImagePanel
		fieldName	        	  	"Background"
		xpos					0
		ypos					0
		zpos					1
		wide					160
		tall					f0
		proportionaltoparent		1
		fillColor				"MenuPanelBg"
	}
	
	"MapInfoTitle"
	{
		ControlName				CExLabel
		fieldName				"MapInfoTitle"
		xpos					0
		ypos					-3
		zpos					5
		wide					154
		tall					24

		labelText				"%mapname%"
		font					"Regular 14"
		textAlignment			center
		AllCaps				1

		fgcolor				"White"
		bgcolor_override			"MenuPanelBg"
		
		pin_to_sibling 			"Background"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP
	}

	"MapInfoText"		// Removed _hidef and _lodef versions of properties, idk what they do
	{
		ControlName				CExRichText
		fieldName				"MapInfoText"
		xpos					0
		ypos					-33
		zpos					3
		wide					126			// results in with same as in => resource\ui\TextWindow.res
		tall					f65
		proportionaltoparent		1
		autoResize				3		// ?

		font					"Regular 10"
		textAlignment			center

		fgcolor				"MenuPanelFg"
		paintbackground			0
		
		pin_to_sibling 			"Background"
		pin_corner_to_sibling		PIN_CENTER_BOTTOM
		pin_to_sibling_corner		PIN_CENTER_BOTTOM

		//"ScrollBar"
		//{
		//	ControlName					ScrollBar
		//	FieldName					"ScrollBar"
		//	xPos							rs1-1
		//	yPos							0
		//	tall							f0
		//	wide							3
		//	zPos							20
		//	nobuttons					1
		//	proportionalToParent		1
		//}
	}

	"MapInfoBack"		// back to => resource\ui\TextWindow.res
	{
		ControlName				CExButton
		fieldName				"MapInfoBack"
		xpos					0
		ypos					-3
		zpos					6
		wide					154
		tall					24

		labelText				"#TF_Back" 
		font					"Regular 15"
		textAlignment			center
		AllCaps				1

		command				"back"
				
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"

		defaultFgColor_override		"FontNormal"
		armedFgColor_override		"FontNormal"
		
		paintbackground			1
		defaultBgColor_override		"MenuPanelBg"
		armedBgColor_override		"ButtonHoverBg"
		
		pin_to_sibling 			"Background"
		pin_corner_to_sibling 		PIN_CENTER_BOTTOM
		pin_to_sibling_corner 		PIN_CENTER_BOTTOM
	}

	"MapInfoContinue"		// when user clicks away
	{
		ControlName				CExButton
		fieldName				"MapInfoContinue"
		xpos					0
		ypos					0
		zpos					-1
		wide					f0
		tall					f0
		proportionaltoparent		1

		command				"continue"

		labelText				"#TF_Continue"
		font					"Regular 32"
		textAlignment			south-east
		textInsetX				20

		defaultFgColor_override		"MenuPanelBg"
		armedFgColor_override		"ButtonHoverBg"

		paintbackground			0
				
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
	}

	"MapInfoContinueShortcut"
	{
		ControlName				CExButton
		fieldName				"MapInfoContinueShortcut"
		xpos					9999
		labelText				"&E"
		Command				"continue"
	}
	
	"MapInfoWatchIntro"	// ?
	{
		"ControlName"						"CExButton"
		"fieldName"							"MapInfoWatchIntro"
		"xpos"								"0"
		"ypos"								"0"
		"zpos"								"6"
		"wide"								"130"
		"tall"								"24"
		"autoResize"						"0"
		"pinCorner"							"2"
		"visible"							"1"
		"enabled"							"1"
		"labelText"							"#TF_WatchIntro"
		"textAlignment"						"center"
		"dulltext"							"0"
		"brighttext"						"0"
		"command"							"intro"
		"default"							"1"
		"font"								"Regular 15"
		
		"paintbackground"					"0"
		
		"sound_depressed"					"UI/buttonclick.wav"
		"sound_released"					"UI/buttonclickrelease.wav"
		
		"border_default"					"BlueTransparent70"
		"border_armed"						"OrangeTransparent70"

		"defaultFgColor_override"			"White"
		"armedFgColor_override"				"White"
		"depressedFgColor_override" 		"White"
		
		"pin_to_sibling" 					"ok"
		"pin_corner_to_sibling" 			"PIN_CENTER_BOTTOM"
		"pin_to_sibling_corner" 			"PIN_CENTER_TOP"
	}
}