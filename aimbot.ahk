#Persistent
#KeyHistory, 0
#NoEnv
#HotKeyInterval 1
#MaxHotkeysPerInterval 127
#InstallKeybdHook
#UseHook
#SingleInstance, Force

SetKeyDelay,-1, 8
SetControlDelay, -1
SetMouseDelay, -1
SetWinDelay,-1
SendMode, InputThenPlay
SetBatchLines,-1
ListLines, Off
CoordMode, Pixel, Screen, RGB
CoordMode, Mouse, Screen
PID := DllCall("GetCurrentProcessId")
Process, Priority, %PID%, High 

EMCol := " 0xab0001, 0xb7394f, 0xb93742, 0xbb3340, 0xca4c5a, 0xbf3f4c, 0xd0262e, 0xd1262e, 0xd22830, 0xb0535f, 0xd1272e "

ColVn := 
ZeroX := 
ZeroY := 
CFovX := 
CFovY := 

ScanL := 
ScanR := 
ScanT := 
ScanB := 

Loop, {
    ~XButton2::
        Start := A_TickCount
        while GetKeyState("XButton2") && A_TickCount - Start < 600000
        {
            PixelSearch, X, Y, ScanL, ScanT, ScanR, ScanB, EMCol, ColVn, Fast RGB
            GoSub GetAimOffset
            GoSub GetAimMoves 
            GoSub MouseMoves
        }

    GetAimOffset:
    Return

    GetAimMoves:
    Return
    
    MouseMoves:
    return
}
return
