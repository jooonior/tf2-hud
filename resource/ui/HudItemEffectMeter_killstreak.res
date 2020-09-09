// Killstreak count

"Resource/UI/HudItemEffectMeter_Demoman.res"
{
	"HudItemEffectMeter"
	{
		fieldName			"HudItemEffectMeter"
		xpos					rs1
		ypos					rs1
		wide					0 //100
		tall					0 //30
		visible				1
	}

	
	"ItemEffectMeterCount"		// killsteak count
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterCount"
		xpos							33
		ypos							0
		zpos							2
		wide							40
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"%progresscount%"
		font							"Regular 24"
		textAlignment				west

		fgColor						"255 255 255 255"
		paintbackground			0
	}

	"ItemEffectMeterCountShadow"		// killsteak count
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterCountShadow"
		xpos							-1
		ypos							-1
		zpos							1
		wide							40
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"%progresscount%"
		font							"Regular 24"
		textAlignment				west
		textInsetX					-1
		textInsetY					-1

		fgColor						"0 0 0 255"
		paintbackground			0

		pin_to_sibling				"ItemEffectMeterCount"
	}

	"KillStreakIcon"
	{
		ControlName					CExLabel
		fieldName					"KillStreakIcon"
		xpos							0
		ypos							-2
		zpos							2
		wide							30
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"×"
		font							"Symbols 20"
		textAlignment				east

		fgColor_override			"255 255 255 255"
		paintbackground			0
	}

	"KillStreakIconShadow"
	{
		ControlName					CExLabel
		fieldName					"KillStreakIconShadow"
		xpos							-1
		ypos							-1
		zpos							1
		wide							30
		tall							f0
		proportionaltoparent		1
		visible						1

		labelText					"×"
		font							"Symbols 20"
		textAlignment				east
		textInsetX					1
		textInsetY					-1

		fgColor_override			"0 0 0 255"
		paintbackground			0

		pin_to_sibling				"KillStreakIcon"
	}


	"ItemEffectMeterLabel"
	{
		ControlName					CExLabel
		fieldName					"ItemEffectMeterLabel"
		xpos							25
		ypos							27
		zpos							2
		wide							41
		tall							15
		proportionaltoparent		1
		visible						0

		labelText					"#TF_KillStreak"
		font							"TFFontSmall"
		textAlignment				center
		paintbackground			0
	}

	"ItemEffectMeter"			// else error in console
	{
		ControlName					ContinuousProgressBar
		fieldName					"ItemEffectMeter"
		visible						0
	}
}
