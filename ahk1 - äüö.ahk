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
CapsLock & b::Send b
CapsLock & c::Send c
CapsLock & d::Send d
CapsLock & e::Send €
CapsLock & f::Send f
CapsLock & g::Send g
CapsLock & h::Send h
CapsLock & i::Send i
CapsLock & j::Send j
CapsLock & k::Send k
CapsLock & l::Send l
CapsLock & m::Send m
CapsLock & n::Send n
CapsLock & o::considerShift("o")
CapsLock & p::Send p
CapsLock & q::Send q
CapsLock & r::Send r
CapsLock & s::Send ß
CapsLock & t::Send t
CapsLock & u::considerShift("u")
CapsLock & v::Send v
CapsLock & w::Send w
CapsLock & x::Send x
CapsLock & y::Send y
CapsLock & z::Send z
CapsLock & `::Send °
