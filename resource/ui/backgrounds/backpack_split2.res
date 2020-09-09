// Two piece menu background
// Loaded as #base in => resource\ui\CharInfoPanel.res

"Resource/UI/CharInfoPanel.res"
{
	"LeftBarBG"
	{
		"Left"
		{
			ControlName			ImagePanel
			fieldName			"TopLeft"
			xpos				0
			ypos				0
			wide				p0.5
			tall				480
			image				"replay\thumbnails\backgrounds\split2\left"
			scaleimage			1
		}
	}

	"RightBarBG"
	{
		"Anchor"						// workaround for image cropping
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
			tall				480
			image				"replay\thumbnails\backgrounds\split2\right"
			scaleimage			1

			pin_to_sibling 		"Anchor"
			pin_corner_to_sibling 	PIN_TOPRIGHT
			pin_to_sibling_corner 	PIN_TOPLEFT
		}
	}
}