
; Press ~ to move up a folder in Explorer
#IfWinActive, ahk_class CabinetWClass
`::Send !{Up} 
#IfWinActive
Return




; restart windows explorer . ctrl alt win E
; https://www.autohotkey.com/board/topic/93906-restart-explorer-the-official-way/
^!#E::
Process,close,explorer.exe
sleep, 5000 ;This sleep 5000 is to let you see what actually happens. Decrease it later
run, explorer.exe
;WinWait, ahk_class CabinetWClass
;WinClose ;close the new explorer window
return



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

;; Open HMS G Drive [Ctrl + Alt + Shift + G]
;^!+g::Run % "G:\My Drive" 
;return

;; Open Personal G Drive [Ctrl + Alt + Shift + F]
;^!+f::Run % "H:\My Drive"
;return





