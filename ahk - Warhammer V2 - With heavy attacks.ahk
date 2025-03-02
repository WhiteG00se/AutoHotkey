SetTitleMatchMode, 2 ; use "Contains" mode for window title matching
#IfWinActive, Warhammer: Vermintide 2
    left_pressedFirst := 0
    heavyInputOngoing := 0
    wait1 := 350
    wait2 := 450

    $*WheelUp::
        heavyInputOngoing := 1
        if heavyInputOngoing = 1
        { 
            Click down left
            Sleep, %wait1%
            Click up left
            Sleep, %wait2%
            heavyInputOngoing := 0
        } 
    return

    $*WheelDown::
        heavyInputOngoing := 1
        if heavyInputOngoing = 1
        {
            Click down left
            Sleep, %wait1%
            Click up left
            Sleep, %wait2%
            heavyInputOngoing := 0
        }
    return

    $*LButton::
        Click down left
        if (GetKeyState("RButton", "P") = 0 )
        {
            left_pressedFirst := 1
        }

    return

    $*LButton up::
        Click up left
        left_pressedFirst := 0
    return

    $*RButton::
        if left_pressedFirst = 0 
        {
            Click down right
        } else {
            Loop
            {
                Click down left
                Sleep, 5
                Click up left
                if !(GetKeyState("LButton", "P") && GetKeyState("RButton", "P")) 
                { 
                    if (GetKeyState("LButton", "P") = 1 )
                    {
                        Click down left
                    }
                    if (GetKeyState("RButton", "P") = 1 )
                    {
                        Click down right
                    }
                    break
                }
            }
        }
    return

    $*RButton up::
        Click up right
        if (GetKeyState("LButton", "P") = 1 )
        {
            left_pressedFirst := 1
        }
    return

    #IfWinActive ; turn off conditional hotkeys