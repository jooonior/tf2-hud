"Resource/UI/MatchmakingCategoryPanel.res"
{
	"MatchmakingCategoryPanel"
	{
		"fieldName"							"MatchmakingCategoryPanel"
		"xpos"								"0"
		"ypos"								"0"
		"wide"								"f0" // 250
		"tall"								"50"
		"proportionaltoparent"				"1"

		"collapsed_height"					"57"
		"resize_time"						"0"
	
	}

	"TopContainer"
	{
		Controlname						EditablePanel
		fieldName						"TopContainer"
		xpos								0
		ypos								0
		zpos								2
		wide								f0
		tall								f0
		visible							1
		enabled							1
		proportionaltoparent			1

		"BGImage"
		{
			ControlName					ImagePanel
			fieldName					"BGImage"
			xpos							0
			ypos							0
			zpos							0
			wide							f0 // 250
			tall							f0
			visible						1
			enabled						1
			scaleImage					1	
			proportionaltoparent		1
		}

		"EntryToggleButton"
		{
			ControlName					CExButton
			fieldName					"EntryToggleButton"
			xpos							0
			ypos							rs1
			zpos							100
			wide							f0
			tall							9
			proportionaltoparent		1
			alpha							125

			command						"toggle_collapse"
			actionsignallevel			2
			command						"toggle_collapse"
			stay_armed_on_click		1		// check out!
			
			labeltext					"#TF_Casual_ViewMaps"
			font							"Regular 8"
			textAlignment				center
			AllCaps						1

			
			sound_armed					"UI/item_info_mouseover.wav"
			sound_depressed			"UI/buttonclick.wav"
			sound_released				"UI/buttonclickrelease.wav"
			
			paintbackground			1
			paintborder					0

			defaultBgColor_override		"MenuPanelFg"
			armedBgColor_override		"ButtonHoverBg"
			selectedBGColor_override 	"ButtonHoverBg"
		}
		
		"Title"
		{
			ControlName					CExLabel
			fieldName					"Title"
			xpos							0
			ypos							0
			zpos							3
			wide							f0
			tall							20
			proportionaltoparent 	1
			visible						1
			enabled						1
			
			labelText					"%title_token%"
			font							"Regular 15"
			textAlignment				east
			textinsetx					5
			AllCaps						1
			//use_proportional_insets 		1
			mouseinputenabled				0

			fgcolor						"FontNormal"
			alpha							255
		}	

		"Checkbutton"
		{
			ControlName					CExCheckButton
			fieldName					"Checkbutton"
			xpos							-2
			ypos							0
			zpos							3
			wide							25
			tall							20
			proportionaltoparent		1

			labeltext					""	
			smallcheckimage			0
			button_activation_type	1

			sound_depressed			"UI/buttonclickrelease.wav"
			
			pin_to_sibling					"Title"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_BOTTOMRIGHT
		}
	}

	"MapsContainer"
	{
		Controlname					EditablePanel
		fieldName					"MapsContainer"
		xpos							0
		ypos							0
		zpos							0
		wide							f0
		tall							0
		proportionaltoparent		1
		visible						1
		enabled						1

		paintborder					0
		paintbackground			0
		skip_autoresize			1

		// => resource\ui\MatchMakingCategoryMapPanel.res
	}
}