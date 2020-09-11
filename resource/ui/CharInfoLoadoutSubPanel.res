"Resource/UI/CharInfoLoadoutSubPanel.res"
{
	// can't change pos, width, height
	"CharInfoLoadoutSubPanel"
	{
		ControlName				Frame
		fieldName				"CharInfoLoadoutSubPanel"
		visible				1
		enabled				1
		settitlebarvisible		0	// ?
	
		paintbackground			0

		itemcountcolor			"OrangeLight"		// check out!
		itemcountcolor_noitems		"117 107 94 255"
	}

	// #region CLASS BUTTONS 

	"ScoutButton"			// other classes pinned to this
	{
		ControlName				CExButton
		fieldName				"ScoutButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"a"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-2		// tune icon position

		Command				"loadout scout"
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground 			0
	}
	
	"SoldierButton"
	{
		ControlName				CExButton
		fieldName				"SoldierButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"b"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10
		
		Command				"loadout soldier"
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground 			0
		
		pin_to_sibling 			"ScoutButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"PyroButton"
	{
		ControlName				CExButton
		fieldName				"PyroButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"c"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10

		Command				"loadout pyro"
		
		sound_depressed			"UI/buttonclick.wav"
		sound_released			"UI/buttonclickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground 			0
		
		pin_to_sibling 			"SoldierButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"DemomanButton"
	{
		ControlName				CExButton
		fieldName				"DemomanButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"d"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10
		
		Command				"loadout demoman"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released				"UI/ButtonClickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"
		
		paintbackground 			0

		pin_to_sibling 			"PyroButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"HeavyButton"
	{
		ControlName				CExButton
		fieldName				"HeavyButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"e"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10
		
		Command						"loadout heavy"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground 			0

		pin_to_sibling 			"DemomanButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"EngineerButton"
	{
		ControlName				CExButton
		fieldName				"EngineerButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1
		
		labelText				"f"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10
		
		Command				"loadout engineer"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground 			0

		pin_to_sibling 			"HeavyButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"MedicButton"
	{
		ControlName				CExButton
		fieldName				"MedicButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1
		
		labelText				"g"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10
		
		Command				"loadout medic"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"
		
		paintbackground 			0
		
		pin_to_sibling 			"EngineerButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"SniperButton"
	{
		ControlName				CExButton
		fieldName				"SniperButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"h"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10
		
		Command						"loadout sniper"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released				"UI/ButtonClickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"
		
		paintbackground 			0
		
		pin_to_sibling 			"MedicButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"SpyButton"
	{
		ControlName				CExButton
		fieldName				"SpyButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		labelText				"i"
		font					"Class Symbols 32"
		textAlignment			center
		textinsety				-10

		Command				"loadout spy"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground 			0
		
		pin_to_sibling 			"SniperButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}

	// #endregion

	// #region CHARINFO BUTTONS 

	"BackpackButton"
	{
		ControlName				CExButton
		fieldName				"BackpackButton"
		xpos					rs1
		ypos					0
		zpos					10
		wide					42
		tall					o1
		
		font					"Symbols 28"
		labelText				"F"
		textAlignment			center

		Command				"backpack"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
		
		paintbackground			0
		
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"
	}
	
	"CraftingButton"
	{
		ControlName				CExButton
		fieldName				"CraftingButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1
		
		font					"Symbols 27"
		labelText				"t"
		textAlignment			center

		Command				"crafting"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
				
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground			0
		
		pin_to_sibling 			"BackpackButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"ArmoryButton"
	{
		ControlName				CExButton
		fieldName				"ArmoryButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1
		
		font					"Symbols 27"
		labelText				"N"
		textAlignment			center
		
		Command				"armory"
		
		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
				
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground			0

		pin_to_sibling 			"CraftingButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"PaintsButton"
	{
		ControlName				CExButton
		fieldName				"PaintsButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1

		font					"Symbols 27"
		labelText				"f"
		textAlignment			center

		Command				"paintkit_preview"

		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
				
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground			0

		pin_to_sibling 			"ArmoryButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}
	
	"TradeButton"
	{
		ControlName				CExButton
		fieldName				"TradeButton"
		xpos					0
		ypos					0
		zpos					10
		wide					42
		tall					o1
				
		font					"Symbols 26"
		labelText				"Z"
		textAlignment			center

		Command				"trading"

		sound_depressed			"UI/ButtonClick.wav"
		sound_released			"UI/ButtonClickrelease.wav"
				
		defaultFgColor_override		"ButtonNormalFg"
		armedFgColor_override		"ButtonHoverFg"

		paintbackground			0

		pin_to_sibling 			"PaintsButton"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_BOTTOMLEFT
	}

	// #endregion

	// #region CHARINFO PANELS 

	"class_loadout_panel"
	{
		ControlName				CClassLoadoutPanel
		fieldName				"class_loadout_panel"
		xpos					0
		ypos					0
		zpos					5
		wide					f0
		tall					411		// parent's height
		//proportionaltoparent	1	// requires reload on launch
		visible				0

		// => resource\ui\ClassLoadoutPanel.res
	}

	"backpack_panel"
	{
		ControlName				CBackpackPanel
		fieldName				"backpack_panel"
		xpos					0
		ypos					0
		zpos					5
		visible				0

		// => resource\ui\econ\BackpackPanel.res
	}

	// crafting_panel => resource\ui\CraftingPanel.res

	"armory_panel"
	{
		ControlName				CArmoryPanel
		fieldName				"armory_panel"
		xpos					0
		ypos					0
		zpos					5
		wide					f0
		tall					411
		visible				0

		// => resource\ui\CharInfoArmorySubPanel.res
	}

	"InspectionPanel"		// warpaints, drawn over other charinfo panels
	{
		fieldName				"InspectionPanel"
		xpos					cs-0.5
		ypos					0
		zpos					6			// on top of other panels
		wide					f70
		tall					411
		visible				0
		paintbackground			0

		// => resource\ui\econ\InspectionPanel.res
	}

	// trading panel => resource\ui\econ\TradingStartDialog.res

	// #endregion
	
	// #region KEYBOARD SHORTCUTS 

	"ScoutShortcut"
	{
		ControlName				CExButton
		fieldName				"ScoutShortcut"
		wide					0
		labelText				"&1"
		Command				"loadout scout"
	}

	"SoldierShortcut"
	{
		ControlName				CExButton
		fieldName				"SoldierShortcut"
		wide					0
		labelText				"&2"
		Command				"loadout soldier"
	}
	
	"PyroShortcut"
	{
		ControlName				CExButton
		fieldName				"PyroShortcut"
		wide					0
		labelText				"&3"
		Command				"loadout pyro"
	}

	"DemomanShortcut"
	{
		ControlName				CExButton
		fieldName				"DemomanShortcut"
		wide					0
		labelText				"&4"
		Command				"loadout demoman"
	}

	"HeavyShortcut"
	{
		ControlName				CExButton
		fieldName				"HeavyShortcut"
		wide					0
		labelText				"&5"
		Command				"loadout heavy"
	}

	"EngineerShortcut"
	{
		ControlName				CExButton
		fieldName				"EngineerShortcut"
		wide					0
		labelText				"&6"
		Command				"loadout engineer"
	}

	"MedicShortcut"
	{
		ControlName				CExButton
		fieldName				"MedicShortcut"
		wide					0
		labelText				"&7"
		Command				"loadout medic"
	}

	"SniperShortcut"
	{
		ControlName				CExButton
		fieldName				"SniperShortcut"
		wide					0
		labelText				"&8"
		Command				"loadout sniper"
	}

	"SpyShortcut"
	{
		ControlName				CExButton
		fieldName				"SpyShortcut"
		wide					0
		labelText				"&9"
		Command				"loadout spy"
	}

	"BackpackShortcut"
	{
		ControlName				CExButton
		fieldName				"BackpackShortcut"
		wide					0
		labelText				"&0"
		Command				"backpack"
	}

	// #endregion
	
	// #region DISABLED 

	"scout"
	{
		visible			0
	}
	"soldier"
	{
		visible			0
	}
	"pyro"
	{
		visible			0
	}
	"demoman"
	{
		visible			0
	}	
	"heavyweapons"
	{
		visible			0
	}
	"engineer"
	{
		visible			0
	}
	"medic"
	{
		visible			0
	}
	"sniper"
	{
		visible			0
	}
	"spy"
	{
		visible			0
	}
	"ShowBackpackButton"
	{
		ControlName			ImageButton
		fieldName			"ShowBackpackButton"
		xpos				9999
	}
	"ShowBackpackLabel"
	{
		ControlName			CExLabel
		fieldName			"ShowBackpackLabel"
		xpos				9999
	}
	"ShowCraftingLabel"
	{
		ControlName			CExLabel
		fieldName			"ShowCraftingLabel"
		xpos				9999
	}
	"ShowArmoryButton"
	{
		ControlName			ImageButton
		fieldName			"ShowArmoryButton"
		xpos				9999
	}	
	"ShowArmoryLabel"
	{
		ControlName			CExLabel
		fieldName			"ShowArmoryLabel"
		xpos				9999
	}
	"ShowCraftingButton"
	{
		ControlName			ImageButton
		fieldName			"ShowCraftingButton"
		xpos				9999
	}
	"ShowTradeButton"
	{
		ControlName			ImageButton
		fieldName			"ShowTradeButton"
		xpos				9999
	}
	"ShowTradeLabel"
	{
		ControlName			CExLabel
		fieldName			"ShowTradeLabel"
		xpos				9999
	}
	"ShowPaintkitsButton"
	{
		ControlName			ImageButton
		fieldName			"ShowPaintkitsButton"
		xpos				9999
	}
	"ShowPaintkitsLabel"
	{
		ControlName			CExLabel
		fieldName			"ShowPaintkitsLabel"
		xpos				9999
	}
	"ClassLabel"
	{
		ControlName			Label
		fieldName			"ClassLabel"
		visible			0
	}
	"ItemsLabel"
	{
		ControlName			CExLabel
		fieldName			"ItemsLabel"
		visible			0
	}
	"NoSteamLabel"
	{
		ControlName			CExLabel
		fieldName			"NoSteamLabel"
		visible			0
	}
	"NoGCLabel"
	{
		ControlName			CExLabel
		fieldName			"NoGCLabel"
		visible			0
	}
	"LoadoutChangesLabel"
	{
		ControlName			CExLabel
		fieldName			"LoadoutChangesLabel"
		visible			0
	}

	// #endregion
}
