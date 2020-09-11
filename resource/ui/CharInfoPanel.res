// This is an overlay that contains all other backpack panels (loadouts, crafting, stats, etc.)
// Opened with open_charinfo (and open_charinfo_backpack etc.)


// User's custom background properties
#base "BackpackBackground.res"

// Base backround properties, overriden by ^
#base "BackpackBackgroundDefault.res"

// Elements that help with designing
#base "../DevTools.res"


"Resource/UI/CharInfoPanel.res"
{
	"character_info"		// drawn over main menu
	{
		ControlName				EditablePanel
		fieldName				"character_info"
		xpos					0
		ypos					0
		wide					f0
		tall					480

		settitlebarvisible		0
		paintbackground			0
		
		clientinsetx_override		0		// content xpos offset
		sheetinset_bottom			0		// content ypos offset (reversed)
	}

	// #region LEFT BAR

	"LeftBar"
	{
		ControlName				ImagePanel
		fieldname				"LeftBar"
		xpos					0
		ypos					0
		zpos					1010
		wide					42
		tall					480
		fillColor				"MenuSideBarBg"
		mouseinputenabled			0
	}

	"LeftBarBG"				// slice of the background image to cover up main menu buttons
	{
		ControlName				EditablePanel
		fieldName				"LeftBarBG"
		xpos					0
		ypos					0
		zpos					1002
		wide					42
		tall					480
		mouseinputenabled			0

		"Full"
		{
			ControlName				ImagePanel
			fieldName				"Full"
			xpos					0
			ypos					0
			wide					f0
			tall					480
			scaleimage				1
		}

		"Left"
		{
			ControlName				ImagePanel
			fieldName				"Left"
			xpos					0
			ypos					0
			wide					p0.5
			tall					480
			scaleimage				1
		}

		"TopLeft"
		{
			ControlName				ImagePanel
			fieldName				"TopLeft"
			xpos					0
			ypos					0
			wide					p0.5
			tall					240
			scaleimage				1
		}

		"BottomLeft"
		{
			ControlName				ImagePanel
			fieldName				"BottomLeft"
			xpos					0
			ypos					240
			wide					p0.5
			tall					240
			scaleimage				1
		}
	}

	"SeparatorLineStats"		// visual
	{
		ControlName				ImagePanel
		FieldName				"SeparatorLineStats"
		xPos					0
		yPos					-83
		zPos					1011
		wide					36
		tall					1
		
		fillColor 				"MenuSideBarFg"

		pin_to_sibling 			"LeftBar"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP
	}

	// #endregion

	// #region RIGHT BAR 

	"RightBar"
	{
		ControlName				ImagePanel
		fieldname				"RightBar"
		xpos					rs1
		ypos					0
		zpos					1010
		wide					42
		tall					f0
		fillColor				"MenuSideBarBg"
		mouseinputenabled			0
	}

	"RightBarBG"			// slice of the background image to cover up main menu buttons
	{
		ControlName				EditablePanel
		fieldName				"RightBarBG"
		xpos					rs1
		ypos					0
		wide					42
		tall					480
		mouseinputenabled			0

		"Anchor"				// workaround for image cropping
		{
			ControlName				EditablePanel
			fieldname				"Anchor"
			xpos					r0
			ypos					0
			wide					0
			tall					480
			proportionalToParent		1
		}

		"Full"
		{
			ControlName				ImagePanel
			fieldName				"Full"
			xpos					0
			ypos					0
			wide					f0
			tall					480
			scaleimage				1

			pin_to_sibling 			"Anchor"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_TOPLEFT
		}

		"Right"
		{
			ControlName				ImagePanel
			fieldName				"Right"
			xpos					0
			ypos					0
			wide					p0.5
			tall					480
			scaleimage				1

			pin_to_sibling 			"Anchor"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_TOPLEFT
		}

		"TopRight"
		{
			ControlName				ImagePanel
			fieldName				"TopRight"
			xpos					0
			ypos					0
			wide					p0.5
			tall					240
			scaleimage				1

			pin_to_sibling 			"Anchor"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_TOPLEFT
		}

		"BottomRight"
		{
			ControlName				ImagePanel
			fieldName				"BottomRight"
			xpos					0
			ypos					0
			wide					p0.5
			tall					240
			scaleimage				1

			pin_to_sibling 			"TopRight"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_BOTTOMRIGHT
		}
	}

	"SeparatorLineTop"			// visual
	{
		ControlName				ImagePanel
		FieldName				"SeparatorLineTop"
		xPos					0
		yPos					-83
		zPos					1011
		wide					36
		tall					1
		
		fillColor 				"MenuSideBarFg"

		pin_to_sibling 			"RightBar"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP
	}

	"SeparatorLineBottom"			// visual
	{
		ControlName				ImagePanel
		FieldName				"SeparatorLineBottom"
		xPos					0
		yPos					-288
		zPos					1011
		wide					36
		tall					1
		
		fillColor 				"MenuSideBarFg"

		pin_to_sibling 			"RightBar"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP
	}

	"CloseButton"			// straight to main menu
	{
		ControlName				CExButton
		fieldName				"CloseButton"
		xpos					0
		ypos					0
		zpos					1050
		wide					42
		tall					o1

		labelText				"M"
		font					"Symbols 32"
		textAlignment			center

		Command				"close"			// "Unknown command close" but it works
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		pin_to_sibling			"RightBar"
		pin_corner_to_sibling		PIN_BOTTOMLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT

		paintbackground 			0
	}

	"CloseShortcut"		// keyboard shortcut
	{
		ControlName			CExButton
		fieldName			"CloseShortcut"
		wide				0
		labelText			"&E"
		Command			"close"
	}
	
	// #endregion

	// #region CONTENT 

	// Sheet containts the charinfo panels
	// It also has two tab buttons on top that switch between the stats panel and other panels

	"Sheet"		// contains charinfo panels
	{
		ControlName				EditablePanel
		fieldName				"Sheet"
		zpos					1040		// buttons above sheet
		// can't change x, y, wide, tall
		
		tabxindent				-43		// tabs x pos
		tabxdelta				5		// tab spacing
		tabwidth				42		// doesn't work
		tabheight				42		// tab height, pushes other content
		transition_time 			0
		yoffset				42		// tab y pos, pushes other content


		// Two tabs: Loadout and Stats
		// Positioned to that loadout is off the screen and stats looks like a side bar button
		
		"tabskv"		// tab (loadout/stats) template
		{
			textinsetx				10				// used to control the width
			textinsety				-13
			selectedcolor			"ButtonHoverFg"
			unselectedcolor			"ButtonNormalFg"
			paintbackground			0
			
			labelText				"x"
			font					"Symbols 30"
			textAlignment			south
		}

		// panels in => resource\ui\CharInfoLoadoutSubPanel.res
	}

	// Visible when notifications are present, clicking it goes back to main menu
	// Same position as the notification alert on main menu
	
	"NotificationsPresentPanel"
	{
		ControlName				CNotificationsPresentPanel
		fieldName				"NotificationsPresentPanel"
		xPos					0
		yPos					0
		zPos					10000
		wide					42
		tall					o1
		visible				0
		alpha					0

		pin_to_sibling			"RightBar"
		pin_corner_to_sibling		PIN_BOTTOMRIGHT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}

	// #endregion

	// #region DISABLED 

	"frame_caption"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_topGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_bottomGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_leftGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_rightGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_tlGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_trGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	"frame_blGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}
	
	"frame_brGrip"
	{
		fieldName		"frame_caption"
		xpos			9999
		visible		0
	}

	// #endregion
}