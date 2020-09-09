"Resource/UI/MatchmakingGroupPanel.res"
{
	"MatchmakingGroupPanel"
	{
		fieldName					"ScrollableImageListEntry"
		xpos							0
		ypos							0
		wide							f0
		tall							22
		proportionaltoparent		1
	}

	"Background"
	{
		ControlName					ImagePanel
		fieldName					"Background"
		xpos							0
		ypos							0
		wide							f0
		tall							f0
		proportionaltoparent		1
		fillColor					"MenuPanelBg"
	}

	"Checkbutton"
	{
		ControlName					CExCheckButton
		fieldName					"Checkbutton"
		xpos							0
		ypos							0
		zpos							3
		wide							f0
		tall							f0
		proportionaltoparent		1

		labeltext					""
		font							"Size 16"
		AllCaps						1
		smallcheckimage			1
		button_activation_type	1		// check out!

		fgcolor						"FontNormal"

		sound_depressed			"UI/buttonclickrelease.wav"
	}	
}