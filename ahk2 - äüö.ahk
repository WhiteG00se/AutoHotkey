; Disable solo CapsLock (clicked amongst other keys not part of this script will sadly still trigger it)
; If CapsLock is on, turn it off
CapsLock::
{
    if GetKeyState("CapsLock", "T")
        SetCapsLockState "Off"
}

considerShift(key) {
    shift := GetKeyState("Shift", "P")
    if key = "a"
        Send(shift ? "Ä" : "ä")
    else if key = "o"
        Send(shift ? "Ö" : "ö")
    else if key = "u"
        Send(shift ? "Ü" : "ü")
}

; CapsLock + Key
CapsLock & a::considerShift("a")
CapsLock & o::considerShift("o")
CapsLock & u::considerShift("u")
CapsLock & s::Send("ß")
CapsLock & e::Send("€")
CapsLock & `::Send("°")
