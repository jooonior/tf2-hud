// Charge meter for cloak, scout's melees, banners, gas passer, heavy's food, jarate

"Resource/UI/HudItemEffectMeter.res"
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

	"ItemEffectMeter"				// charge meter
	{	
		ControlName					ContinuousProgressBar
		fieldName					"ItemEffectMeter"
		xpos							0
		ypos							0
		zpos							2
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1
		alpha							150

		fgcolor_override 			"255 255 255 255"			// can't change
		bgcolor_override			"0 0 0 127"
	}
	
	"ItemEffectMeterLabel"		// charge meter label (cloak, ball, jar, etc.)
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterLabel"
		xpos							0
		ypos							0
		zpos							6
		wide							f0
		tall							f0
		proportionaltoparent		1
		visible						1
		enabled						0			// can't change fgColor, disable it so it uses DisabledFgColor2

		labelText					"#TF_Ball"
		font							"Regular 8"
		textAlignment				center
		allCaps						1

		DisabledFgColor2_override 		"255 255 255 255"		// text color
		paintbackground					0
	}
}