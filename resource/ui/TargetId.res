"Resource/UI/TargetID.res"
{
	"TargetIDBG"
	{
		"ControlName"		"CTFImagePanel"
		"fieldName"		"TargetIDBG"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"-1"
		"wide"			"252"
		"tall"	 		"50"
		"autoResize"		"0"
		"pinCorner"		"0"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../hud/color_panel_brown"
		"scaleImage"		"1"
		"teambg_1"		"../hud/color_panel_brown"
		"teambg_2"		"../hud/color_panel_red"
		"teambg_2_lodef"	"../hud/color_panel_red"
		"teambg_3"		"../hud/color_panel_blu"
		"teambg_3_lodef"	"../hud/color_panel_blu"
		
		"src_corner_height"		"23"				// pixels inside the image
		"src_corner_width"		"23"
			
		"draw_corner_width"		"5"				// screen size of the corners ( and sides ), proportional
		"draw_corner_height" 	"5"	
	}


	"SpectatorGUIHealth"			// target's HP container
	{
		ControlName					EditablePanel
		fieldName					"SpectatorGUIHealth"
		xpos							0
		ypos							cs-0.5
		wide							35
		tall							17
		proportionaltoparent		1
		visible						0

		HealthBonusPosAdj				90				// PlayerStatusHealthBonusImage grow
		HealthDeathWarning			0.49
		TFFont							"HudFontSmall"
		HealthDeathWarningColor		"HUDDeathWarning"
		TextColor						"HudOffWhite"

		// => resource\ui\SpectatorGuiHealth.res
	}	
	
	
	"TargeTNameAnchor"			// override positions
	{
		ControlName				EditablePanel
		fieldName				"TargetNameAnchor"
		xpos						81
		ypos						20
		wide						0
		tall						10
		visible					1
	}

	"TargetNameLabel"			// target's name
	{	
		ControlName					Label
		fieldName					"TargetNameLabel"
		xpos							40			// can't change
		ypos							cs-0.5
		zpos							5
		wide							640
		tall							15
		proportionaltoparent		1
		visible						1
		enabled						0			// locked fgColor workaround

		labelText					"%targetname%"
		font							"Regular 10"
		textAlignment				west
		textInsetX					10

		disabledFgColor2_override		"255 255 255 255"
		paintbackground					1
		bgColor_override					"TargetBg"

		pin_to_sibling				"TargetNameAnchor"
	}


	"TargetDataAnchor"			// override positions
	{
		ControlName				EditablePanel
		fieldName				"TargetDataAnchor"
		xpos						81
		ypos						0
		wide						0
		tall						10
		visible					1
	}

	"TargetDataLabel"		// target's ammo in clip or uber %
	{	
		ControlName				Label
		fieldName				"TargetDataLabel"
		xpos						0							// can't change
		ypos						0
		zpos						1
		wide						640
		tall						9
		proportionaltoparent	1
		visible					1
		enabled					0

		labelText				"%targetdata%"
		font						"Regular 11"
		textAlignment			west
		textInsetX				10

		disabledFgColor2_override		"255 255 255 255"
		paintbackground					0
		bgColor_override					"TargetBg"

		pin_to_sibling				"TargetDataAnchor"
	}

	"AmmoIcon"
	{
		ControlName				ImagePanel
		fieldName				"AmmoIcon"
		xpos						-3
		ypos						0
		zpos						12
		wide						9
		tall						9
		visible					0
		image						"../hud/leaderboard_class_heavy"
		scaleImage				1

		pin_to_sibling				"TargetDataLabel"
		pin_corner_to_sibling	PIN_CENTER_LEFT
		pin_to_sibling_corner	PIN_CENTER_LEFT
	}
	
	
	"KillStreakIcon"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"KillStreakIcon"
		"xpos"			"10"
		"xpos_minmode"	"30"
		"ypos"			"20"
		"ypos_minmode"	"16"
		"zpos"			"12"
		"wide"			"8"
		"tall"			"8"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../hud/leaderboard_streak"
		"scaleImage"	"1"
	}
	
	"MoveableSubPanel"		// engi press X to pick up building
	{
		"ControlName"		"EditablePanel"
		"fieldName"		"MoveableSubPanel"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"-5"
		"wide"			"0"
		"tall"			"0"
		"visible"		"0"
		"enabled"		"1"
		alpha				0
		
		"MoveableIconBG"
		{
			"ControlName"	"CIconPanel"
			"fieldName"		"MoveableIconBG"
			"xpos"			"0"
			"ypos"			"0"
			"zpos"			"0"
			"wide"			"10"
			"tall"			"36"
			"visible"		"1"
			"enabled"		"1"
			"icon"			"obj_status_alert_background_tall_nocolor"
			"iconColor"		"HudBlack"
			"scaleImage"	"1"
		}
		
		"MoveableIcon"
		{
			"ControlName"	"CIconPanel"
			"fieldName"		"MoveableIcon"
			"xpos"			"5"
			"ypos"			"7"
			"zpos"			"11"
			"wide"			"14"
			"tall"			"14"
			"visible"		"1"
			"enabled"		"1"
			"icon"			"obj_status_sentrygun_1"
			"drawcolor"		"ProgressOffWhite"
			"scaleImage"	"1"
		}
		"MoveableSymbolIcon"
		{
			"ControlName"	"ImagePanel"
			"fieldName"		"MoveableSymbolIcon"
			"xpos"			"16"
			"ypos"			"-2"
			"zpos"			"12"
			"wide"			"16"
			"tall"			"8"
			"visible"		"1"
			"enabled"		"1"
			"image"			"../hud/eng_sel_item_movable"
			"drawcolor"		"ProgressOffWhite"
			"scaleImage"	"1"
		}

		"MoveableKeyLabel"
		{	
			"ControlName"		"Label"
			"fieldName"		"MoveableKeyLabel"
			"font"			"TFFontMedium"
			"font_minmode"	"DefaultVerySmall"
			"xpos"			"0"
			"ypos"			"22"
			"zpos"			"1"
			"wide"			"640"
			"tall"			"24"
			"autoResize"		"0"
			"pinCorner"		"0"
			"visible"		"1"
			"enabled"		"1"
			"labelText"		"%movekey%"
			"textAlignment"		"North"
			"dulltext"		"0"
			"brighttext"		"0"
		}	
	}
	"AvatarImage"
	{
		"ControlName"	"CAvatarImagePanel"
		"fieldName"		"AvatarImage"
		"xpos"			"6"
		"xpos_minmode"	"6"
		"ypos"			"6"	[$WIN32]
		"ypos"			"0"	[$X360]
		"zpos"			"99"
		"wide"			"11"
		"tall"			"11"
		"visible"		"1"
		"enabled"		"1"
		"image"			""
		"scaleImage"	"1"	
		"color_outline"	"52 48 45 255"
	}	
}
