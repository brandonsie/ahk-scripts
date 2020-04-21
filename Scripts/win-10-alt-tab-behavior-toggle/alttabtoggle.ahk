; Update Alt+Tab Behavior registry value windows 10, then restart windows explorer
; https://www.autohotkey.com/docs/commands/RegRead.htm
; https://www.autohotkey.com/docs/commands/RegWrite.htm 
; based on https://www.tenforums.com/tutorials/4764-alt-tab-show-windows-open-desktops-windows-10-a.html

; Example: Retrieve the path of the Program Files directory.



RegRead, OutputVar, HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, VirtualDesktopAltTabFilter 

if(OutputVar = 1){
	RegWrite, REG_DWORD, HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, VirtualDesktopAltTabFilter, 0
	MsgBox, Value was 1 (Current Desktop), now set to 0 (All Desktops)
} else {
	RegWrite, REG_DWORD, HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced, VirtualDesktopAltTabFilter, 1
	MsgBox, Value was 0 (All Desktops), now set to 1 (Current Desktop)
}

; Restart Explorer
process, close, explorer.exe
