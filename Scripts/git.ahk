
; Auto Git -- [Ctrl Win Alt S] Github
^#!S::RunWait powershell.exe -command "C:\Users\Brandon\Nextcloud\3_Programming\automated_scripts\auto_git\auto_git.ps1"
Return

; Auto Git [Ctrl Win Alt X] with window hidden
^#!X::RunWait WScript.exe //B "C:\Windows\System32\launcher.vbs" powershell.exe -ExecutionPolicy ByPass -windowstyle hidden -command "C:\Users\Brandon\Nextcloud\3_Programming\automated_scripts\auto_git\auto_git.ps1"
Return
