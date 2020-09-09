// Team selection

"Resource/UI/TeamMenu.res"
{
	"team"
	{
		ControlName				CTeamMenu
		fieldName				"team"
		xpos					0
		ypos					0
		wide					f0
		tall					480
	}

	"Filter"			// there's a dimmer element I can't find so this at least makes it look less ugly
	{
		ControlName				ImagePanel
		fieldName				"Filter"
		xpos					0
		ypos					0
		zpos					-5
		wide					f0
		tall					f0
		proportionaltoparent		1
		fillColor				"255 255 255 30"
	}

	// #region TEAM BUTTONS 

	"JoinBlue"
	{
		ControlName				CExImageButton
		fieldName				"JoinBlue"
		xpos					0
		ypos					0
		zpos					50
		wide					p0.5
		tall					480

		Command				"jointeam blue"
		labelText		  		""			
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		sound_armed				"UI/buttonrollover.wav"
		
		paintbackground			0
		
		image_drawcolor			"80 190 230 50"
		image_armedcolor			"80 190 230 100"
		
		"SubImage"
		{
			ControlName				ImagePanel
			fieldName				"SubImage"
			xpos					rs1
			ypos					cs-0.5+1
			wide					o0.4
			tall					160
			proportionaltoparent		1
			image					"replay/thumbnails/hud/arrow_left"
			scaleImage				1
		}				
	}

	"BlueCount"
	{
		ControlName	  			CExLabel
		fieldName		  		"BlueCount"
		xpos			  		0
		ypos			  		0
		zpos			  		11
		wide			  		p0.5
		tall			  		480
		mouseinputenabled			0

		labelText		  		"%bluecount%"
		font			  		"Regular 56"
		textAlignment	  		center

		fgcolor		  		"MenuPanelBg"
		paintbackground			0
	}

	"JoinRed"
	{
		ControlName				CExImageButton
		fieldName				"JoinRed"
		xpos					c0
		ypos					0
		zpos					50
		wide					p0.5
		tall					480

		Command				"jointeam red"
		labelText		  		""			
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		sound_armed				"UI/buttonrollover.wav"
		
		paintbackground			0

		image_drawcolor			"250 70 70 50"
		image_armedcolor			"250 70 70 100"
		
		"SubImage"
		{
			ControlName				ImagePanel
			fieldName				"SubImage"
			xpos					0
			ypos					cs-0.5
			wide					o0.4
			tall					160
			proportionaltoparent		1
			image					"replay/thumbnails/hud/arrow_right"
			scaleImage				1
		}				
	}

	"RedCount"
	{
		ControlName	  			CExLabel
		fieldName		  		"RedCount"
		xpos			  		c0
		ypos			  		0
		zpos			  		11
		wide			  		p0.5
		tall			  		480
		mouseinputenabled			0

		labelText		  		"%redcount%"
		font			  		"Regular 56"
		textAlignment	  		center

		fgcolor		  		"MenuPanelBg"
		paintbackground			0
	}

	"JoinRandom"
	{
		ControlName				CExImageButton
		fieldName				"JoinRandom"
		xpos					cs-0.5
		ypos					0
		zpos					60
		wide					160
		tall					30

		Command				"jointeam auto"

		labelText				"#TF_Random"
		textAlignment			center
		font					"Regular 16"
		fgcolor				"FontNormal"
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		sound_armed				"UI/buttonrollover.wav"
		
		paintbackground			0
		
		image_drawcolor			"255 255 255 50"
		image_armedcolor			"255 255 255 100"
		
		"SubImage"
		{
			ControlName				ImagePanel
			fieldName				"SubImage"
			xpos					0
			ypos					0
			wide					f0
			tall					f0
			proportionaltoparent		1
			image					"replay/thumbnails/hud/bgPanel_down"
			scaleImage				1
		}
	}

	"Spectate"
	{
		ControlName				CExImageButton
		fieldName				"Spectate"
		xpos					cs-0.5
		ypos					rs1
		zpos					60
		wide					160
		tall					30

		Command				"jointeam spectate"

		labelText				"#TF_Spectate"
		textAlignment			center
		font					"Regular 16"
		fgcolor				"FontNormal"
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		sound_armed				"UI/buttonrollover.wav"
		
		paintbackground			0
		
		image_drawcolor			"255 255 255 50"
		image_armedcolor			"255 255 255 100"
		
		"SubImage"
		{
			ControlName				ImagePanel
			fieldName				"SubImage"
			xpos					0
			ypos					0
			wide					f0
			tall					f0
			proportionaltoparent		1
			image					"replay/thumbnails/hud/bgPanel_up"
			scaleImage				1
		}				
	}

	// #endregion

	// #region DISABLED


	"teambutton0"		// join BLU
	{
		visible		  	0
		enabled		  	0
	}
	
	"teambutton1"		// join RED
	{
		visible		  	0
		enabled		  	0
	}
	
	"teambutton2"		// RANDOM
	{
		wide				0
		tall				0
		visible		  	0
		enabled		  	0
	}
	
	"teambutton3"		// SPECTATE
	{
		wide				0
		tall				0
		visible		  	0
		enabled		  	0
	}

	"TeamMenuSpectate"
	{
		wide				0
		tall				0
		visible			0
		enabled		  	0
	}

	"MapInfo"
	{
		visible			0
	}

	"CancelButton"
	{
		wide				0
		tall				0
		visible		  	0
		enabled		  	0
	}

	// #endregion
}

