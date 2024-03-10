/*
	    | Edit by jjCotes |
	Date Of Last Edit: 09/Mar/2024
	Source: https://github.com/jjCotes/60-percent-ahk
	Needs UFT-8 with BOM: NO
	Description:
		This code creates shortcuts for some especial characters for Spanish and French 
		when the keyboard language is set to English, on Spanish the short cut work with 
		`Alt` + `C` or `N` for `Ç` and `Ñ` respectively, on French the shortcut consist 
		of writting dot or coma followed by a vowel and an exponetial [ .a^ ]
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
Menu, Tray, Icon, ES_Sup_On.ico, , 1
Return

; Spanish charaters --------------
<!c:: Send {U+00E7} ;            ç
<!+c:: Send {U+00C7} ;           Ç
<!n:: Send {U+00F1} ;            ñ
<!+n:: Send {U+00D1} ;           Ñ
#if GetKeyState("CapsLock", "T") ; 
	<!+c:: Send {U+00E7} ;       ç
	<!c:: Send {U+00C7} ;        Ç
	<!+n:: Send {U+00F1} ;       ñ
	<!n:: Send {U+00D1} ;        Ñ
#if ;                            |

; French charaters ---------------
::.a^::{U+00E2} ;                â
::,a^::{U+00C2} ;                Â 
::.e^::{U+00EA} ;                ê
::,e^::{U+00CA} ;                Ê  
::.i^::{U+00EE} ;                î  
::,i^::{U+00CE} ;                Î
::.o^::{U+00F4} ;                ô
::,o^::{U+00D4} ;                Ô
::.u^::{U+00FB} ;                û
::,u^::{U+00DB} ;                Û


Hl:
	Run https://github.com/jjCotes/60-percent-ahk#es_support-to_enahk
Return

F24:: ; Selected F24 because I dont need that hotkey that hard
	Suspend
	GoTO refreshICON

Ss:
	Suspend, Toggle      
	refreshICON:
	If A_IsSuspended {
		Menu, Tray, Check, Stop
		Menu, Tray, Icon, ES_Sup_Off.ico
	}
	Else {
		Menu, Tray, UnCheck, Stop
		Menu, Tray, Icon, ES_Sup_On.ico
	}
Return

Ex:
	ExitApp
Return

Rl:
	Reload
Return