To load changes of the DashboardDimmer main menu panel, you need to change mat_antialias after it has been loaded
([see what JarateKing says about this](https://github.com/JarateKing/TF2-Hud-Reference/blob/master/1-APPENDIX/StubbornElements.md#dashboard-dimmer)).  

`reload_dashboarddimmer` alias is used to do this.

[Mastercomfig](https://github.com/mastercomfig/mastercomfig) blocks the `mat_antialias` command (`alias mat_antialias ""`), which breaks the `incrementvar` method. The block can be bypassed with `toggle mat_antialias`, but then we can't set antialiasing back to it's original value automatically.

# valve.rc
Loaded by the game at launch, sets commands and executes other config files (including **autoexec.cfg**).  
Used to exec **hudconfig_before_autoexec.txt** and **hudconfig_after_autoexec.txt**.

# hudconfig_before_autoexec.txt

# hudconfig_after_autoexec.txt
If mastercomfig is present, this will call `exec user/antialias`, where the user can override mat_antialias value with `toggle mat_antialias X` (`X` being the desired value).
