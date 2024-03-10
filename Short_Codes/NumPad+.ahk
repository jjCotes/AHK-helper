/*
	    | Edit by jjCotes |
	Date Of Last Edit: 09/Mar/2024
	Source: https://github.com/jjCotes/60-percent-ahk
	Needs UFT-8 with BOM: NO
	Description:
		This code creates shortcuts for better navigation using the Numpad on a full-size keyboard
*/


;--------------------    CODE STARTS HERE    --------------------

#NoEnv
SendMode Input
#SingleInstance force

FileCreateDir, C:\AHK macros\Assets ; For this two lines to work make sure 
SetWorkingDir, C:\AHK macros\Assets ; to set the right path for your machine

;          Tray BG   Popup BG  Popup H1   
;Colors   ["B0C4BE", "373F3C", "282E2C"]

;---------- GUI LayOut - Help ----------

Gui +Resize +OwnDialogs +LastFound +AlwaysOnTop -Caption +Border +MinSize256x307 -DPIScale, ;-SysMenu +Icon %C:\AHK macros\Assets%
Gui, Add, Picture,  w236 h290, Numpad+_3.png
Gui, Color, 373F3C
; gui, Submit, NoHide, hwndhwnd 0xE ; No effect


;---------- Menu Setup ----------

Menu, Tray, NoStandard
Menu, Tray, Add , Help, Hl
Menu, Tray, Add , Stop, Ss
Menu, Tray, Add , [F5], Rl
Menu, Tray, Add , Exit, Ex
Menu, Tray, Default, Exit
Menu, Tray, Color, B0C4BE
Menu, Tray, Icon, Numpad+_On.ico, , 1

Hl:
	Gui, Show, x70 y742, Key Map
	While (!GetKeyState("Esc"))
		Continue
	Gui, Hide
Return

F24:: ; Selected F24 because I dont need that hotkey that hard
	Suspend
	GoTO refreshICON

Ss:
	Suspend, Toggle      
	refreshICON:
	If A_IsSuspended {
		Menu, Tray, Check, Stop
		Menu, Tray, Icon, Numpad+_Off.ico
	}
	Else {
		Menu, Tray, UnCheck, Stop
		Menu, Tray, Icon, Numpad+_On.ico
	}
Return

Ex:
	ExitApp 
Return

Rl:
	Reload
Return


;---------- Macros and HotKeys ----------

Numpadins:: Send {Space}
Numpad0:: Send {Space}
Numpaddot:: Send 0
^Numpaddot:: Send {Esc}
NumpadPgUp:: Send {BS}
NumpadClear:: Send {NumpadDown}
NumpadPgDn:: Send {AppsKey}
NumpadDown:: Send {f}
+NumpadDown:: Send {m}
^NumpadDown:: Send {c}


