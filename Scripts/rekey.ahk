
; Caps lock behavior: CapsLock maps to escape. ctrl capslock maps to caps lock
^!CapsLock::CapsLock ; Ctrl + Alt + CapsLock maps to CapsLock

CapsLock::Ctrl ; CapsLock maps to Ctrl. Ctrl [ is vim escape
; CapsLock::Esc ; CapsLock maps to Escape
Ctrl & SC01A::Esc ; Ctrl + [ maps to escape
^/::
Send, \ ; ctrl/ maps to \
Return
^+,::
Send, {{} ; ctrl shift < (ctrl shift ,) maps to {
Return
^+.::
Send, {}} ; ctrl shift> (ctrl shift .) maps to }
Return







;; Shift + End rekeyed to Shift + F10 (right click). so i don't need to press fn
;+End::+F10
;Return



; R. type `%>%` <- magrittr::`%>%`
^!+m::
Send, ``{asc 0037}{>}{asc 0037}`` <- magrittr::``{asc 0037}{>}{asc 0037}``
;PasteText("``%>%`` <- magrittr::``%>%``")
;PasteText("``{asc 0037}{>}{asc 0037}`` <- magrittr::``{asc 0037}{>}{asc 0037}``")
return



; PasteText function
; https://robolife.wordpress.com/2011/05/07/code-snippets-with-autohotkey/
; StringReplace depreciated, replace with StrReplace
; https://www.autohotkey.com/docs/commands/StringReplace.htm
; StringReplace, OutputVar, InputVar, SearchText , ReplaceText, ReplaceAll
; https://www.autohotkey.com/docs/commands/StrReplace.htm
; ReplacedStr := StrReplace(Haystack, Needle , ReplaceText, OutputVarCount, Limit)
PasteText(text) 
{
   CurrentClip=%Clipboard%
   Sleep, 50
   Clipboard=%text%
   ;Send %Clipboard%
   
  Send {ctrl down}v{ctrl up} ; this works better than ^v notepad++ https://www.autohotkey.com/board/topic/131360-copy-paste-function/
   ;Send, ^V ;simple paste doesnt work for notpad ++ ascii
   Sleep, 50 ; Don't change clipboard while pasting! (Sleep > 0)
   Clipboard=%CurrentClip%           ; Restore original ClipBoard
   Clip0=
}


/*
Hotstrings
https://www.autohotkey.com/docs/Hotstrings.htm
*/
#Hotstring EndChars '/\'
:XT:mag::PasteText("``%>%`` <- magrittr::``%>%``")




