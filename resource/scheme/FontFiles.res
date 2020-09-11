//////////////////////////////////////////////////////////////////
//////////////////////// CUSTOM FONT FILES ///////////////////////
//////////////////////////////////////////////////////////////////

// Specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
// Range specificies the characters to be used from the custom font before falling back to a default font
// Characters in the range not specificed in the font will appear empty
// For TF2: Any special character will need to be added to our font file

"Scheme"
{
	"CustomFontFiles"
	{
		//////////////////////////////////////////////////////////////////
		////////////////////////////// STOCK /////////////////////////////
		//////////////////////////////////////////////////////////////////

		"1"		"resource/tf.ttf"

		"2"		"resource/tfd.ttf"

		"3"
		{
			font		"resource/TF2.ttf"
			name		"TF2"
			
			"russian"
			{
				range		"0x0000 0xFFFF"
			}

			"polish"
			{
				range		"0x0000 0xFFFF"
			}
		}

		"4" 
		{
			font		"resource/TF2Secondary.ttf"
			name		"TF2 Secondary"

			"russian"
			{
				range		"0x0000 0xFFFF"
			}

			"polish"
			{
				range		"0x0000 0xFFFF"
			}
		}

		"5" 
		{
			font		"resource/TF2Professor.ttf"
			name		"TF2 Professor"

			"russian"
			{
				range		"0x0000 0x00FF"
			}

			"polish"
			{
				range		"0x0000 0x00FF"
			}
		}

		"6" 
		{
			font		"resource/TF2Build.ttf"
			name		"TF2 Build"

			"russian"
			{
				range		"0x0000 0xFFFF"
			}

			"polish"
			{
				range		"0x0000 0xFFFF"
			}

			"turkish"
			{
				range		"0x0000 0xFFFF"
			}
		}

		"7"
		{
			"font"	"resource/ocra.ttf"
			name		"ocra"

			"turkish"
			{
				range		"0x0000 0x007E"
			}

			"swedish"
			{
				range		"0x0000 0x007E"
			}

			"spanish"
			{
				range		"0x0000 0x007E"
			}

			"romanian"
			{
				range		"0x0000 0x007E"
			}

			"polish"
			{
				range		"0x0000 0x007E"
			}

			"norwegian"
			{
				range		"0x0000 0x007E"
			}

			"danish"
			{
				range		"0x0000 0x007E"
			}

			"hungarian"
			{
				range		"0x0000 0x007E"
			}

			"german"
			{
				range		"0x0000 0x007E"
			}

			"french"
			{
				range		"0x0000 0x007E"
			}

			"finnish"
			{
				range		"0x0000 0x007E"
			}

			"czech"
			{
				range		"0x0000 0x007E"
			}

			"bulgarian"
			{
				range		"0x0000 0x007E"
			}

			"russian"
			{
				range		"0x0000 0x007E"
			}
		}


		//////////////////////////////////////////////////////////////////
		///////////////////////////// CUSTOM /////////////////////////////
		//////////////////////////////////////////////////////////////////

		"8"		// all charactes blank, used as last resolt hide text solution
		{
			font		"resource/scheme/fonts/Blank.otf"
			name		"Blank"
		}

		"9"		// regular font; most text
		{
			font		"resource/scheme/fonts/Renogare Regular.otf"
			name		"Renogare"
		}

		"10"		// bold font; hp, ammo
		{
			font		"resource/scheme/fonts/Novecento Wide Bold.otf"
			name		"Novecento Wide Bold"
		}

		"11"		// thin font; small text
		{
			font		"resource/scheme/fonts/Oswald Regular.ttf"
			name		"Oswald"
		}

		"12"		// symbols
		{
			font		"resource/scheme/fonts/Hud Icons global.otf"
			name		"HUD Icons"
		}
		
		"13"		// class icons
		{
			font		"resource/scheme/fonts/TF2 Class Icons.otf"
			name		"TF2 Class Icons"
		}
	}
}