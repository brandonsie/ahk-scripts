; Open windows 10 bluetooth menu
; https://www.alphr.com/custom-windows-10-settings-shortcut/
;    run] ms-settings:bluetooth
; https://www.ctrl.blog/entry/how-to-windows-settings-command.html
; from command line
; start ms-settings:bluetooth
; https://superuser.com/questions/1192892/autohotkey-run-windows-commands
; run, %comspec% /c del C:\Users\Test\Desktop\test.txt,,hide


#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


run, %comspec% /c start ms-settings:bluetooth