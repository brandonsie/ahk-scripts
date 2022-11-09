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
Source Scripts
------------------------------
*/
#include %A_ScriptDir%\Scripts\window_swap.ahk


/*
------------------------------
Windows
------------------------------
*/



;Shift + Windows + Up (maximize a window across all displays) https://stackoverflow.com/a/9830200/470749
+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1-10, Y1, Width, Height
return

; Alternative window minimize maximize on single screen (recoup default functionality after fancyzones usage)
;  https://stackoverflow.com/questions/42918534/autohotkey-script-to-toggle-minimize-maximize-window
; Win+ Up/Dn max/min
+Up::
	WinGetActiveTitle, Title
	WinMaximize, %Title%
return
+Down::
	WinGetActiveTitle, Title
	WinMinimize, %Title%
return





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

;; Shift + End rekeyed to Shift + F10 (right click). so i don't need to press fn
;+End::+F10
;Return

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

; Registry Edit -- Dark Mode [Ctrl + Win + Alt + D]
^#!d::Run "C:\Windows\System32\rundark.bat" 
^#!l::Run "C:\Windows\System32\runlight.bat" 
Return

; Auto Git -- [Ctrl Win Alt S]
^#!S::RunWait WScript.exe //B "C:\Windows\System32\launcher.vbs" powershell.exe -ExecutionPolicy ByPass -windowstyle hidden -command "C:\Users\Brandon\Dropbox\3_Programming\automated_scripts\auto_git\auto_git.ps1"
Return

; Open Desktop Folder [Ctrl + Alt + Shift + E]
^!+e::Run % "C:\Users\" . A_UserName . "\Desktop"
Return


; Open Downloads Folder [Ctrl + Alt + Shift + J]
^!+j::Run % "C:\Users\" . A_UserName . "\Downloads"
Return

; Open Dropbox Folder [Ctrl + Alt + Shift + D]
^!+d::Run % "C:\Users\" . A_UserName . "\Dropbox" 
return

; Open Harvard Dropbox Folder [Ctrl + Alt + Shift + H]
^!+h::Run % "C:\Users\" . A_UserName . "\Dropbox (HMS)" 
return

; Open Nextcloud Folder [Ctrl + Alt + Shift + N]
^!+n::Run % "C:\Users\" . A_UserName . "\Nextcloud"
Return

; Open C Drive [Ctrl + Alt + Shift + C]
^!+c::Run % "C:\" 
return

; Open HMS G Drive [Ctrl + Alt + Shift + G]
^!+g::Run % "G:\My Drive" 
return

; Open Personal G Drive [Ctrl + Alt + Shift + F]
^!+f::Run % "H:\My Drive"
return

; Open W10 Bluetoooth Menu [Ctrl + Alt  + Shift + B]
^!+b::
;Run, %comspec% 'start ms-settings:bluetooth'
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\bluetoothMenu.ahk"
return

;Toggle Alt Tab Behavior (Current vs. All Virtual Desktops) [Ctrl + Alt + Shift + T]
^!+t::
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\win-10-alt-tab-behavior-toggle\alttabtoggle.ahk"
return

; Download New Satellite Wallpaper [Ctrl + Alt + Shift + W]
^!+w::Run % "C:\Users\" . A_UserName . "\Dropbox\3_Programming\GOES16_PowerShell_Wallpaper\Run_Manually\runwp.bat"
return

; Refresh wallpaper [ctrl + alt + shift +q]
^!+q::Run % "C:\Users\" . A_UserName . "\Dropbox\3_Programming\GOES16_PowerShell_Wallpaper\Run_Manually\refreshwp.bat"
return

; R. type `%>%` <- magrittr::`%>%`
^!+m::
Send, ``{asc 0037}{>}{asc 0037}`` <- magrittr::``{asc 0037}{>}{asc 0037}``
;PasteText("``%>%`` <- magrittr::``%>%``")
;PasteText("``{asc 0037}{>}{asc 0037}`` <- magrittr::``{asc 0037}{>}{asc 0037}``")
return

; PasteText function
; https://robolife.wordpress.com/2011/05/07/code-snippets-with-autohotkey/
; StringReplace depreciated, replace with StrReplace
; https://www.autohotkey.com/docs/commands/StringReplace.htm
; StringReplace, OutputVar, InputVar, SearchText , ReplaceText, ReplaceAll
; https://www.autohotkey.com/docs/commands/StrReplace.htm
; ReplacedStr := StrReplace(Haystack, Needle , ReplaceText, OutputVarCount, Limit)
PasteText(text) 
{
   CurrentClip=%Clipboard%
   Sleep, 50
   Clipboard=%text%
   ;Send %Clipboard%
   
  Send {ctrl down}v{ctrl up} ; this works better than ^v notepad++ https://www.autohotkey.com/board/topic/131360-copy-paste-function/
   ;Send, ^V ;simple paste doesnt work for notpad ++ ascii
   Sleep, 50 ; Don't change clipboard while pasting! (Sleep > 0)
   Clipboard=%CurrentClip%           ; Restore original ClipBoard
   Clip0=
}


/*
Hotstrings
https://www.autohotkey.com/docs/Hotstrings.htm
*/
#Hotstring EndChars '/\
:XT:mag::PasteText("``%>%`` <- magrittr::``%>%``")

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