#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()

keyboardId := AHI.GetKeyboardId(0x04F2, 0x0112)
AHI.SubscribeKeyboard(keyboardId, true, Func("KeyEvent"))

mouseId := AHI.GetMouseId(0x046D, 0xC00C)
AHI.SubscribeMouseButtons(mouseId, true, Func("MouseButtonEvent"))
return

KeyEvent(code, state){
	ToolTip % "Keyboard Key - Code: " code ", State: " state
}

MouseButtonEvent(code, state){
	ToolTip % "Mouse Button - Code: " code ", State: " state	
}

^Esc::
	ExitApp