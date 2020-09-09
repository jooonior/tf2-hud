"Resource/UI/StreamPanel.res"
{
	"LoadingPanel"
	{
		ControlName				EditablePanel
		fieldName				LoadingPanel
		xpos						0
		ypos						0
		zpos						10
		wide						294
		tall						52
		visible					1

		"PlaceholderImage"
		{
			ControlName				EditablePanel
			fieldName				"PlaceholderImage"
			xpos						2
			ypos						2
			wide						o1.78		// 16:9 ratio
			tall						48
			visible					1
			bgColor_override		"MenuPanelBg"


			"SpinnerImage"
			{
				ControlName					ImagePanel
				fieldName					"SpinnerImage"
				xpos							cs-0.5
				ypos							cs-0.5
				wide							50
				tall							50
				proportionaltoparent		1
				visible						1

				image							"animated/tf2_logo_hourglass"
				scaleImage					1
			}
		}

		"DescriptionLabel"
		{
			ControlName					CExLabel
			fieldName					"DescriptionLabel"
			xpos							94
			ypos							0
			wide							f94
			tall							f0
			proportionaltoparent		1
			visible						1

			font							"Regular 11"
			labelText					"#MMenu_Stream_Loading"
			textAlignment				west

			fgcolor						"MenuPanelFg"
			paintbackground			0
		}
	}


	"PreviewImage"			// thumbnail image
	{
		ControlName				ImagePanel
		fieldName				"PreviewImage"
		xpos						2
		ypos						2
		zpos						1
		wide						o1.78		// 16:9 ratio
		tall						48
		visible					1
		scaleImage				1

		autoResize				0
		skip_autoresize		1
	}

	"ViewerCountLabel"		// viewer count
	{
		ControlName			CExLabel
		fieldName			"ViewerCountLabel"
		xpos					0
		ypos					0
		zpos					2
		wide					o1.78
		tall					48
		visible				1
		
		font					"Regular 10"
		labelText			"%viewer_count%"
		textAlignment		south-east
		textInsetX			-66				// cut off "viewers" so only the number is visible
		
		fgcolor				"FontNormal"
		paintbackground	0

		pin_to_sibling		"PreviewImage"
	}

	"ViewerCountLabelShadow"		// viewer count
	{
		ControlName			CExLabel
		fieldName			"ViewerCountLabelShadow"
		xpos					0
		ypos					0
		zpos					2
		wide					o1.78
		tall					48
		visible				1
		
		font					"Regular 10"
		labelText			"%viewer_count%"
		textAlignment		south-east
		textInsetX			-67
		textInsetY			1
		
		fgcolor				"0 0 0 255"
		paintbackground	0

		pin_to_sibling		"ViewerCountLabel"
	}


	"DisplayNameLabel"			// streamer
	{
		ControlName			CExLabel
		fieldName			"DisplayNameLabel"
		xpos					2
		ypos					0
		wide					200
		tall					15
		visible				1
		
		font					"Regular 12"
		labelText			"%display_name%"
		textAlignment		west

		fgcolor				"FontNormal"
		paintbackground	0

		pin_to_sibling				"PreviewImage"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_TOPRIGHT
	}


	"TextDescriptionLabel"		// stream title
	{
		ControlName			CExLabel
		fieldName			"TextDescriptionLabel"
		xpos					0
		ypos					0
		wide					200
		tall					33
		visible				1
		
		font					"Regular 11"
		labelText			"%text_description%"
		textAlignment		north-west

		fgcolor				"FontNormal"
		paintbackground	0

		pin_to_sibling				"DisplayNameLabel"
		pin_corner_to_sibling	PIN_TOPLEFT
		pin_to_sibling_corner	PIN_BOTTOMLEFT
	}


	"Stream_URLButton"			// opens the stream in browser
	{
		ControlName	CExButton
		fieldName	"Stream_URLButton"
		xpos			0
		ypos			0
		zpos			100
		wide			294
		tall			52

		labelText	""
		visible		1
		enabled		0

		command		"stream"

		sound_depressed	"UI/buttonclick.wav"
		sound_released		"UI/buttonclickrelease.wav"

		border_armed		"TeamMenuBorder"
		paintbackground	0
	}
}