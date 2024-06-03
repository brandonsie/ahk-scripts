#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%


I_Icon := "icons/AHK_master.ico"
Menu, Tray, Icon, %I_Icon%

/*
------------------------------
Source Scripts
- keep this secction at the top
- breaks icon,, but that's it
------------------------------
include https://www.autohotkey.com/docs/commands/_Include.htm


forum to loop through include https://www.autohotkey.com/board/topic/78798-include-all-files-in-a-folder/
window_swap: swap all windows from one monitor to another. ctrl+alt+shift+z
winresize: expand/contract/relocate active window by 100px
*/

#include %A_ScriptDir%\Scripts\ahk_settings.ahk ; Ctrl+Alt+Shift+R/S to reload/suspend AHK_Master 
#include %A_ScriptDir%\Scripts\winresize.ahk 
#include %A_ScriptDir%\Scripts\window_swap.ahk 
#include %A_ScriptDir%\Scripts\create_new_txt.ahk 
	; press q in explorer to create new text file. now prompts user to enter filename
#include %A_ScriptDir%\Scripts\window_manipulation.ahk 
	; Shift + Win + Up: maximize a window across all displays
	; Win + Up/Dn maximize/min (restore functionality after enabling fancyzones)
	; Ctrl + ALt + Shift + Space : always on top
#include %A_ScriptDir%\Scripts\rekey.ahk
	; Capslock -> Control
	; Ctrl + Alt + Capslock -> Capslock
	; Ctrl + [ -> Escape
	; Ctrl / -> \
	; "Ctrl Shift <" -> {
	; "Ctrl Shift >" -> }
	; Ctrl + Alt + Shift + M : Magrittr pipe
#include %A_ScriptDir%\Scripts\explorer_shortcuts.ahk
	; Press ~ to move up a folder in Explorer
	; Ctrl + Alt + Shift + ...
		; E: open desktop
		; J: open downloads
		; D: open dropbox (personal)
		; H: open dropbox (harvard)
		; N: open nextcloud
		; C: open c drive
	; Restart windows explorer: Ctrl+Alt+Win+E
#include %A_ScriptDir%\Scripts\wallpaper.ahk
	; Ctrl + Alt + Shift + ...
		; W: download new satellite wallpaper
		; Q: refresh/reload existing wallpaper
#include %A_ScriptDir%\Scripts\win10_mods.ahk
	; Ctrl + Alt + Shift + ...
		; B: open bluetooth Menu
		; L: lock keypad
		; V: registry -- re-enable dark mode and restart windows explorer
		; T: toggle alt tab behavior (current vs. all virutal desktops)
		; I: rainmeter layout lab_left
		; O: rainmeter layout lab right
	; Ctrl + Win + Alt + 
		; D/L: older. toggle dark or light mode registry
#include %A_ScriptDir%\Scripts\git.ahk
	; Ctrl + Win + Alt + S: run auto_git.ps1
	; 	X : run same but window is hidden

;#include .\Scripts\winresize.ahk 
;#include .\Scripts\window_swap.ahk 


/*
------------------------------
Resources
https://www.maketecheasier.com/favorite-autohotkey-scripts/
Change Icon https://autohotkey.com/board/topic/121982-how-to-give-your-scripts-unique-icons-in-the-windows-tray/
Reload https://autohotkey.com/board/topic/43779-reload-this-script-shortcut-solved/

------------------------------
*/
;; Empty trash
;#Del::FileRecycleEmpty ; win + del
;Traytip, Recycle Bin, Recycle Bin Emptied., 0
;return
;Todo - make this multistep hotkey for confirmation step.


/* 
------------------------------
Notes
------------------------------
^ ctrl
+ shift
! alt
# win
SPACE space


*/








