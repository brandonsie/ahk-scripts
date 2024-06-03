
; Open W10 Bluetoooth Menu [Ctrl + Alt  + Shift + B]
^!+b::
;Run, %comspec% 'start ms-settings:bluetooth'
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\bluetoothMenu.ahk"
return

; Keypad Lock (ignore key/mouse presses) [Ctrl + Alt + Shift + L]
^!+l::
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\KeypadLock.ahk"
Traytip, KeypadLock, Keyboard Locked. Press Ctrl+Alt+Shift+L to Unlock., 0
Return


; Registry Edit -- Dark Mode [Ctrl + Win + Alt + D]
^#!d::Run "C:\Windows\System32\rundark.bat" 
^#!l::Run "C:\Windows\System32\runlight.bat" 
Return


; Registry change to dark mode 
^!+v::
; 1. prompt user (remind that script will kill win explorer windows. offer option to back out)
; 2. change registry values to dark theme
; 3. restart windows explorer
; https://www.autohotkey.com/docs/v1/lib/RegWrite.htm

MsgBox, 1, Proceed with Dark Mode?, This script will apply dark mode then close and restart windows explorer. Proceed?
IfMsgBox Cancel
	return
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\darkModeRefresh.ahk"
return

;Toggle Alt Tab Behavior (Current vs. All Virtual Desktops) [Ctrl + Alt + Shift + T]
^!+t::
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\win-10-alt-tab-behavior-toggle\alttabtoggle.ahk"
return



; rainmeter layouts
; left rainmeter layout lab [Ctrl + Alt + Shift + I]
^!+i::Run %A_ScriptDir%\Scripts\rainmeter_layouts\Rainmeter_Lab_Left.vbs

; right rainmeter layout lab [Ctrl + Alt + Shift + o]
^!+o::Run %A_ScriptDir%\Scripts\rainmeter_layouts\Rainmeter_Lab_Right.vbs

