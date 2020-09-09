"GameMenu"
{
	"BackgroundPanel"		// needs to be here for OnlyAtMenu to work
	{
		command 				"engine"
		OnlyAtMenu				1				// hide when map is loaded
	}

	"CallVote"
	{
		label				"_"
		command				"callvote"
		OnlyInGame			1
	}

	"MutePlayer"
	{
		label				">"
		command				"OpenPlayerListDialog"
		OnlyInGame			1
	}

	"ReportPlayer"
	{
		label				"!"
		command				"OpenReportPlayerDialog"
		OnlyInGame			1
	}
	
	"Disconnect"
	{
		label				"ú"
		command				"engine disconnect"
		OnlyInGame			1
	}
}