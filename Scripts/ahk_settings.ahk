/* 
------------------------------
Autohotkey Behavior
------------------------------
*/ 

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
