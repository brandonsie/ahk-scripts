/*
Based on code from stackoverflow linked below
2024-05-08
Brandon Sie
*/

; can change this incrememnt value 
increment := 100


; Ctrl+Win + J/K/I/M 
; Increase window left/right/up/down by increment (100px)
#^j::
    WinGetPos,oldx,oldy,oldw,oldh, A
	WinMove, A, , oldx-increment, , oldw+increment, 
Return
#^k::
    WinGetPos,oldx,oldy,oldw,oldh, A
	WinMove, A, , , , oldw+increment,
Return
#^i::
    WinGetPos,oldx,oldy,oldw,oldh, A
	WinMove, A, , , oldy-increment , , oldh+increment
Return
#^m::
    WinGetPos,oldx,oldy,oldw,oldh, A
    WinMove, A, , , , , oldh+increment
Return


; Shift+Win + J/K/I/M 
; Decrease window left/right/up/down by increment (100px)
#+j::
    WinGetPos,oldx,oldy,oldw,oldh, A
	WinMove, A, , , , oldw-increment, 
Return
#+k::
    WinGetPos,oldx,oldy,oldw,oldh, A
	WinMove, A, , oldx+increment , , oldw-increment,
Return
#+i::
    WinGetPos,oldx,oldy,oldw,oldh, A
	WinMove, A, , ,  , , oldh-increment
Return
#+m::
    WinGetPos,oldx,oldy,oldw,oldh, A
    WinMove, A, , , oldy+increment, , oldh-increment
Return


; Ctrl+Shift+Win + J/K/I/M 
; Move window left/right/up/down by increment (100px)
^+#j::
    WinGetPos,old,,,, A
	WinMove, A, , old-increment
Return
^+#k::
    WinGetPos,old,,,, A
	WinMove, A, , old+increment
Return
^+#i::
	WinGetPos,,old,,, A
	WinMove, A, , , old-increment, ,
Return
^+#m::
	WinGetPos,,old,,, A
    WinMove, A, , , old+increment, ,
Return


/* 
Original script from 
https://stackoverflow.com/questions/46802268/autohotkey-how-to-resize-window-by-both-absolute-and-relative-height-after-inp/46809005#46809005
Win + Equal. input box to choose reposition or resize window
*/
/*
#=:: ; set X/Y/width/height of window, `A` for active window
    InputBox, new_i, Resize, Height:, , 140, 130
    prefix := ""
    first_char := SubStr(new_i, 1, 1)
    if (first_char = "x" or first_char = "y" or first_char = "w" or first_char = "h") {
        prefix := first_char
        new_i := SubStr(new_i,2)
        first_char := SubStr(new_i, 1, 1)
    }
    if (first_char = "+" or first_char = "-")
    {
        if (prefix = "x")
            WinGetPos,old,,,, A
        else if (prefix = "y")
            WinGetPos,,old,,, A
        else if (prefix = "w")
            WinGetPos,,,old,, A
        else
            WinGetPos,,,,old, A
        new_i += old
    }
        if (prefix = "x")
            WinMove, A, , new_i, , ,
        else if (prefix = "y")
            WinMove, A, , , new_i, ,
        else if (prefix = "w")
            WinMove, A, , , , new_i,
        else
            WinMove, A, , , , , new_i
*/