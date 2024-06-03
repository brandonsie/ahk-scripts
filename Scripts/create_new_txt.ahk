; New text (or other) file in current location
; lightly modified from: https://www.autohotkey.com/boards/viewtopic.php?t=64289
; changes: InputBox to prompt user to enter new filename, including extension
; activate with Q

#IfWinActive, ahk_class CabinetWClass
q:: ;explorer - create new text file and open it with Notepad++
#IfWinActive, ahk_class ExploreWClass
q:: ;explorer - create new text file and open it with Notepad++
vPathNotepadP := "C:\Program Files (x86)\Notepad++\notepad++.exe"

;vNameNoExt := "New Text Document"
;vDotExt := ".txt"
InputBox, vName, 'Filename', 'Enter new filename (only period for filename)', , , , , , , , File.txt
vNameArray := StrSplit(vName, ".")
vNameNoExt := vNameArray[1]
vDotExt := "." . vNameArray[2]

vPath := ""
WinGet, hWnd, ID, A
for oWin in ComObjCreate("Shell.Application").Windows
{
	if (oWin.HWND = hWnd)
	{
		vDir := RTrim(oWin.Document.Folder.Self.Path, "\")
		;if !DirExist(vDir)
		if !InStr(FileExist(vDir), "D")
		{
			oWin := ""
			return
		}

		Loop
		{
			vSfx := (A_Index=1) ? "" : " (" A_Index ")"
			vName := vNameNoExt vSfx vDotExt
			vPath := vDir "\" vName
			if !FileExist(vPath)
				break
		}

		;create a blank text file (ANSI/UTF-8/UTF-16)
		;FileAppend,, % "*" vPath
		FileAppend,, % "*" vPath, UTF-8
		;FileAppend,, % "*" vPath, UTF-16
		break
	}
}
oWin := ""
if FileExist(vPath)
	Run, "%vPathNotepadP%" "%vPath%"
Return


