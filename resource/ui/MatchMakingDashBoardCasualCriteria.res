#base "MatchMakingDashboardSidePanel.res"

"Resource/UI/MatchMakingDashboardCasualCriteria.res"
{
	"CasualCriteria"
	{
		fieldName			"CasualCriteria"
		xpos					r0
		ypos					rs1-35	// touching ExpandableList
		zpos					1200
		wide					f58		// has to be smaller than ExpandableList
		tall					445
		visible				1
	}

	"Title"
	{
		labelText			"#TF_Matchmaking_HeaderCasual"
	}

	"criteria"
	{
		ControlName					CCasualCriteriaPanel
		fieldName					"criteria"
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
	}

	"ToolTipButtonHack"
	{
		"ControlName"							"EditablePanel"
		"fieldName"								"ToolTipButtonHack"
		"xpos"									"cs-0.5"
		"ypos"									"rs1-8"
		"zpos"									"101"
		"wide"									"0"
		"tall"									"20"
		"visible"								"0"
		"enabled"								"1"
		"mouseinputenabled"					"0"
		"eatmouseinput"						"0"		// check out!
		"showtooltipswhenmousedisabled"	"1"		// check out!
		"proportionaltoparent" 				"1"
	}

	
	"shade"
	{
		visible			0
	}

	"InnerGradient"
	{
		visible			0
	}
}