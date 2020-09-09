"Resource/UI/HudMedicCharge.res"
{
	////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////// MEDIGUNS ///////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////

	"ChargeLabel"			// charge % text; hidden with vaccinator
	{
		ControlName				CExLabel
		fieldName				"ChargeLabel"
		xpos						cs-0.5+165
		ypos						r150
		zpos						2
		wide						150
		tall						40
		visible					1

		labelText				"#TF_UberchargeMinHUD"		// #TF_Ubercharge (UBERCHARGE: 10%) or #TF_UberchargeMinHUD (10%)
		textAlignment			center
		font						"Bold 57 Shadow 1"
		fgcolor					"AmmoNormalFg"
		paintbackground		0
	}

	"ChargeMeter"
	{	
		ControlName				ContinuousProgressBar
		fieldName				"ChargeMeter"
		xpos						cs-0.5
		ypos						r110
		wide						100
		tall						6
		visible					1

		fgColor_override		"ChargeMeterFg"
		bgColor_override		"ChargeMeterBg"
	}


	////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////// VACCINATOR //////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////

	"IndividualChargesLabel"		// vaccinaor charges count
	{
		ControlName				CExLabel
		fieldName				"IndividualChargesLabel"
		xpos						cs-0.5
		ypos						r110
		zpos						2
		wide						100
		tall						40
		visible					1

		labelText				"#TF_IndividualUberchargesMinHUD" // #TF_IndividualUbercharges #TF_IndividualUberchargesMinHUD
		textAlignment			center
		font						"Bold 22"
		fgcolor					"AmmoNormalFg"
		paintbackground		0
	}

	"ChargeMeter1"
	{	
		ControlName				ContinuousProgressBar
		fieldName				"ChargeMeter1"
		xpos						c-50
		ypos						r110
		wide						24
		tall						6
		visible					1

		fgColor_override		"ChargeMeterFg"
		bgColor_override		"ChargeMeterBg"
	}

	"ChargeMeter2"
	{	
		ControlName				ContinuousProgressBar
		fieldName				"ChargeMeter2"
		xpos						c-25
		ypos						r110
		wide						24
		tall						6
		visible					1

		fgColor_override		"ChargeMeterFg"
		bgColor_override		"ChargeMeterBg"
	}

	"ChargeMeter3"
	{	
		ControlName				ContinuousProgressBar
		fieldName				"ChargeMeter3"
		xpos						c0
		ypos						r110
		wide						24
		tall						6
		visible					1

		fgColor_override		"ChargeMeterFg"
		bgColor_override		"ChargeMeterBg"
	}

	"ChargeMeter4"
	{	
		ControlName				ContinuousProgressBar
		fieldName				"ChargeMeter4"
		xpos						c25
		ypos						r110
		wide						24
		tall						6
		visible					1

		fgColor_override		"ChargeMeterFg"
		bgColor_override		"ChargeMeterBg"
	}

	"ResistIconAnchor"		// force position
	{
		ControlName				EditablePanel
		fieldName				"ResistIconAnchor"
		xpos						c120
		ypos						r130-27
		wide						20
		tall						0
		visible					1
	}
	
	"ResistIcon"
	{
		ControlName				ImagePanel
		fieldName				"ResistIcon"
		xpos						0					// position hardcoded
		ypos						0
		zpos						10
		wide						60
		tall						50
		visible					1
		image						"../effects/defense_buff_bullet_blue"
		scaleImage				1
		pin_to_sibling			"ResistIconAnchor"
	}
	
}
