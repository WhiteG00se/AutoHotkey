#Persistent
#If WinActive("ahk_exe outlook.exe") || WinActive("ahk_exe olk.exe")
    RShift::
        Send, ^q  ; Sends Ctrl+Q
    Return
#If
