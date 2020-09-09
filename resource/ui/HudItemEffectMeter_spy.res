// Diamondback crit counter

"Resource/UI/HudItemEffectMeter_Spy.res"
{
	"HudItemEffectMeter"
	{
		fieldName			"HudItemEffectMeter"
		xpos					cs-1+164
		ypos					r120
		wide					100
		tall					50
		visible				1
		MeterFG				White
		MeterBG				Gray
	}

	"ItemEffectMeterCount"
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterCount"
		xpos							0
		ypos							0
		zpos							2
		wide							f5
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"%progresscount%"
		font							"Bold 24"
		textAlignment				east
		fgColor						"240 240 70 255"
		paintbackground			0
	}

	"ItemEffectMeterCountShadow"
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterCountShadow"
		xpos							-1
		ypos							-1
		zpos							1
		wide							f5
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"%progresscount%"
		font							"Bold 24"
		textAlignment				east
		fgColor						"0 0 0 255"
		paintbackground			0

		pin_to_sibling		"ItemEffectMeterCount"
	}
	
	"ItemEffectMeterLabel"
	{
		ControlName			CExLabel
		fieldName			"ItemEffectMeterLabel"
		xpos					25
		ypos					27
		zpos					2
		wide					41
		tall					15
		visible				0
		enabled				0

		labelText			"#TF_Ball"
		font					"Regular 12"
		textAlignment		center

		disabledFgColor1	"0 255 255 255"
		paintbackground	0
	}

	"ItemEffectMeter"			// else error in console
	{
		ControlName					ContinuousProgressBar
		fieldName					"ItemEffectMeter"
		visible						0
	}
}
