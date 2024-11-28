; Download New Satellite Wallpaper [Ctrl + Alt + Shift + W]
^!+w::Run "C:\Users\Brandon\Nextcloud\3_Programming\GOES16_PowerShell_Wallpaper\Linux\win_wrapper.bat"
;^!+w::Run % "C:\Users\" . A_UserName . "\Nextcloud\3_Programming\GOES16_PowerShell_Wallpaper\Linux\dl_three.sh"
;^!+w::Run % "C:\Users\" . A_UserName . "\Nextcloud\3_Programming\GOES16_PowerShell_Wallpaper\Run_Manually\runwp_tri.bat"
return

; Refresh wallpaper [ctrl + alt + shift +q]
^!+q::Run % "C:\Users\" . A_UserName . "\Nextcloud\3_Programming\GOES16_PowerShell_Wallpaper\Run_Manually\refreshwp.bat"
return
