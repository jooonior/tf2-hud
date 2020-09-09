"Resource/UI/NotificationToastControl.res"
{
	"NotificationToastControl"
	{
		ControlName					CNotificationToastControl
		fieldName					"NotificationToastControl"
		xpos							0
		ypos							-2
		zpos							1
		wide							f1
		tall							32
		proportionalToParent		1
		visible						1
		enabled						1
		
		paintbackground			1
		bgcolor_override			"MenuPanelBg"

		"if_high_priority"
		{
			
		}
	}

	
	// Notification body
	// 	=> resource\ui\econ\GenericNotificationToastMainMenu.res

	
	"DeleteButton"
	{
		ControlName					CExImageButton
		fieldName					"DeleteButton"
		xpos							rs1-6
		ypos							cs-0.5
		zpos							10
		wide							20
		tall							20
		proportionalToParent		1
		visible						0
		enabled						1

		labeltext					"W"
		font							"Symbols 20"
		textAlignment				center
		textInsetY					-1
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"

		Command						"delete"

		defaultFgColor_override 	"ButtonNormalFg"
		armedFgColor_override		"ButtonNormalFg"

		paintbackground			0
		paintborder					1
		border_default				"ButtonWarningBg radius=1"
		border_armed				"ButtonWarningFg radius=1"
	}


	"TriggerButton"
	{
		ControlName					CExImageButton
		fieldName					"TriggerButton"
		xpos							rs1-30
		ypos							CS-0.5
		zpos							10
		wide							20
		tall							20
		proportionalToParent		1
		visible						0
		enabled						1

		labeltext					"("
		font							"Symbols 20"
		textAlignment				center
		textInsetY					-1

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"

		Command						"trigger"

		defaultFgColor_override 	"ButtonNormalFg"
		armedFgColor_override		"ButtonNormalFg"

		paintbackground			0
		paintborder					1
		border_default				"ButtonConfirmBg radius=1"
		border_armed				"ButtonConfirmFg radius=1"

		"if_one_button"
		{
			xpos					rs1-6
		}
	}


	"AcceptButton"
	{
		ControlName					CExImageButton
		fieldName					"TriggerButton"
		xpos							rs1-30
		ypos							CS-0.5
		zpos							10
		wide							20
		tall							20
		proportionalToParent		1
		visible						0
		enabled						1

		labeltext					"("
		font							"Symbols 20"
		textAlignment				center
		textInsetY					-1

		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"

		Command						"trigger"

		defaultFgColor_override 	"ButtonNormalFg"
		armedFgColor_override		"ButtonNormalFg"

		paintbackground			0
		paintborder					1
		border_default				"ButtonConfirmBg radius=1"
		border_armed				"ButtonConfirmFg radius=1"

		"if_one_button"
		{
			xpos					rs1-6
		}
	}


	"DeclineButton"
	{
		ControlName					CExImageButton
		fieldName					"DeclineButton"
		xpos							rs1-6
		ypos							cs-0.5
		zpos							10
		wide							20
		tall							20
		proportionalToParent		1
		visible						0
		enabled						1

		labeltext					"W"
		font							"Symbols 20"
		textAlignment				center
		textInsetY					-1
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released				"UI/buttonclickrelease.wav"

		Command						"delete"

		defaultFgColor_override 	"ButtonNormalFg"
		armedFgColor_override		"ButtonNormalFg"

		paintbackground			0
		paintborder					1
		border_default				"ButtonWarningBg radius=1"
		border_armed				"ButtonWarningFg radius=1"
	}
}