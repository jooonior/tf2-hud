"Resource/UI/MatchmakingCasualCriteria.res"
{
	"PlaylistBGPanel"		// inside "criteria"
	{
		ControlName						EditablePanel
		fieldName						"PlaylistBGPanel"
		xpos								cs-0.5
		ypos								0
		zpos								-1
		wide								f0
		tall								f0
		proportionaltoparent			1
		visible							1

		"RankImage"
		{
			"ControlName"					"CTFLocalPlayerBadgePanel"
			"fieldName"						"RankImage"
			"xpos"							"9999"
			"ypos"							"-8"
			"zpos"							"110"
			"wide"							"o1"
			"tall"							"60"
			"visible"						"1"
			"enabled"						"1"
			"proportionaltoparent"			"1"
			"mouseinputenabled"				"0"

			"matchgroup"					"MatchGroup_Casual_12v12"
		}
	
		"RankPanel"
		{
			"ControlName"					"CPvPRankPanel"
			"fieldName"						"RankPanel"
			"xpos"							"9999"
			"ypos"							"-35"
			"zpos"							"100"
			"wide"							"330"
			"tall"							"92"
			"visible"						"1"
			"proportionaltoparent"			"1"
			"mouseinputenabled"				"0"

			"matchgroup"					"MatchGroup_Casual_12v12"

			"show_model"					"0"
			"show_name"						"0"
		}

		"RestoreCasualSearchCriteria"
		{
			ControlName					CExImageButton
			fieldName					"RestoreCasualSearchCriteria"
			xpos							rs1
			ypos							3
			zpos							200
			wide							18
			tall							18
			visible						1
			enabled						1

			labelText					"h"
			font							"Symbols 16"
			textAlignment				center

			Command						"restore_search_criteria"
			
			actionsignallevel				2
			proportionaltoparent			1
				
			defaultFgColor_override		"ButtonNormalFg"
			armedFgColor_override		"ButtonNormalFg"

			paintbackground				1
			defaultBgColor_override		"MenuPanelFg"
			armedBgColor_override		"ButtonHoverBg"

		}

		"SaveCasualSearchCriteria"
		{
			ControlName					CExImageButton
			fieldName					"SaveCasualSearchCriteria"
			xpos							3
			ypos							0
			zpos							200
			wide							18
			tall							18
			visible						1
			enabled						1

			labelText					"ã"
			font							"Symbols 16"
			textAlignment				center

			Command						"save_search_criteria"
			actionsignallevel			2
			proportionaltoparent		1
		
			defaultFgColor_override		"ButtonNormalFg"
			armedFgColor_override		"ButtonNormalFg"

			paintbackground				1
			defaultBgColor_override		"MenuPanelFg"
			armedBgColor_override		"ButtonHoverBg"

			pin_to_sibling					"RestoreCasualSearchCriteria"
			pin_corner_to_sibling		PIN_TOPRIGHT
			pin_to_sibling_corner		PIN_TOPLEFT
		}

		"SelectedCount"
		{
			ControlName					Label
			fieldName					"SelectedCount"
			xpos							7
			ypos							0
			zpos							0
			wide							f0
			tall							24
			proportionaltoparent		1

			labeltext					"%selected_maps_count%"
			font							"Regular 16"
			textAlignment				west
			AllCaps						1

			fgcolor_override			"MenuPanelFg"
		}

		"QueueEstimation"
		{
			"ControlName"					"Label"
			"fieldName"						"QueueEstimation"
			"xpos"							"rs1-5"
			"ypos"							"30"
			"zpos"							"0"
			"wide"							"f0"
			"tall"							"20"
			"proportionaltoparent"			"1"
			"labeltext"						"#TF_Casual_QueueEstimation"
			"textAlignment"					"east"
			"font"							"Regular 14"
			"fgcolor_override"				"Gray"
			"AllCaps"						"1"
			"textinsetx"					"5"
			"visible"						"0"
		
			"mouseinputenabled"				"0"
		}

		"GameModesList"
		{
			ControlName					CScrollableList
			fieldName					"GameModesList"
			xpos							0
			ypos							24
			wide							f0
			tall							f24
			proportionaltoparent		1
			visible						1
			
			restrict_width 			0
			paintbackground 			0

			// => resource\ui\MatchMakingGroupPanel.res
			// => resource\ui\MatchMakingCategoryPanel.res

			"ScrollBar"
			{
				ControlName					ScrollBar
				FieldName					"ScrollBar"
				xpos							rs1+1
				ypos							0
				zpos							1000
				tall							f0
				wide							0 // 4
				proportionaltoparent		1
				nobuttons					1

				Slider
				{
					fgcolor_override		"MenuPanelBg"
					wide						4
				}
			}
		}
	}
}