; Disable solo CapsLock
CapsLock::
    if GetKeyState("CapsLock", "T")
        SetCapsLockState, Off
return

considerShift(key) {
    shift := GetKeyState("Shift", "P")

    switch key {
        case "a":
            Send % shift ? "Ä" : "ä"
        case "o":
            Send % shift ? "Ö" : "ö"
        case "u":
            Send % shift ? "Ü" : "ü"
        case "s":
            Send ß
        case "e":
            Send €
        default:
            Send % shift ? Format("{:U}", key) : key
    }
}

; CapsLock + Key
CapsLock & a::considerShift("a")
CapsLock & b::considerShift("b")
CapsLock & c::considerShift("c")
CapsLock & d::considerShift("d")
CapsLock & e::considerShift("e")
CapsLock & f::considerShift("f")
CapsLock & g::considerShift("g")
CapsLock & h::considerShift("h")
CapsLock & i::considerShift("i")
CapsLock & j::considerShift("j")
CapsLock & k::considerShift("k")
CapsLock & l::considerShift("l")
CapsLock & m::considerShift("m")
CapsLock & n::considerShift("n")
CapsLock & o::considerShift("o")
CapsLock & p::considerShift("p")
CapsLock & q::considerShift("q")
CapsLock & r::considerShift("r")
CapsLock & s::considerShift("s")
CapsLock & t::considerShift("t")
CapsLock & u::considerShift("u")
CapsLock & v::considerShift("v")
CapsLock & w::considerShift("w")
CapsLock & x::considerShift("x")
CapsLock & y::considerShift("y")
CapsLock & z::considerShift("z")
CapsLock & `::Send °
