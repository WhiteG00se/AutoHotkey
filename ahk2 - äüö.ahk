; AutoHotkey v2 script
; CapsLock as a pure modifier for umlauts
; CapsLock alone does nothing

; Prevent CapsLock from toggling
CapsLock::return

; CapsLock + Shift + Key
SendUmlaut(key) {
    shift := GetKeyState("Shift", "P")
    if key = "a"
        Send(shift ? "Ä" : "ä")
    else if key = "o"
        Send(shift ? "Ö" : "ö")
    else if key = "u"
        Send(shift ? "Ü" : "ü")
}

; CapsLock + Key
CapsLock & a::SendUmlaut("a")
CapsLock & o::SendUmlaut("o")
CapsLock & u::SendUmlaut("u")
