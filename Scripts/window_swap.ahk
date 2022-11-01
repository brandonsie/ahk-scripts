; MonSwap - Swaps all the application windows from one monitor to another.
; v1.0.2
; Author: Alan Henager
;
; v1.0.1 - xenrik - Updated to use relative screen size when swapping
; v1.0.2 - boiler, masgo - exclude Windows 10 secondary monitor taskbar from being swapped
;https://www.autohotkey.com/boards/viewtopic.php?t=68311

SetWinDelay, 0 ; This switching should be instant

; Set this key combination to whatever. ctrl +alt shift z
^!+z::
SwapAll:
{
  DetectHiddenWindows, Off ; I think this is default, but just for safety's sake...
  WinGet, WinArray, List ; , , , Sharp
  ; Enable the above commented out portion if you are running SharpE

  i := WinArray
  Loop, %i% {
     WinID := WinArray%A_Index%
	 WinGetClass, ThisClass, ahk_id %WinID%
	 if (ThisClass = "Shell_SecondaryTrayWnd") ; do not swap the secondary monitor taskbar
	 	continue
     WinGetTitle, CurWin, ahk_id %WinID%
     If (CurWin = ) ; For some reason, CurWin <> didn't seem to work.
     {}
     else
     {
        WinGet, IsMin, MinMax, ahk_id %WinID% ; The window will re-locate even if it's minimized
        If (IsMin = -1) {
           WinRestore, ahk_id %WinID%
           SwapMon(WinID)
           WinMinimize, ahk_id %WinID%
        } else {
           SwapMon(WinID)
        }
     }
  }
  return
}

SwapMon(WinID) ; Swaps window with and ID of WinID onto the other monitor
{
  SysGet, Mon1, Monitor, 1
  Mon1Width := Mon1Right - Mon1Left
  Mon1Height := Mon1Bottom - Mon1Top

  SysGet, Mon2, Monitor, 2
  Mon2Width := Mon2Right - Mon2Left
  Mon2Height := Mon2Bottom - Mon2Top

  WinGetPos, WinX, WinY, WinWidth, WinHeight, ahk_id %WinID%
  WinCenter := WinX + (WinWidth / 2)
  if (WinCenter >= Mon1Left and WinCenter <= Mon1Right) {
    
	NewX := (WinX - Mon1Left) / Mon1Width
    NewX := Mon2Left + (Mon2Width * NewX)

    NewWidth := WinWidth / Mon1Width
    NewWidth := Mon2Width * NewWidth

    NewY := (WinY - Mon1Top) / Mon1Height
    NewY := Mon2Top + (Mon2Height * NewY)

    NewHeight := WinHeight / Mon1Height
    NewHeight := Mon2Height * NewHeight
 
 } else {
    NewX := (WinX - Mon2Left) / Mon2Width
    NewX := Mon1Left + (Mon1Width * NewX)

    NewWidth := WinWidth / Mon2Width
    NewWidth := Mon1Width * NewWidth

    NewY := (WinY - Mon2Top) / Mon2Height
    NewY := Mon1Top + (Mon1Height * NewY)

    NewHeight := WinHeight / Mon2Height
    NewHeight := Mon1Height * NewHeight
  }

  WinMove, ahk_id %WinID%, , %NewX%, %NewY%, %NewWidth%, %NewHeight%
  return
}