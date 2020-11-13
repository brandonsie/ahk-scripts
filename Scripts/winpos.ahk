#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Reload AHK_Master [Ctrl + Alt + Shift + 1]
^!+1::
WinMove, A,, 0, 0, 50, 200
Return
^!+2::
WinMove, A,, 200, 0, 50, 200
Return
  ;get active window id
    ;WinMove, A, 0, 0 ;
  ;Msgbox, 4, , Do you really want to reload this script?
  ;ifMsgBox, Yes
  ;  Reload

  ;https://www.autohotkey.com/docs/commands/WinMove.htm
  ;WinMove, WinTitle, WinText, X, Y , Width, Height, ExcludeTitle, ExcludeText
  ;https://www.autohotkey.com/docs/misc/WinTitle.htm