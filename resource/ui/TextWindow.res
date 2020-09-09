// First menu that appears when map is loaded
// Welcome to TF2, our map rotation is ... , server intro
// Would be nice if there was a way to skip this

"Resource/UI/TextWindow.res"
{
	"info"
	{
		ControlName				CTFTextWindow
		fieldName				"info"
		xpos					0
		ypos					0
		wide					f0
		tall					480
		settitlebarvisible		0
	}
	
	"Filter"			// for consistancy with resource\ui\MapInfoMenu.res and resource\ui\TeamMenu.res
	{
		ControlName				ImagePanel
		fieldName				"Filter"
		xpos					0
		ypos					0
		zpos					-5
		wide					f0
		tall					f0
		proportionaltoparent		1
		fillColor				"37 37 37 208"
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

	
	"TFMessageTitle"		// Welcome title
	{
		ControlName				CExLabel
		fieldName				"TFMessageTitle"
		xpos					0
		ypos					-3
		zpos					5
		wide					154
		tall					30 // 24

		labelText				"#TF_WELCOME"		//  replaced when event's active (full moon, holiday)
		font					"Regular 12"
		textAlignment			center
		AllCaps				1
		centerwrap				1
		autoResize				3

		fgcolor				"FontNormal"
		bgcolor_override			"MenuPanelBg"
		
		pin_to_sibling 			"Background"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP
	}


	"TFTextMessage"
	{
		ControlName				CExRichText
		fieldName				"TFTextMessage"
		xpos					0
		ypos					-6
		zpos					3
		wide					148
		tall					f44
		proportionaltoparent		1
		autoResize				3		// ?

		font					"Regular 10"
		textAlignment			center

		fgcolor				"MenuPanelFg"
		paintbackground			0
		
		pin_to_sibling 			"Background"
		pin_corner_to_sibling		PIN_CENTER_BOTTOM
		pin_to_sibling_corner		PIN_CENTER_BOTTOM

		"ScrollBar"
		{
			ControlName				ScrollBar
			FieldName				"ScrollBar"
			xPos					rs1-1
			yPos					0
			tall					f0
			wide					3
			zPos					20
			nobuttons				1
			proportionalToParent		1

			// uses these materials:
			// 	materials\vgui\chalkboard_scroll_box.vmt
			// 	materials\vgui\chalkboard_scroll_line.vmt
			// 	materials\vgui\chalkboard_scroll_down.vmt
			// 	materials\vgui\chalkboard_scroll_up.vmt
		}
	}


	"HTMLMessage"			// TODO
	{
		"ControlName"			"HTML"
		"fieldName"				"HTMLMessage"
		"xpos"				"c-210"
		"ypos"				"c-150"
		"zpos"				"1"
		"wide"				"420"
		"tall"				"300"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"paintborder"			"0"
	}


	"ok"			// continue when user clicks away; goes to => resource\ui\MapInfoMenu.res
	{
		ControlName				CExButton
		fieldName				"ok"
		xpos					0
		ypos					0
		zpos					-1
		wide					f0
		tall					f0
		proportionaltoparent		1

		command				"okay"

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


	"okShortcut"
	{
		ControlName				CExButton
		fieldName				"okShortcut"
		xpos					9999
		labelText				"&E"
		Command				"okay"
	}


	// disabled stock stuff

	"MessageTitle"
	{
		visible		0
	}
}