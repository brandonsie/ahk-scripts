RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme, 0
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, SystemUsesLightTheme, 0
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, EnableTransparency, 0
RegWrite, REG_DWORD, HKEY_CURRENT_USER, Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, EnableTransparency, 1

Process,close,explorer.exe
sleep, 5000 ;This sleep 5000 is to let you see what actually happens. Decrease it later
run, explorer.exe
; old: Open Personalization:Color settings [Ctrl + Alt + Shift + V] (to toggle dark mode / transparency)
;Run, %A_AHKPath% "%A_ScriptDir%\Scripts\colorMenu.ahk"