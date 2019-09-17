; Keypad (& Mouse) Locker
; Run script to disable most key/mouse inputs
; Ctrl+Alt+L to restore normal functionality
; Adapted from source below:
; https://github.com/iglvzx/KittyLock

#SingleInstance, Force
;#NoTrayIcon
SetTitleMatchMode, RegEx
SetWinDelay, -1
SetBatchLines, -1

Gui, New
Gui, Add, Edit, W20 Center Limit1 Password
Gui, -Caption +AlwaysOnTop +Owner +LastFound
WinSetTitle, KittyLock
WinSet, Transparent, 0
Gui, Show

WinWaitActive, ^KittyLock$
SendInput, x

Shift::
Ctrl::
Alt::
LWin::
RWin::
Tab::
Enter::
Space::
Backspace::

*Left::
*Right::
*Up::
*Down::

CapsLock::
PrintScreen::
AppsKey::

^c::
^v::
^x::
^a::

!F4::
!Tab::
!Esc::
+F10::
^+Esc::

LButton::
RButton::
MButton::
WheelDown::
WheelUp::

    return


^!l::
    Traytip, KeypadLock, Keyboard Unlocked. Press Ctrl+Alt+L to Relock., 0.1
    Suspend
    ExitApp


