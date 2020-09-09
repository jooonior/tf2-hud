#base "../DevTools.res"

"Resource/UI/FullLoadoutPanel.res"
{
	"class_loadout_panel"
	{
		ControlName					Frame
		fieldName					"class_loadout_panel"
		xpos						0
		ypos						0
		wide						f0
		tall						411
		visible						1
		enabled						1

		paintbackground				0
		
		item_xpos_offcenter_a		-315
		item_xpos_offcenter_b		160
		item_ypos					55
		item_ydelta					75
		item_mod_wide				40
		
		item_backpack_offcenter_x	-288
		item_backpack_xdelta		4
		item_backpack_ydelta		3

		button_xpos_offcenter		175		
		button_ypos					85
		button_ydelta				80
		button_override_delete_xpos 0
		
		"modelpanels_kv"
		{
			ControlName				CItemModelPanel
			xpos						c-70
			ypos						270
			wide						150
			tall						77
			visible					0
			bgcolor_override		"0 0 0 0"
			noitem_textcolor		"MenuPanelFg"		// no item equipped
			PaintBackgroundType	2
			paintborder				1
			
			model_center_x			1
			model_ypos				5			
			model_tall				55
			model_wide				82
			text_ypos				56
			text_center				1
			name_only				1
			
			"attriblabel"
			{
				font					"Regular 12"
				visible				0
			}
			
			"itemmodelpanel"
			{
				use_item_rendertarget	0
				inventory_image_type		1
				allow_rot					0
			}
		}

		"itemoptionpanels_kv"
		{
			ControlName				CExButton
			xpos						0
			ypos						0
			zpos						1
			wide						20
			tall						20
			autoResize				0
			visible					0
			enabled					1
			tabPosition				0
			labelText				"I"
			font						"Symbols 14"
			textAlignment			center
			dulltext					0
			brighttext				0
			default					1
			
			paintbackground		0
			paintborder				0
			
			sound_depressed		"UI/buttonclick.wav"
			sound_released			"UI/buttonclickrelease.wav"
			
			border_default			"MenuPanel radius=1"
			border_armed			"MenuPanel radius=1"
			
			defaultFgColor_override 	"White"
			armedFgColor_override 		"White"
					}
	}
	
	
	"classmodelpanel"		// player model
	{
		ControlName					CTFPlayerModelPanel
		fieldName					"classmodelpanel"
		xpos							cs-0.5
		ypos							0
		zpos							-1
		wide							f76		// without side bars
		tall							f0
		proportionaltoparent		1
		visible						1
		enabled						1
		
		render_texture				0
		fov							30
		allow_manip					1
		
		"model"
		{
			force_pos				1

			angles_x 				0
			angles_y 				170
			angles_z 				0
			origin_x 				450	// distance
			origin_y 				0		// horizontal
			origin_z 				-45	// vertical
			frame_origin_x			0
			frame_origin_y			0
			frame_origin_z			0
			spotlight 				1
		
			modelname				""	
		}
	}
	
	"mouseoveritempanel"
	{
		ControlName					CItemModelPanel
		fieldName					"mouseoveritempanel"
		xpos							c-70
		ypos							270
		zpos							100
		wide							300
		tall							300
		visible						0

		PaintBackgroundType		2
		paintborder					1
		border						"LoadoutItemPopupBorder"		// hardcoded
		
		text_ypos					15
		text_center					1
		model_hide					1
		resize_to_text				1
		padding_height				15
		
		"attriblabel"
		{
			xpos						0
			ypos						0
			zpos						2
			wide						140
			tall						60
			visible					1
			enabled					1

			font						"ItemFontAttribLarge"
			labelText				"%attriblist%"
			textAlignment			center
			centerwrap				1

			fgcolor					"117 107 94 255"
		}

		// => resource\ui\econ\ItemModelPanel.res "MainContentsContainer"
	}
	
	"loadout_preset_panel"		// no idea how to move this ? buttons off center ?
	{
		ControlName					CLoadoutPresetPanel
		FieldName					"loadout_preset_panel"
		zpos							20
		wide							150
		tall							6
		visible						1
		enabled						1
		paintbackground			0

		// => resource\ui\loadoutpresetpanel.res
		// Button.BgColor, ButtonBorder in scheme
	}

	"CharacterLoadoutButton"
	{
		ControlName					CExButton
		fieldName					"CharacterLoadoutButton"
		xpos							cs-1.13		// align with preset B
		ypos							27
		zpos							2
		wide							25
		tall							25
		visible						1
		enabled						1

		labeltext					"F"
		font							"Symbols 18"
		textAlignment				center

		Command						"characterloadout"
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
		
		defaultFgColor_override 	"ButtonNormalFg"
		armedFgColor_override 		"ButtonNormalFg"
		
		paintbackground				1
		defaultBgColor_override 	"MenuPanelBg"
		armedBgColor_override 		"ButtonHoverBg"
	}

	"TauntLoadoutButton"
	{
		ControlName					CExButton
		fieldName					"TauntLoadoutButton"
		xpos							cs-0.02		// align with preset C
		ypos							27
		zpos							2
		wide							25
		tall							25
		visible						1
		enabled						1
		
		labelText					"Ï"
		font							"Symbols 18"
		textAlignment				center
		
		Command						"tauntloadout"
				
		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"
		
		defaultFgColor_override 	"ButtonNormalFg"
		armedFgColor_override 		"ButtonNormalFg"
		
		paintbackground				1
		defaultBgColor_override 	"MenuPanelBg"
		armedBgColor_override 		"ButtonHoverBg"
	}
	
	"ItemOptionsPanel"
	{
		ControlName					CLoadoutParticleSlider
		fieldname					"ItemOptionsPanel"
		xpos							0
		ypos							0
		zpos							100
		wide							140
		tall							75
		visible						0

		paintbackground			0
		border						"LoadoutItemPopupBorder"

		// => resource\ui\ItemOptionsPanel.res
	}
	
	
	"CaratLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"CaratLabel"
		"xpos"							"9999"
	}
	"TauntCaratLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"TauntCaratLabel"
		"xpos"							"9999"
	}
	"TauntLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"TauntLabel"
		"xpos"							"9999"
	}
	"TopLine"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"TopLine"
		"xpos"							"9999"
	}
	"PassiveAttribsLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"PassiveAttribsLabel"
		"xpos"							"9999"
	}
	"TauntHintLabel"
	{
		"ControlName"					"CExLabel"
		"fieldName"						"TauntHintLabel"
		"xpos"							"9999"
	}
}