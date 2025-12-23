; Disable solo CapsLock
CapsLock::
    if GetKeyState("CapsLock", "T")
        SetCapsLockState, Off
return

considerShift(key) {
    shift := GetKeyState("Shift", "P")
    if (key = "a")
        Send % shift ? "Ä" : "ä"
    else if (key = "o")
        Send % shift ? "Ö" : "ö"
    else if (key = "u")
        Send % shift ? "Ü" : "ü"
}

; CapsLock + Key
CapsLock & a::considerShift("a")
CapsLock & o::considerShift("o")
CapsLock & u::considerShift("u")
CapsLock & s::Send ß
CapsLock & e::Send €
CapsLock & `::Send °
