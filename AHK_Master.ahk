#SingleInstance, Force
SetWorkingDir, %A_ScriptDir%

/* 
------------------------------
Autohotkey Behavior
------------------------------
*/ 

; Change AHK_Master Tray Icon
I_Icon := "icons/AHK_master.ico"
if FileExist(I_Icon) {
  Menu, Tray, Icon, %I_Icon%
} else{
	MsgBox, %I_Icon%
}
Return

; Reload AHK_Master [Ctrl + Alt + Shift + R]
^!+r:: 
  Msgbox, 4, , Do you really want to reload this script?
  ifMsgBox, Yes
    Reload
Return


; Suspend AutoHotKey [Ctrl + Alt Shift + S]
^!+s::
  Msgbox, 4, , Suspend AHK?
  ifMsgBox, Yes
    Suspend
Return


/*
------------------------------
Windows
------------------------------
*/
 

; Caps lock behavior: CapsLock maps to escape. ctrl capslock maps to caps lock
^!CapsLock::CapsLock ; Ctrl + Alt + CapsLock maps to CapsLock
CapsLock::Ctrl ; CapsLock maps to Ctrl. Ctrl [ is vim escape
; CapsLock::Esc ; CapsLock maps to Escape
Ctrl & SC01A::Esc ; Ctrl + [ maps to escape
^/::
Send, \ ; ctrl/ maps to \
Return
^+,::
Send, {{} ; ctrl shift < (ctrl shift ,) maps to {
Return
^+.::
Send, {}} ; ctrl shift> (ctrl shift .) maps to }
Return

; Keypad Lock (ignore key/mouse presses) [Ctrl + Alt + Shift + L]
^!+l::
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\KeypadLock.ahk"
Traytip, KeypadLock, Keyboard Locked. Press Ctrl+Alt+Shift+L to Unlock., 0
Return

; Press ~ to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
`::Send !{Up} 
#IfWinActive
Return

; Always on Top [Ctrl + Alt + Shift + Space]
^!+SPACE:: 
  WinGetTitle, Title, A
  Winset, Alwaysontop, , A 
  WinGet, ExStyle, ExStyle, A
  if(ExStyle & 0x8){
    state = On
  } else{
    state = Off
  }
  Traytip, Always On Top, Always On Top Toggled %state% "%Title%", 0
Return


; Open Downloads Folder [Ctrl + Alt + Shift + J/F]
^!+j::Run % "C:\Users\" . A_UserName . "\Downloads"
^!+f::Run % "C:\Users\" . A_UserName . "\Downloads"
Return

; Open Dropbox Folder [Ctrl + Alt + Shift + D]
^!+d::Run % "C:\Users\" . A_UserName . "\Dropbox" 
return

; Open C Drive [Ctrl + Alt + Shift + C]
^!+c::Run % "C:\" 
return

; Open G Drive [Ctrl + Alt + Shift + G]
^!+g::Run % "G:\My Drive" 
return

;Toggle Alt Tab Behavior (Current vs. All Virtual Desktops) [Ctrl + Alt + Shift + T]
^!+t::
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\win-10-alt-tab-behavior-toggle\alttabtoggle.ahk"
return

; Download New Satellite Wallpaper [Ctrl + Alt + Shift + W]
^!+w::Run % "C:\Users\" . A_UserName . "\Dropbox\3_Programming\GOES16_PowerShell_Wallpaper\Run_Automatically\run_setWP.bat"
return

; Download New Satellite Wallpaper 10k [Ctrl + Alt + Shift + Q]
^!+q::Run % "C:\Users\" . A_UserName . "\Dropbox\3_Programming\GOES16_PowerShell_Wallpaper\Run_Manually\run_setWP_10k.bat"
return

  
; R. type `%>%` <- magrittr::`%>%`
^!+m::
Send, ``{asc 0037}{>}{asc 0037}`` <- magrittr::``{asc 0037}{>}{asc 0037}``
return

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