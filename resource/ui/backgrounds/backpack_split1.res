// Single piece menu background
// Loaded as #base in => resource\ui\CharInfoPanel.res

"Resource/UI/CharInfoPanel.res"
{
	"LeftBarBG"
	{
		"Image"
		{
			ControlName				ImagePanel
			fieldName				"Image"
			xpos						0
			ypos						0
			wide						f0
			tall						480
			visible					1
			image						"replay\thumbnails\backgrounds\split1\full"
			scaleimage				1
		}
	}

	"RightBarBG"
	{
		"Anchor"						// workaround for image cropping
		{
			ControlName					EditablePanel
			fieldname					"Anchor"
			xpos							r0
			ypos							0
			wide							0
			tall							f0
			visible						1
			proportionaltoparent		1
		}

		"Image"
		{
			ControlName				ImagePanel
			fieldName				"Image"
			xpos						0
			ypos						0
			zpos						1
			wide						f0
			tall						480
			visible					1
			enabled					1
			image						"replay\thumbnails\backgrounds\split1\full"
			scaleimage				1

			pin_to_sibling 			"Anchor"
			pin_corner_to_sibling 	PIN_TOPRIGHT
			pin_to_sibling_corner 	PIN_TOPLEFT
		}
	}
}