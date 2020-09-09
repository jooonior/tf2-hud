"Resource/UI/HudDemomanPipes.res"
{

	////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////// SHIELD CHARGE /////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////


	"ChargeMeter"
	{	
		ControlName				ContinuousProgressBar
		fieldName				"ChargeMeter"
		xpos						cs-0.5
		ypos						r110
		zpos						2
		wide						100
		tall						6
		visible					1
		alpha						150

		fgcolor_override 		"255 255 255 255"			// can't change
		bgcolor_override		"0 0 0 127"
	}

	"ChargeLabel"
	{
		ControlName				CExLabel
		fieldName				"ChargeLabel"
		xpos						0
		ypos						0
		zpos						7
		wide						100
		tall						6
		visible					1

		labelText				"Shield" // #TF_Charge
		font						"Regular 8"
		textAlignment			center
		allCaps					1

		fgColor_override 		"255 255 255 255"		// text color
		paintbackground		0

		pin_to_sibling				"ChargeMeter"
		pin_corner_to_sibling	PIN_CENTER_TOP
		pin_to_sibling_corner	PIN_CENTER_TOP
	}



	////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////// STICKIES COUNT ////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////


	"StickesAnchor"		// move stickies count
	{
		ControlName				EditablePanel
		fieldName				"StickesAnchor"
		xpos						cs-0.5
		ypos						c74
		wide						20
		tall						0
		visible					1
	}
	

	"PipesPresentPanel"		// visible when one or more sticky
	{
		ControlName				EditablePanel
		fieldName				"PipesPresentPanel"
		xpos						0
		ypos						0
		zpos						1
		wide						100
		tall						50
		visible					1

		pin_to_sibling				"StickesAnchor"
		pin_corner_to_sibling	PIN_CENTER_TOP
		pin_to_sibling_corner	PIN_CENTER_BOTTOM
		
		"PipeIcon"					// visual
		{
			visible						0
		}

		"NumPipesLabel"			// sticky count
		{
			ControlName					CExLabel
			fieldName					"NumPipesLabel"
			xpos							0
			ypos							0
			zpos							3
			wide							f0
			tall							f0
			proportionaltoparent		1
			visible						1
			enabled						1

			labelText					"%activepipes%"
			font							"Bold 22"
			textAlignment				center

			fgcolor						"HpNormalFg"
			paintbackground			0
		}

		"NumPipesLabelDropShadow"		// sticky count shadow
		{
			ControlName					CExLabel
			fieldName					"NumPipesLabelDropShadow"
			xpos							-1
			ypos							-1
			zpos							2
			wide							f0
			tall							f0
			proportionaltoparent		1
			visible						1
			enabled						1

			labelText					"%activepipes%"
			font							"Bold 22"
			textAlignment				center

			fgcolor						"HpNormalBg"
			paintbackground			0

			pin_to_sibling				"NumPipesLabel"
		}
	}


	"NoPipesPresentPanel"		// visible when no stickies
	{
		ControlName			EditablePanel
		fieldName			"NoPipesPresentPanel"
		xpos					0
		ypos					0
		zpos					1
		wide					100
		tall					50
		visible				1

		pin_to_sibling				"StickesAnchor"
		pin_corner_to_sibling	PIN_CENTER_TOP
		pin_to_sibling_corner	PIN_CENTER_BOTTOM
		
		"PipeIcon"
		{
			visible				0
		}

		"NumPipesLabel"
		{
			ControlName					CExLabel
			fieldName					"NumPipesLabel"
			xpos							0
			ypos							0
			zpos							3
			wide							f0
			tall							f0
			proportionaltoparent		1
			visible						1
			enabled						1

			labelText					"%activepipes%"
			font							"Bold 22"
			textAlignment				center

			fgcolor						"HpNormalFg"
			paintbackground			0
		}

		"NumPipesLabelDropShadow"
		{
			ControlName					CExLabel
			fieldName					"NumPipesLabelDropShadow"
			xpos							-1
			ypos							-1
			zpos							2
			wide							f0
			tall							f0
			proportionaltoparent		1
			visible						1
			enabled						1

			labelText					"%activepipes%"
			font							"Bold 22"
			textAlignment				center

			fgcolor						"HpNormalBg"
			paintbackground			0

			pin_to_sibling				"NumPipesLabel"
		}
	}
}
