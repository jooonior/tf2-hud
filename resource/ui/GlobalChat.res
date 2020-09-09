// Party chat

"Resource/UI/GlobalChat.res"
{
	"partychat"
	{
		fieldName				"partychat"
		xpos					43
		ypos					28			// can't change
		zpos					1199			// right below MMDashboard
		wide					166
		tall					200			// expanded_height

		proportionaltoparent		1
		keyboardinputenabled		1
		mouseinputenabled			1

		paintborder				0
		paintbackground			1
		bgcolor_override			"MenuPanelBg"

		log_font_small			"HudFontSmall"
		log_font_medium			"HudFontMediumSmallSecondary"
		log_font_large			"HudFontMediumSecondary"

		chat_color_default		"255 255 255 255"
		chat_color_player_name		"255 255 0 255"
		chat_color_chat_text		"255 255 255 255"
		chat_color_party_event		"Orange"

		collapsed_height			0
		expanded_height			200
		resize_time				0.3
		invalidate_parent_on_resize	0

		pin_to_sibling			"PartyChatAnchor"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_TOPLEFT
	}


	"TopLine"					// visual
	{
		ControlName				ImagePanel
		fieldName				"TopLine"
		xpos					0
		ypos					0
		wide					f0
		tall					1
		proportionaltoparent		1
		fillColor				"MenuPanelBg"
	}

	"chatlog"
	{
		ControlName				richtext
		fieldName				"chatlog"
		xpos					0
		ypos					0
		zpos					1
		wide					f0
		tall					f15		// can't change; scripted as expanded_height - 15
		proportionaltoparent		1
		mouseinputenabled			0
		
		font					"HudFontSmallest"		// can't change + it's a different font
		paintbackground			0

		pin_to_sibling			"TopLine"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT


		"ScrollBar"
		{
			FieldName				"ScrollBar"
			xpos					rs1-1
			ypos					0
			zpos					1000
			tall					f0
			wide					3
			proportionaltoparent		1
			nobuttons				1

			"Slider"
			{
				fgcolor_override			"MenuPanelBg"
			}
		}
	}

	"chatentry"					// can get out of partychat, positioned relative to screen
	{
		ControlName				TextEntry
		fieldName				"chatentry"
		xpos					0
		ypos					0
		zpos					1
		wide					166
		tall					14
		proportionaltoparent		1
		
		fgcolor_override			"FontNormal"
		bgcolor_override			"MenuPanelBg"
		font					"HudFontSmallest"

		paintBackgroundType		0

		pin_to_sibling			"chatlog"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
}
