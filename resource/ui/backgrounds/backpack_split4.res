// Four piece menu background
// Loaded as #base in => resource\ui\CharInfoPanel.res

"Resource/UI/CharInfoPanel.res"
{
	"LeftBarBG"
	{
		"TopLeft"
		{
			ControlName			ImagePanel
			fieldName			"TopLeft"
			xpos				0
			ypos				0
			wide				p0.5
			tall				240
			image				"replay\thumbnails\backgrounds\split4\top_left"
			scaleimage			1
		}

		"BottomLeft"
		{
			ControlName			ImagePanel
			fieldName			"BottomLeft"
			xpos				0
			ypos				c0
			wide				p0.5
			tall				240
			image				"replay\thumbnails\backgrounds\split4\bottom_left"
			scaleimage			1
		}
	}

	"RightBarBG"
	{
		ControlName				EditablePanel
		fieldName				"RightBarBG"
		xpos					rs1
		ypos					0
		wide					38
		tall					480
		mouseinputenabled			0
		
		"Anchor"			// workaround for image cropping
		{
			ControlName			EditablePanel
			fieldname			"Anchor"
			xpos				r0
			ypos				0
			wide				0
			tall				f0
			proportionaltoparent	1
		}

		"TopRight"
		{
			ControlName			ImagePanel
			fieldName			"TopRight"
			xpos				0
			ypos				0
			wide				p0.5
			tall				240
			image				replay\thumbnails\backgrounds\split4\top_right
			scaleimage			1

			pin_to_sibling 		"Anchor"
			pin_corner_to_sibling 	PIN_TOPRIGHT
			pin_to_sibling_corner 	PIN_TOPLEFT
		}

		"BottomRight"
		{
			ControlName			ImagePanel
			fieldName			"BottomRight"
			xpos				0
			ypos				0
			wide				p0.5
			tall				240
			image				"replay\thumbnails\backgrounds\split4\bottom_right"
			scaleimage			1

			pin_to_sibling 		"TopRight"
			pin_corner_to_sibling 	PIN_TOPRIGHT
			pin_to_sibling_corner 	PIN_BOTTOMRIGHT
		}
	}
}