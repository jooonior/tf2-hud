#base "../../resource/tools/ReloadSchemeButton.res"

"Resource/UI/ItemSelectionPanel.res"
{
	"ItemSelectionPanel"
	{
		ControlName					EditablePanel
		fieldName					"ItemSelectionPanel"
		xpos							0
		ypos							0
		zpos							500
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1

		settitlebarvisible		0
		paintbackground			0
		
		item_ypos						77
		item_ydelta						80

		item_backpack_offcenter_x	-300
		item_backpack_xdelta			0
		item_backpack_ydelta			0

		"modelpanels_selection_kv"		// viewing valid items
		{
			wide						100
			tall						75
			model_xpos				2
			model_wide				75
			model_tall				50
			model_center_x			1
			text_ypos				0
			text_forcesize			2
			text_center				0
			text_yoffset			3
			inset_eq_y				55

			deferred_description		1
			deferred_icon				1
		}
		
		"modelpanels_kv"		// viewing whole backpack
		{
			ControlName					CItemModelPanel
			xpos							c-70
			ypos							270
			wide							60
			tall							45
			visible						0
			noitem_textcolor			"FontNormal"		// selecting empty
			paintbackground			0
			paintborder					1
			
			model_xpos					2
			model_ypos					5 
			model_wide					50
			model_tall					35
			text_ypos					60
			text_center					1
			name_only					1
			
			inset_eq_x					2
			inset_eq_y					2

			deferred_description		1
			
			"itemmodelpanel"
			{
				use_item_rendertarget	0
				inventory_image_type		1
				allow_rot					0
			}
			
			use_item_sounds			1
		}
		
		"duplicatelabels_kv"		// item count
		{
			wide						20
			tall						15
			zpos						1
			font						"Regular 10"
			textAlignment			center
			fgcolor					"FontNormal"
			paintbackground		0
		}
	}


	"BackgroundPanel"
	{
		ControlName				EditablePanel
		fieldName				"BackgroundPanel"
		xpos						cs-0.5
		ypos						20
		zpos						-3
		wide						f200
		tall						340
		visible					1
		mouseinputenabled		0
		alpha						240
		
		"Anchor"						// workaround for image cropping
		{
			ControlName					EditablePanel
			fieldname					"Anchor"
			xpos							cs-0.5
			ypos							-96
			wide							0
			tall							0
			visible						1
			proportionaltoparent		1
		}

		"Full"
		{
			ControlName				ImagePanel
			fieldName				"Full"
			xpos						0
			ypos						0
			wide						f0
			tall						480
			visible					1
			image						"replay\thumbnails\backgrounds\split1\full"
			scaleimage				1

			pin_to_sibling				"Anchor"
			pin_corner_to_sibling	PIN_CENTER_TOP
			pin_to_sibling_corner	PIN_TOPLEFT
		}
		
		"BorderTop"
		{
			ControlName					ImagePanel
			fieldname					"BorderTop"
			xpos							0
			ypos							0
			wide							f0
			tall							4
			visible						1
			proportionaltoparent		1
			fillColor					"MenuPanelBg"
		}

		"BorderBottom"
		{
			ControlName					ImagePanel
			fieldname					"BorderBottom"
			xpos							0
			ypos							rs1
			wide							f0
			tall							4
			visible						1
			proportionaltoparent		1
			fillColor					"MenuPanelBg"
		}

		"BorderLeft"
		{
			ControlName					ImagePanel
			fieldname					"BorderLeft"
			xpos							0
			ypos							4
			wide							4
			tall							f8
			visible						1
			proportionaltoparent		1
			fillColor					"MenuPanelBg"
		}

		"BorderRight"
		{
			ControlName					ImagePanel
			fieldname					"BorderRight"
			xpos							rs1
			ypos							4
			wide							4
			tall							f8
			visible						1
			proportionaltoparent		1
			fillColor					"MenuPanelBg"
		}
	}


	"SelectionBG"
	{
		ControlName					ImagePanel
		fieldName					"SelectionBG"
		xpos							cs-0.5		// items are a bit off center
		ypos							77
		zpos							-1
		wide							600 // backpack width 580
		tall							224 // backpack height should be 230, but it's 231 ???
		visible						1
		fillColor					"MenuPanelBg"
	}

	"CancelButton"		// if you click away
	{
		ControlName					CExButton
		fieldName					"CancelButton"
		xpos							0
		ypos							0
		zpos							-2
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1
		enabled						1
		alpha							0

		Command				"vguicancel"

		//sound_depressed	"UI/buttonclick.wav"
		//sound_released		"UI/buttonclickrelease.wav"
	}
	
	"ItemSlotLabel"		// slot title
	{
		ControlName			CExLabel
		fieldName			"ItemSlotLabel"
		xpos					0
		ypos					0
		zpos					1
		wide					400
		tall					25
		visible				1
		enabled				1

		font					"Regular 35"
		labelText			"#PrimaryWeapon"
		textAlignment		west
		AllCaps				1
		textinsetx			0		// hide the -

		fgcolor				"MenuPanelFg"
		paintbackground	0
		
		pin_to_sibling 			"SelectionBG"
		pin_corner_to_sibling 	PIN_BOTTOMLEFT
		pin_to_sibling_corner 	PIN_TOPLEFT
	}
	
	"NameFilterTextEntry"
	{
		ControlName			TextEntry
		fieldName			"NameFilterTextEntry"
		xpos					0
		ypos					2
		zpos					20
		wide					110
		tall					15
		visible				1
		enabled				1

		font					"HudFontSmallestBold"
		textHidden			0
		editable				1
		unicode				1

		fgcolor_override		"FontNormal"
		bgcolor_override		"MenuPanelBg"
		roundedCorners			0
		
		pin_to_sibling 				"SelectionBG"
		pin_corner_to_sibling 		PIN_BOTTOMRIGHT
		pin_to_sibling_corner 		PIN_TOPRIGHT
	}

	"NameFilterIcon"
	{
		ControlName			CExLabel
		fieldName			"NameFilterIcon"
		xpos					0
		ypos					0
		zpos					0
		wide					20
		tall					20
		visible				1

		font					"Symbols 18"
		textAlignment		center
		textinsetx			10
		labeltext			"Q"

		fgcolor_override		"MenuPanelFg"
		paintbackground		0

		pin_to_sibling 				"NameFilterTextEntry"
		pin_corner_to_sibling 		PIN_CENTER_RIGHT
		pin_to_sibling_corner 		PIN_CENTER_LEFT
	}
	
	
	"ShowBackpack"
	{
		ControlName			CExButton
		fieldName			"ShowBackpack"
		xpos					0
		ypos					2
		zpos					20
		wide					600
		tall					22
		visible				1
		enabled				1

		labelText			"#Selection_ShowBackpack"
		font					"Regular 20"
		textAlignment		center
		AllCaps				1

		Command				"show_backpack"
		
		sound_depressed	"UI/buttonclick.wav"
		sound_released		"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"FontNormal"
		armedFgColor_override		"FontNormal"
		
		paintbackground				1
		defaultBgColor_override		"MenuPanelBg"
		armedBgColor_override		"ButtonHoverBg"
				
		pin_to_sibling 			"SelectionBG"
		pin_corner_to_sibling 	PIN_TOPLEFT
		pin_to_sibling_corner 	PIN_BOTTOMLEFT
	}
	
	"ShowSelection"
	{
		ControlName			CExButton
		fieldName			"ShowSelection"
		xpos					0
		ypos					2
		zpos					20
		wide					600
		tall					22
		visible				1
		enabled				1

		labelText			"#Selection_ShowSelection"
		font					"Regular 20"
		textAlignment		center
		AllCaps				1

		Command				"show_selection"
		
		sound_depressed	"UI/buttonclick.wav"
		sound_released		"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"FontNormal"
		armedFgColor_override		"FontNormal"
		
		paintbackground				1
		defaultBgColor_override		"MenuPanelBg"
		armedBgColor_override		"ButtonHoverBg"
				
		pin_to_sibling 			"SelectionBG"
		pin_corner_to_sibling 	PIN_TOPLEFT
		pin_to_sibling_corner 	PIN_BOTTOMLEFT
	}
	
	"OnlyAllowUniqueQuality"		// TODO
	{
		"ControlName"					"CheckButton"
		"fieldName"						"OnlyAllowUniqueQuality"
		"labelText"						"#OnlyAllowUniqueQuality"
		"Font"							"Regular 12"
		"textAlignment"				"west"
		"xpos"							"3"
		"ypos"							"0"
		"zpos"							"1"
		"wide"							"290"
		"tall"							"25"
		"autoResize"					"0"
		"pinCorner"						"0"
		"visible"						"0"
		"enabled"						"1"
		"dulltext"						"0"
		"brighttext"					"0"
		
		"pin_to_sibling" 				"SelectionBG"
		"pin_corner_to_sibling" 	"PIN_BOTTOMLEFT"
		"pin_to_sibling_corner" 	"PIN_TOPLEFT"
	}

	"PrevPageButton"
	{
		ControlName				CExButton
		fieldName				"PrevPageButton"
		xpos						2
		ypos						0
		zpos						1
		wide						f766
		tall						223
		visible					1
		enabled					1

		labelText				"]"
		font						"Symbols 20"
		textAlignment			east
		textinsety				1

		Command					"prevpage"
		
		sound_depressed		"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
				
		defaultFgColor_override			"ButtonNormalBg"
		armedFgColor_override			"ButtonHoverBg"
		disabledFgColor2_override		"0 0 0 0"
				
		paintbackground					0

		pin_to_sibling 					"SelectionBG"
		pin_corner_to_sibling 			PIN_TOPRIGHT
		pin_to_sibling_corner 			PIN_TOPLEFT
	}

	
	"PrevPageShortCut"
	{
		ControlName		CExButton
		fieldName		"PrevPageShortCut"
		wide				0
		labelText		"&A"
		Command			"prevpage"
	}

	"NextPageButton"
	{
		ControlName				CExButton
		fieldName				"NextPageButton"
		xpos						2
		ypos						0
		zpos						1
		wide						f766
		tall						223
		visible					1
		enabled					1

		labelText				"H"
		font						"Symbols 20"
		textAlignment			west
		textinsety				1

		Command					"nextpage"
		
		sound_depressed		"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
				
		defaultFgColor_override			"ButtonNormalBg"
		armedFgColor_override			"ButtonHoverBg"
		disabledFgColor2_override		"0 0 0 0"
				
		paintbackground					0

		pin_to_sibling 					"SelectionBG"
		pin_corner_to_sibling 			PIN_TOPLEFT
		pin_to_sibling_corner 			PIN_TOPRIGHT
	}
	
	"NextPageShortCut"
	{
		ControlName		CExButton
		fieldName		"NextPageShortCut"
		wide				0
		labelText		"&D"
		Command			"nextpage"
	}
	
	"NoItemsLabel"			// when you don't have any items
	{
		ControlName					CExLabel
		fieldName					"NoItemsLabel"
		xpos							0
		ypos							0
		zpos							10
		wide							600
		tall							30
		visible						0
		
		font							"Regular 30"
		labelText					"#NoItemsToEquip"
		textAlignment				center
		AllCaps						1

		fgcolor_override 			"FontNormal"
		paintbackground			0

		pin_to_sibling 				"SelectionBG"
		pin_corner_to_sibling 		PIN_CENTER_LEFT
		pin_to_sibling_corner 		PIN_CENTER_LEFT
	}
	
	"mouseoveritempanel"
	{
		"ControlName"					"CItemModelPanel"
		"fieldName"						"mouseoveritempanel"
		"xpos"							"c-70"
		"ypos"							"270"
		"zpos"							"100"
		"wide"							"300"
		"tall"							"300"
		"visible"						"0"
		"bgcolor_override"				"Blank"
		"noitem_textcolor"				"117 107 94 255"
		"PaintBackgroundType"			"2"
		"paintborder"					"1"
		
		"text_ypos"						"20"
		"text_center"					"1"
		"model_hide"					"1"
		"resize_to_text"				"1"
		"padding_height"				"15"
		
		"attriblabel"
		{
			"font"						"ItemFontAttribLarge"
			"xpos"						"0"
			"ypos"						"30"
			"zpos"						"2"
			"wide"						"140"
			"tall"						"60"
			"autoResize"				"0"
			"pinCorner"					"0"
			"visible"					"1"
			"enabled"					"1"
			"labelText"					"%attriblist%"
			"textAlignment"				"center"
			"fgcolor"					"117 107 94 255"
			"centerwrap"				"1"
		}
	}
	
	"CaratLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"CaratLabel"
		"xpos"							"9999"
	}
	"ClassLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"ClassLabel"
		"xpos"							"9999"
	}
	"TopLine"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"TopLine"
		"xpos"							"9999"
	}				
	"BottomLine"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"BottomLine"
		"xpos"							"9999"
	}
	"NameFilterLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"NameFilterLabel"
		"xpos"							"9999"
	}
	"CurPageLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"CurPageLabel"
		"xpos"							"9999"
	}
}