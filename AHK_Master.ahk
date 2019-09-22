#SingleInstance, Force

^!l::
Run, %A_AHKPath% "%A_ScriptDir%\Scripts\KeypadLock.ahk"
Traytip, KeypadLock, Keyboard Locked. Press Ctrl+Alt+L to Unlock., 0
Return



; Press ~ to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
`::Send !{Up} 
#IfWinActive
return


; Empty trash
#Del::FileRecycleEmpty ; win + del
return

; Suspend AutoHotKey
#ScrollLock::Suspend ; Win + scrollLock
return

; Always on Top
^SPACE:: Winset, Alwaysontop, , A ; ctrl + space
Return

;https://www.maketecheasier.com/favorite-autohotkey-scripts/

; launch chrome
; open dropbox, downloads


; Open Downloads folder
^+j::Run "C:\Users\brand\Downloads" ; ctrl+shift+j
return

; Open Dropbox folder
^+d::Run "C:\Users\brand\Dropbox" ; ctrl+shift+d
return
