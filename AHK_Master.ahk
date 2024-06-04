#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%

; Change Icon https://autohotkey.com/board/topic/121982-how-to-give-your-scripts-unique-icons-in-the-windows-tray/
I_Icon := "icons/AHK_master.ico"
Menu, Tray, Icon, %I_Icon%

; order of these Includes is a little finnicky. not sure why.
; winresize - rekey - ... ahksettings. then everything seems to run properly.

#Include %A_ScriptDir%\Scripts\winresize.ahk 
	; winresize: expand/contract/relocate active window by 100px
#Include %A_ScriptDir%\Scripts\rekey.ahk
	; Capslock -> Control
	; Ctrl + Alt + Capslock -> Capslock
	; Ctrl + [ -> Escape
	; Ctrl / -> \
	; "Ctrl Shift <" -> {
	; "Ctrl Shift >" -> }
	; Ctrl + Alt + Shift + M : Magrittr pipe
#Include %A_ScriptDir%\Scripts\ahk_settings.ahk 
	; Ctrl+Alt+Shift+R/S to reload/suspend AHK_Master 
#Include %A_ScriptDir%\Scripts\window_swap.ahk 
	; Ctrl + Alt + Shift + Z: Swap all windows from one monitor to another 
#Include %A_ScriptDir%\Scripts\create_new_txt.ahk 
	; press q in explorer to create new text file. now prompts user to enter filename
#Include %A_ScriptDir%\Scripts\window_manipulation.ahk 
	; Shift + Win + Up: maximize a window across all displays
	; Win + Up/Dn maximize/min (restore functionality after enabling fancyzones)
	; Ctrl + ALt + Shift + Space : always on top
#Include %A_ScriptDir%\Scripts\explorer_shortcuts.ahk
	; Press ~ to move up a folder in Explorer
	; Ctrl + Alt + Shift + ...
		; E: open desktop
		; J: open downloads
		; D: open dropbox (personal)
		; H: open dropbox (harvard)
		; N: open nextcloud
		; C: open c drive
	; Restart windows explorer: Ctrl+Alt+Win+E
#Include %A_ScriptDir%\Scripts\wallpaper.ahk
	; Ctrl + Alt + Shift + ...
		; W: download new satellite wallpaper
		; Q: refresh/reload existing wallpaper
#Include %A_ScriptDir%\Scripts\win10_mods.ahk
	; Ctrl + Alt + Shift + ...
		; B: open bluetooth Menu
		; L: lock keypad
		; V: registry -- re-enable dark mode and restart windows explorer
		; T: toggle alt tab behavior (current vs. all virutal desktops)
		; I: rainmeter layout lab_left
		; O: rainmeter layout lab right
	; Ctrl + Win + Alt + 
		; D/L: older. toggle dark or light mode registry
	; Win + Del : empty recycle bin (prompt first to confirm)
#Include %A_ScriptDir%\Scripts\git.ahk
	; Ctrl + Win + Alt + S: run auto_git.ps1
	; 	X : run same but window is hidden








/*
------------------------------
Source Scripts
- keep this section at the top
------------------------------

[[Notes]]
- ^ Ctrl     + Shift     ! Alt     # Windows     SPACE space
- include https://www.autohotkey.com/docs/commands/_Include.htm
- can include all files in a folder https://www.autohotkey.com/board/topic/78798-include-all-files-in-a-folder/
- need a line break at the end after the last 'Return'

[[ToDo]]
- [ ] debug finnicky order for first few includes. isolate them. put some test msgbox hotkey before or after. see if there is reproducible problem

[[Reference]]
https://www.maketecheasier.com/favorite-autohotkey-scripts/



*/

