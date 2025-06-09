#Requires AutoHotkey v2

;–– make sure CapsLock never latches on
SetCapsLockState("Off")

CapsLock::
{
    SetCapsLockState("Off")
    Return
}

CapsLock up::
{
    SetCapsLockState("Off")
    Return
}

;–– special-character mappings
CapsLock & SC029:: Send "°"   ; US backtick → degree sign
CapsLock & e:: Send "€"
CapsLock & a::
{
    Send GetKeyState("Shift","P") ? "Ä" : "ä"
}
CapsLock & o::
{
    Send GetKeyState("Shift","P") ? "Ö" : "ö"
}
CapsLock & u::
{
    Send GetKeyState("Shift","P") ? "Ü" : "ü"
}

;–– block all other CapsLock+<key>
CapsLock & b:: Return
CapsLock & c:: Return
CapsLock & d:: Return
CapsLock & f:: Return
CapsLock & g:: Return
CapsLock & h:: Return
CapsLock & i:: Return
CapsLock & j:: Return
CapsLock & k:: Return
CapsLock & l:: Return
CapsLock & m:: Return
CapsLock & n:: Return
CapsLock & p:: Return
CapsLock & q:: Return
CapsLock & r:: Return
CapsLock & s:: Return
CapsLock & t:: Return
CapsLock & v:: Return
CapsLock & w:: Return
CapsLock & x:: Return
CapsLock & y:: Return
CapsLock & z:: Return

CapsLock & 1:: Return
CapsLock & 2:: Return
CapsLock & 3:: Return
CapsLock & 4:: Return
CapsLock & 5:: Return
CapsLock & 6:: Return
CapsLock & 7:: Return
CapsLock & 8:: Return
CapsLock & 9:: Return
CapsLock & 0:: Return

CapsLock & -:: Return
CapsLock & =:: Return
CapsLock & [:: Return
CapsLock & ]:: Return
CapsLock & \:: Return
CapsLock & ':: Return
CapsLock & ,:: Return
CapsLock & .:: Return
CapsLock & /:: Return
