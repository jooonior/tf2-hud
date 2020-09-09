// Name tooltip when hovering a party member

"Resource/UI/MatchMakingTooltip.res"
{
	"TooltipPanel"
	{
		ControlName				EditablePanel
		fieldName				"TooltipPanel"
		xpos						0
		ypos						0
		zpos						30000
		wide						300
		tall						100
		visible					0
		mouseinputenabled		0

		paintbackground		1
		paintbackgroundtype	2
		bgcolor_override		"TooltipBg"
		
		"TipLabel"
		{
			ControlName			CExLabel
			fieldName			"TipLabel"
			xpos							10
			ypos							5
			zpos							2
			wide							140
			auto_wide_tocontents 	1
			tall							30
			auto_tall_tocontents		1
			visible						1

			labelText					"%tiptext%"
			textAlignment				center
			wrap							1
			
			fgcolor_override			"TooltipFg"
			paintbackground			0

			"if_small"
			{
				font				"Regular 12"
			}

			"if_medium"
			{
				font				"Regular 14"
			}

			"if_large"
			{
				font				"Regular 14"
			}
		}
	}	
}