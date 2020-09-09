"Resource/UI/HudAmmoWeapons.res"
{
	"AmmoAnchor"
	{
		ControlName				EditablePanel
		fieldName				"AmmoAnchor"
		xpos						c150
		ypos						r150
		wide						0
		tall						40
		visible					1
	}
	
	"AmmoInClip"			// loaded ammo
	{
		ControlName				CExLabel
		fieldName				"AmmoInClip"
		xpos						0
		ypos						0
		zpos						5
		wide						150
		tall						40
		visible					1

		labelText				"%Ammo%"
		font						"Bold 57"
		fgcolor					"AmmoNormalFg"
		textAlignment			east
		paintbackground		0
		
		pin_to_sibling					"AmmoAnchor"
		pin_corner_to_sibling		PIN_TOPRIGHT
		pin_to_sibling_corner		PIN_TOPRIGHT
	}
	
	"AmmoInClipShadow"	// loaded ammo shadow
	{
		ControlName				CExLabel
		fieldName				"AmmoInClipShadow"
		xpos						-1
		ypos						-1
		zpos						4
		wide						150
		tall						40
		visible					1
		
		labelText				"%Ammo%"
		font						"Bold 57"
		textAlignment			east
		fgcolor					"AmmoNormalBg"
		paintbackground		0

		pin_to_sibling			AmmoInClip
	}
	

	"AmmoInReserve"		// remaining ammo
	{
		ControlName				CExLabel
		fieldName				"AmmoInReserve"
		xpos						3
		ypos						0
		zpos						5
		wide						100
		tall						40
		visible					0

		labelText				"%AmmoInReserve%"
		font						"Bold 20"
		textAlignment			north-west		
		fgcolor					"AmmoNormalFg"
		paintbackground		0
		
		pin_to_sibling					"AmmoAnchor"
		pin_corner_to_sibling		PIN_TOPLEFT
		pin_to_sibling_corner		PIN_TOPRIGHT
	}
	

	"AmmoInReserveShadow"		// remaining ammo shadow
	{
		ControlName				CExLabel
		fieldName				"AmmoInReserveShadow"
		xpos						-1
		ypos						-1
		zpos						5
		wide						100
		tall						40
		visible					0

		labelText				"%AmmoInReserve%"
		font						"Bold 20"
		textAlignment			north-west
		fgcolor					"AmmoNormalBg"
		paintbackground		0
		
		pin_to_sibling			"AmmoInReserve"
	}
	

	"AmmoNoClip"				// weapons that don't have reserve ammo (flamethrower, minigun, etc.)
	{
		ControlName				CExLabel
		fieldName				"AmmoNoClip"
		xpos						0
		ypos						0
		zpos						5
		wide						250
		tall						40
		visible					1

		labelText				"%Ammo%"
		font						"Bold 57"
		fgcolor					"AmmoNormalFg"
		textAlignment			center
		paintbackground		0
		
		pin_to_sibling					"AmmoAnchor"
		pin_corner_to_sibling		PIN_CENTER_TOP
		pin_to_sibling_corner		PIN_CENTER_TOP
	}
	
	"AmmoNoClipShadow"
	{
		ControlName				CExLabel
		fieldName				"AmmoNoClipShadow"
		xpos						-1
		ypos						-1
		zpos						4
		wide						250
		tall						40
		visible					0

		labelText				"%Ammo%"
		font						"Bold 57"
		textAlignment			center
		fgcolor					"AmmoNormalBg"
		paintbackground		0
		
		pin_to_sibling			"AmmoNoClip"
	}


	"HudWeaponLowAmmoImage"			// removing this breaks ammo animations ???
	{
		ControlName		ImagePanel
		fieldName		HudWeaponLowAmmoImage
		xpos				0
		ypos				0
		zpos				0
		wide				0
		tall				0
		visible			0
	}
}