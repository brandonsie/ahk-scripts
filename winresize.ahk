/*
https://stackoverflow.com/questions/46802268/autohotkey-how-to-resize-window-by-both-absolute-and-relative-height-after-inp/46809005#46809005
*/

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
    return