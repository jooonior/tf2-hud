// I don't think this is used for anything but it gets rid of this console error:
// Failed to load resource/UI/HudItemEffectMeter_Action.res
// resource/UI/HudItemEffectMeter_Action.res missing ContinuousProgressBar field "ItemEffectMeter"

"Resource/UI/HudItemEffectMeter_Action.res"
{
	"ItemEffectMeter"			// else error in console
	{
		ControlName					ContinuousProgressBar
		fieldName					"ItemEffectMeter"
		visible						0
	}
}
