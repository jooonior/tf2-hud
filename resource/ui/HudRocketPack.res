// Pyro's jetpack charge meter

"Resource/UI/HudRocketPack.res"
{
	"HudItemEffectMeter"			// container
	{
		fieldName			"HudItemEffectMeter"
		visible				1
		enabled				1
		xpos					cs-0.5
		ypos					r110
		wide					100
		tall					6
	}

	"ItemEffectMeter"
	{
		ControlName					ContinuousProgressBar
		fieldName					"ItemEffectMeter"
		xpos							0
		ypos							0
		zpos							2
		wide							p0.495
		tall							f0
		proportionaltoparent		1
		visible						1
		alpha							150

		fgcolor_override 			"255 255 255 255"			// can't change
		bgcolor_override			"0 0 0 127"
	}

	"ItemEffectMeter2"
	{
		ControlName					ContinuousProgressBar
		fieldName					"ItemEffectMeter2"
		xpos							rs1
		ypos							0
		zpos							2
		wide							p0.495
		tall							f0
		proportionaltoparent		1
		visible						1
		alpha							150

		fgcolor_override 			"255 255 255 255"			// can't change
		bgcolor_override			"0 0 0 127"
	}

	"LabelText"
	{
		ControlName					CExLabel
		fieldName					"LabelText"
		xpos							0
		ypos							0
		zpos							3
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"Jetpack"
		textAlignment				center
		font							"Regular 8"
		allCaps						1

		fgcolor						"255 255 255 255"
		paintbackground			0
	}

	"ItemEffectMeterLabel"			// disabled/enabled text; hidden bc I don't like it
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterLabel"
		xpos							0
		ypos							0
		zpos							3
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						0

		labelText					"#TF_RocketPack_Disabled"
		textAlignment				center
		font							"Regular 8"
		fgcolor						"255 255 255 255"
		paintbackground			0
	}
}
