/*
	    | Edit by jjCotes |
	Date Of Last Edit: 09/Mar/2024
	Source: https://github.com/jjCotes/60-percent-ahk
	Needs UFT-8 with BOM: NO
	Description:
		This code creates shortcuts for some Multimedia Keyfuntions using a convination of the AppsKey and some others
*/


;--------------------    CODE STARTS HERE    --------------------

#NoEnv
SendMode Input
#SingleInstance force

FileCreateDir, C:\AHK macros\Assets ; For this two lines to work make sure 
SetWorkingDir, C:\AHK macros\Assets ; to set the right path for your machine

Menu, Tray, NoStandard
Menu, Tray, Add , Help, Hl
Menu, Tray, Add , Stop, Ss
Menu, Tray, Add , [F5], Rl
Menu, Tray, Add , Exit, Ex
Menu, Tray, Default, Exit
Menu, Tray, Color, B0C4BE
Menu, Tray, Icon, Shifter_On.ico, , 1
Return

AppsKey & ,:: Send {<}
AppsKey & .:: Send {>}
AppsKey & s:: Send {PrintScreen}
AppsKey & b:: Send {Volume_Up}
AppsKey & v:: Send {Volume_Down}
AppsKey & -:: Send {Media_Play_Pause}


Hl:
	Run https://github.com/jjCotes/60-percent-ahk#medianavahk
Return

F24:: ; Selected F24 because I dont need that hotkey that hard
	Suspend
	GoTO refreshICON

Ss:
	Suspend, Toggle      
	refreshICON:
	If A_IsSuspended {
		Menu, Tray, Check, Stop
		Menu, Tray, Icon, Shifter_Off.ico
	}
	Else {
		Menu, Tray, UnCheck, Stop
		Menu, Tray, Icon, Shifter_On.ico
	}
Return

Ex:
	ExitApp
Return

Rl:
	Reload
Return