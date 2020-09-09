#base "MatchMakingDashboardSidePanel.res"

"Resource/UI/MatchMakingDashboardComp.res"
{
	"CompStats"
	{
		fieldName			"CompStats"
		xpos					r0
		ypos					rs1-35	// touching ExpandableList
		zpos					1200
		wide					f58		// has to be smaller than ExpandableList
		tall					445 // 380
		visible				1
	}

	"Title"
	{
		labeltext					"#TF_Matchmaking_HeaderCompetitive"
	}
	
	"RankTooltipPanel"
	{
		"ControlName"					"ImagePanel"
		"fieldName"						"RankTooltipPanel"
		"xpos"							"r10"
		"ypos"							"20"
		"zpos"							"1000"
		"wide"							"8"
		"tall"							"8"
		"visible"						"1"
		"proportionaltoparent"			"1"
		"mouseinputenabled"				"1"
		"image"							"info"
		"scaleImage"					"1"	
		"alpha"							"255"
		"drawcolor"						"BlueLight"
	}

	"stats"
	{
		fieldName					"stats"
		xpos							0
		ypos							0
		zpos							100
		wide							314
		tall							f123
		proportionaltoparent		1
		visible						1

		pin_to_sibling 			"Title"
		pin_corner_to_sibling 	PIN_CENTER_TOP
		pin_to_sibling_corner 	PIN_CENTER_BOTTOM

		// => resource\ui\CompStats.res
	}

	"ToolTipButtonHack"
	{
		"ControlName"					"EditablePanel"
		"fieldName"						"ToolTipButtonHack"
		"xpos"							"cs-0.5"
		"ypos"							"rs1-8"
		"zpos"							"101"
		"wide"							"f20"
		"tall"							"20"
		"visible"						"0"
		"enabled"						"1"
		"mouseinputenabled"				"1"
		"eatmouseinput"					"0"	
		"showtooltipswhenmousedisabled"	"1"
		"proportionaltoparent" 			"1"
	}
}