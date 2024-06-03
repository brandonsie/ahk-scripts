
;Shift + Windows + Up (maximize a window across all displays) https://stackoverflow.com/a/9830200/470749
+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   SysGet, X1, 76
   SysGet, Y1, 77
   SysGet, Width, 78
   SysGet, Height, 79
   WinMove, %Title%,, X1-10, Y1, Width+20, Height
return


; Alternative window minimize maximize on single screen (recoup default functionality after fancyzones usage)
;  https://stackoverflow.com/questions/42918534/autohotkey-script-to-toggle-minimize-maximize-window
; Win+ Up/Dn max/min
#Up::
	WinGetActiveTitle, Title
	WinMaximize, %Title%
return
#Down::
	WinGetActiveTitle, Title
	WinMinimize, %Title%
return




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



