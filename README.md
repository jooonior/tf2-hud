# Uglier HUD but faster launch
Some features require reloading materials on launch. This takes about 5 seconds, depending on your system. If you wish to skip this add `prevent_reload` to your **autexec.cfg**.

# For mastercomfig users
This project overrides mastercomfig's antialiasing settings.  
If you wish to anable antialiasing, you have to do it manually by creating **cfg/user/antialias.cfg** file with `toggle mat_antialias X` in it (`X` being `2`, `4`, `8` or `16`; for MSAA 2x, 4x, 8x or 16x).  
This is not necessary with `prevent_reload`.
