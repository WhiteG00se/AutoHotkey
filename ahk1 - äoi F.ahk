considerShift(key) {
    shift := GetKeyState("Shift", "P")

    switch key {
        case "a":
            Send % shift ? "Ä" : "ä"
        case "u":
            Send % shift ? "Ü" : "ü"
        case "o":
            Send % shift ? "Ö" : "ö"
        case "s":
            Send ß
        case "e":
            Send €
        case "`":
            Send °
    }
}

*F13::considerShift("a")
*F14::considerShift("u")
*F15::considerShift("o")
*F16::considerShift("e")
*F17::considerShift("s")
*F18::considerShift("`")
