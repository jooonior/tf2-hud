#base "../../../resource/tools/ReloadSchemeButton.res"

"Resource/UI/ItemPickupPanel.res"
{
	"item_pickup"
	{
		"ControlName"					"Frame"
		"fieldName"						"item_pickup"
		"xpos"							"0"
		"ypos"							"0"
		"zpos"							"10000"
		"wide"							"f0"
		"tall"							"480"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"tabPosition"					"0"
		"settitlebarvisible"			"0"
		"PaintBackgroundType"			"0"
		"bgcolor_override"				"Blank"
		"infocus_bgcolor_override" 		"Blank"
		"outoffocus_bgcolor_override"	"Blank"
		
		"modelpanels_spacing"			"40"
		"modelpanels_width"				"500"
		"modelpanels_height"			"260"				// item found panel
		"modelpanels_ypos"				"110"
		
		
		"modelpanelskv"	
		{
			"paintborder"				"0"
			paintbackground			0
			
			"model_xpos"				"0"
			"model_center_y"			"1"
			"model_tall"				"160"
			"model_wide"				"240"
			
			"text_forcesize"			"1"
			"text_xpos"					"250"
			"text_wide"					"225"
			"text_center"				"1"
			"is_mouseover"				"1"
			"hide_collection_panel" 	"1"
			
			"itemmodelpanel"
			{
				"use_item_rendertarget" "0"
				"inventory_image_type"	"1"
			}
		}
	}

	"Background"
	{
		ControlName					ImagePanel
		fieldName					"Background"
		xpos							cs-0.5
		ypos							cs-0.5
		zpos							-1
		wide							500
		tall							260
		visible						1
		fillColor					"MenuPanelBg"						
	}
	
	"classimageoutline"
	{
		ControlName					ImagePanel
		fieldName					"classimage_outline"
		xpos							c208
		ypos							115
		zpos							6
		wide							36
		tall							36
		visible						1
		paintbackground			1
		bgColor						"MenuPanelBg"						
	}
	
	
	"classimage"
	{
		ControlName					ImagePanel
		fieldName					"classimage"
		xpos							c211
		ypos							118
		zpos							7
		wide							30
		tall							30
		visible						1
		enabled						1
		image							"achievements/tf_medic_heal_grind"			// just a placeholder
		scaleImage					1
	}
	

	"ItemsFoundLabel"
	{
		ControlName					CExLabel
		fieldName					"ItemsFoundLabel"
		xpos							cs-0.5
		ypos							cs-1-130
		zpos							1
		wide							500
		tall							35
		visible						1
		enabled						1

		font							"Regular 30"
		labelText					"#NewItemsAcquired"
		textAlignment				west
		AllCaps						1
		fgcolor						"MenuPanelFg"
	}
	

	"SelectedItemFoundMethodLabel"
	{
		ControlName					CExLabel
		fieldName					"SelectedItemFoundMethodLabel"
		xpos							cs-0.5
		ypos							cs-1-130
		zpos							1
		wide							500
		tall							35
		visible						1
		enabled						1

		font							"Regular 14"
		labelText					""
		textAlignment				east
		AllCaps						1

		fgcolor						"MenuPanelFg"
	}
	

	"ItemCountLabel"
	{
		ControlName					CExLabel
		fieldName					"ItemCountLabel"
		
		xpos							c-245
		ypos							113
		zpos							5
		wide							100
		tall							12
		visible						1
		enabled						1

		font							"Regular 14"
		labelText					"#Item"
		textAlignment				north-west
		AllCaps						1

		fgcolor						"MenuPanelFg"
	}


	"SelectedItemNumberLabel"
	{
		ControlName					CExLabel
		fieldName					"SelectedItemNumberLabel"
		xpos							c-245
		ypos							120
		zpos							5
		wide							120
		tall							40
		visible						1
		enabled						1

		font							"Regular 30"
		labelText					"#SelectedItemNumber"
		textAlignment				north-west
		AllCaps						1

		fgcolor						"MenuPanelFg"
	}

	
	"NextButton"
	{
		ControlName					CExImageButton
		fieldName					"NextButton"
		xpos							c250
		ypos							cs-0.5
		zpos							1
		wide							70
		tall							260
		visible						1
		enabled						1

		labelText					"#NextItem"			// hardcoded
		font							"Symbols 20"
		textAlignment				west
		textinsety					1

		Command						"nextitem"

		paintbackground			0

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
	}
	

	"PrevButton"
	{
		ControlName					CExImageButton
		fieldName					"PrevButton"
		xpos							cs-1-250
		ypos							cs-0.5
		zpos							1
		wide							70
		tall							260
		visible						1
		enabled						1

		labelText					"#PreviousItem"			// hardcoded
		font							"Symbols 20"
		textAlignment				east
		textinsety					1

		Command						"previtem"

		paintbackground			0

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
	}

	
	"CloseButton"
	{
		ControlName					CExButton
		fieldName					"CloseButton"
		xpos							c-250
		ypos							c133
		zpos							6
		wide							500
		tall							30
		visible						1
		enabled						1

		labelText					"#CloseItemPanel"
		font							"Regular 16"
		textAlignment				center

		Command						"vguicancel"

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
		
		paintbackground 				1
		defaultBgColor_override		"MenuPanelBg"
		armedBgColor_override		"ButtonHoverBg"
		paintborder						0
		

	}
	
	"OpenLoadoutButton"
	{
		ControlName					CExButton
		fieldName					"OpenLoadoutButton"
		xpos							-2
		ypos							0
		zpos							50
		wide							26
		tall							26
		visible						1
		enabled						1

		labelText					"F"
		font							"Symbols 20"
		textAlignment				center
		textinsety					-1

		Command						"changeloadout"

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonNormalFg"

		paintbackground 				1
		defaultBgColor_override		"MenuPanelBg"
		armedBgColor_override		"ButtonHoverBg"

		pin_to_sibling					"CloseButton"
		pin_corner_to_sibling		PIN_CENTER_LEFT
		pin_to_sibling_corner		PIN_CENTER_LEFT
	}
	
	"DiscardButton"
	{
		ControlName					CExImageButton
		fieldName					"DiscardButton"
		xpos							c211
		ypos							156
		zpos							7
		wide							30
		tall							30
		visible						1
		enabled						1

		labelText					"%"
		font							"Symbols 20"
		textAlignment				center

		Command						"discarditem"

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"

		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonNormalFg"

		paintbackground 				1
		defaultBgColor_override		"MenuPanelBg"
		armedBgColor_override		"ButtonHoverBg"
	}
	
	"DiscardButtonTooltip"
	{
		"ControlName"					"EditablePanel"
		"fieldName"						"DiscardButtonTooltip"
		"xpos"							"c180"
		"ypos"							"175"
		"zpos"							"11"
		"wide"							"100"
		"tall"							"50"
		"visible"						"0"
		"PaintBackgroundType"			"2"
		"border"						"WhiteTransparent70"
		
		"TipLabel"
		{
			"ControlName"				"CExLabel"
			"fieldName"					"TipLabel"
			"font"						"Regular 12"
			"labelText"					"#DiscardItem"
			"textAlignment"				"center"
			"xpos"						"12"
			"ypos"						"0"
			"wide"						"80"
			"tall"						"50"
			"autoResize"				"0"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"fgcolor"					"Gray"
			"wrap"						"1"
			"centerwrap"				"1"
		}
	}
	
	"DiscardedLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"DiscardedLabel"
		"font"							"Regular 30"
		"labelText"						"#Discarded"
		"textAlignment"					"center"
		"xpos"							"c-215"
		"ypos"							"210"
		"zpos"							"5"
		"wide"							"420"
		"tall"							"60"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"1"
		"enabled"						"1"
		"fgcolor_override" 				"White"
		"bgcolor_override"				"Blank"
		"border"						"RedTransparent70"
	}
	
	"ScoreEntry"
	{
		"ControlName"					"TextEntry"
		"fieldName"						"ScoreEntry"
		"xpos"							"9999"
	}
}
