#SingleInstance, Force



; Change Icon
; https://autohotkey.com/board/topic/121982-how-to-give-your-scripts-unique-icons-in-the-windows-tray/
I_Icon = icons\AHK_master.ico
; I_Icon = C:\Users\brand\Dropbox\3_Programming\ahk-scripts\icons\AHK_master.ico
IfExist, %I_Icon%
  Menu, Tray, Icon, %I_Icon%
return

; Keypad Lock (ignore key/mouse presses)
^!l:: ; Ctrl+Alt+L
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\KeypadLock.ahk"
Traytip, KeypadLock, Keyboard Locked. Press Ctrl+Alt+L to Unlock., 0
Return


; Press ~ to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
`::Send !{Up} 
#IfWinActive
return


;; Empty trash
;#Del::FileRecycleEmpty ; win + del
;Traytip, Recycle Bin, Recycle Bin Emptied., 0
;return
;Todo - make this multistep hotkey for confirmation step.

; Suspend AutoHotKey
#!S::Suspend ; Win + Alt + S
return

; Always on Top
!SPACE:: Winset, Alwaysontop, , A ; alt + space
Return

;https://www.maketecheasier.com/favorite-autohotkey-scripts/

; launch chrome
; open dropbox, downloads


; Open Downloads folder
^+j::Run % "C:\Users\" . A_UserName . "\Downloads" ; ctrl+shift+j

return

; Open Dropbox folder
^+d::Run % "C:\Users\" . A_UserName . "\Dropbox" ; ctrl+shift+d
return


; Download New Satellite Wallpaper
!+^w::Run % "C:\Users\" . A_UserName . "\Dropbox\3_Programming\GOES16_PowerShell_Wallpaper\Run_Automatically\run_setWP.bat" ;alt+shift+ctrl+w
return

; Download New Satellite Wallpaper 10k
!+^q::Run % "C:\Users\" . A_UserName . "\Dropbox\3_Programming\GOES16_PowerShell_Wallpaper\Run_Manually\run_setWP_10k.bat" ;alt+shift+ctrl+q
return
