// Hutsman uses both this and => resource\ui\HudDemomanCharge.res .

"Resource/UI/HudBowCharge.res"
{
	// Marks highlighting damage tresholds.
	// Size and position must be same as charge meter from HudDemomanCharge.res .
	// Uses borders to get a nice 1px thick line.
	"ChargeMeterMarks"
	{
		ControlName				EditablePanel
		fieldName				"ChargeMeterMarks"
		xpos					cs-0.5
		ypos					c14
		wide					26
		tall					4
		visible				1

		"DamageArea200"
		{
			ControlName				EditablePanel
			fieldName				"DamageArea200"
			xpos					0
			ypos					0
			zpos					1
			wide					p0.24
			tall					f0
			proportionaltoparent		1
			visible				1

			"Mark"
			{
				ControlName			ImagePanel
				fieldName			"Mark"
				xpos				rs1
				ypos				0
				wide				1
				tall				f0
				proportionaltoparent	1
				visible			1
				border			"ChargeMeterMarkBorder"

			}
		}

		"DamageArea300"
		{
			ControlName				EditablePanel
			fieldName				"DamageArea300"
			xpos					0
			ypos					0
			zpos					1
			wide					p0.72
			tall					f0
			proportionaltoparent		1
			visible				1

			"Mark"
			{
				ControlName			ImagePanel
				fieldName			"Mark"
				xpos				rs1
				ypos				0
				wide				1
				tall				f0
				proportionaltoparent	1
				visible			1
				border			"ChargeMeterMarkBorder"
			}
		}
	}

	

	"ChargeMeter"		// it uses meter from => resource\ui\HudDemomanCharge.res
	{
		visible			0
	}
}
