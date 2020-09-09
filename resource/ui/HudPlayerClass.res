"Resource/UI/HudPlayerClass.res"
{
	"HudPlayerClass"
	{
		ControlName			EditablePanel
		fieldName			"HudPlayerClass"
		xpos					0
		ypos					0
		zpos					1
		wide					f0
		tall					480
		visible				1
	}
	
	
	// Static image when using cl_hud_playerclass_use_playermodel 0
	// Hidden because it's kinda useless
	
	"PlayerStatusClassImage"
	{
		ControlName			CTFClassImage
		fieldName			"PlayerStatusClassImage"
		xpos					0
		ypos					0
		wide					0
		tall					0
		visible				0

		image					"../hud/class_scoutred"
		scaleImage			1
	}


	// 3D play model (cl_hud_playerclass_use_playermodel 1)
	
	"classmodelpanel"
	{
		ControlName			CTFPlayerModelPanel
		fieldName			"classmodelpanel"
		xpos					0
		ypos					rs1
		zpos					2
		wide					200
		tall					200
		visible				1
		
		render_texture			0
		fov						27
		allow_rot				1
		disable_speak_event	1
		
		"model"
		{
			force_pos			1
			modelname			""
			spotlight			1

			angles_x				0
			angles_y				270
			angles_z				0

			origin_x				200
			origin_y				28
			origin_z				-60

			frame_origin_x		0
			frame_origin_y		0
			frame_origin_z		0
		}

		"customclassdata"
		{
			"undefined"
			{
			}

			"Scout"
			{
				fov				27

				angles_x			0
				angles_y			270
				angles_z			-10

				origin_x			320 // 230 320
				origin_y			45 //  36 45
				origin_z			-55 // -76 -55
			}

			"Sniper"		// can't see melee
			{
				fov				32

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			296 // 220
				origin_y			50 // 34
				origin_z			-59 // -80
			}

			"Soldier"
			{
				fov				27

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			340 // 270
				origin_y			53 // 44
				origin_z			-57 // -74
			}
			
			"Demoman"
			{
				fov				28

				angles_x			0
				angles_y			270
				angles_z			0
				
				origin_x			340
				origin_y			50
				origin_z			-58
			}

			"Medic"
			{
				fov				22

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			434
				origin_y			47	
				origin_z			-59
			}

			"Heavy"
			{
				fov				20

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			480
				origin_y			50
				origin_z			-59
			}

			"Pyro"
			{
				fov				23

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			410
				origin_y			48
				origin_z			-58
			}

			"Spy"
			{
				fov				23

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			410
				origin_y			48
				origin_z			-58
			}

			"Engineer"
			{
				fov				23

				angles_x			0
				angles_y			270
				angles_z			0

				origin_x			410
				origin_y			50
				origin_z			-58
			}
		}
	}



	"PlayerStatusSpyImage"			// cl_hud_playerclass_use_playermodel 0
	{
		ControlName			CTFImagePanel
		fieldName			"PlayerStatusSpyImage"
		xpos					0
		ypos					0
		wide					0
		tall					0
		visible				0
	}

	"PlayerStatusSpyOutlineImage"		// disguise progress notification
	{
		ControlName			CTFImagePanel
		fieldName			"PlayerStatusSpyOutlineImage"
		xpos					cs-0.5
		ypos					c80
		wide					40
		tall					5
		visible				0
		alpha					0
	}


	// DISABLED
	
	"PlayerStatusClassImageBG"			// game crashes without this
	{
		ControlName			CTFImagePanel
		fieldName			"PlayerStatusClassImageBG"
		xpos					9999
	}

	"classmodelpanelBG"
	{
		ControlName			CTFImagePanel
		fieldName			"classmodelpanelBG"
		xpos					9999
	}
}