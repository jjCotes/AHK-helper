/*
	    | Edit by jjCotes |
	Date Of Last Edit: 09/Mar/2024
	Source: https://github.com/jjCotes/60-percent-ahk
	Needs UFT-8 with BOM: NO
	Description:
		This code creates a shortcut for every greek letter and some useful 
		mathematical simbols. For greek letter the shortcut consist in writing 
		a dot next the name of the letter [ .alpha ] and a coma for capital 
		letters [ ,alpha ]. For mathematical simbols some of the shortcuts are 
		a dot followed by the name [ .naturalnumbers ] and in some cases a dot 
		followed by a convination con simbols [ .!= ]		
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
Menu, Tray, Icon, charHelper_On.ico, , 1
Return

; Greek letters  -----------------
::.alpha::{U+03B1} ;             ɑ
::.beta::{U+03B2} ;              β
::.gamma::{U+03B3} ;             γ
::.delta::{U+03B4} ;             δ
::.epsilon::{U+03B5} ;           ε
::.zeta::{U+03B6} ;              ζ
::.eta::{U+03B7} ;               η
::.theta::{U+03B8} ;             θ
::.iota::{U+03B9} ;              ι
::.kappa::{U+03BA} ;             κ
::.lambda::{U+03BB} ;            λ
::.mu::{U+03BC} ;                μ
::.nu::{U+03BD} ;                ν
::.xi::{U+03BE} ;                ξ
::.omikron::{U+03BF} ;           ο
::.pi::{U+03C0} ;                π
::.rho::{U+03C1} ;               ρ
::.sigma::{U+03C3} ;             σ
::.tau::{U+03C4} ;               τ
::.upsilon::{U+03C5} ;           υ
::.phi::{U+03C6} ;               φ
::.chi::{U+03C7} ;               χ
::.psi::{U+03C8} ;               ψ
::.omega::{U+03C9} ;             ω
;::.stigma::{U+03DB} ;           ϛ
;::.digamma::{U+03DD} ;          ϝ 
;::.koppa::{U+03DF} ;            ϟ
;::.sampi::{U+03E1} ;            ϡ
;::.sho::{U+03F8} ;              ϸ
;::.san::{U+03FB} ;              ϻ

; Greek Capital letters  ---------
::,alpha::{U+0391} ;             Α 
::,beta::{U+0392} ;              β 
::,gamma::{U+0393} ;             Γ 
::,delta::{U+0394} ;             Δ 
::,epsilon::{U+0395} ;           Ε 
::,zeta::{U+0396} ;              Ζ 
::,eta::{U+0397} ;               Η  
::,theta::{U+0398} ;             Θ 
::,iota::{U+0399} ;              Ι 
::,kappa::{U+039A} ;             Κ 
::,lambda::{U+039B} ;            Λ  
::,mu::{U+039C} ;                Μ 
::,nu::{U+039D} ;                Ν 
::,xi::{U+039E} ;                Ξ 
::,omikron::{U+039F} ;           Ο 
::,pi::{U+03A0} ;                Π 
::,rho::{U+03A1} ;               Ρ 
::,sigma::{U+03A3} ;             Σ 
::,tau::{U+03A4} ;               Τ 
::,upsilon::{U+03A5} ;           Υ 
::,phi::{U+03A6} ;               Φ 
::,chi::{U+03A7} ;               Χ 
::,psi::{U+03A8} ;               Ψ 
::,omega::{U+03A9} ;             Ω 
;::,stigma::{U+03BB} ;           ϛ
;::,digamma::{U+03BD} ;          ϝ
;::,koppa::{U+03BF} ;            ϟ
;::,sampi::{U+03C1} ;            ϡ
;::,sho::{U+03D8} ;              ϸ
;::,san::{U+03DB} ;              ϻ

; Mathematical characters  -------
::.infinity::{U+221E} ;          ∞
::.average::{U+00D8} ;           Ø
::.rationalnumbers::{U+211D} ;   ℝ
::.naturalnumbers::{U+2115} ;    ℕ 
::.definitionset::{U+2145} ;     ⅅ 
::.element::{U+2208} ;           ∈
::.partof::{U+2286} ;            ⊆
::.ringoperator::{U+2218} ;      ∘
::.squareroot::{U+221A} ;        √
::.forbidden::{U+21AF} ;         ↯
::.!=::{U+2260} ;                ≠ 
::.<=::{U+2264} ;                ≤
::.>=::{U+2265} ;                ≥
::.~=::{U+2248} ;                ≈
::.^=::{U+2213} ;                ≙  (U+2259)
::.?=::{U+225F} ;                ≟
::.+-::{U+00B1} ;                ± 


Hl:
	Run https://github.com/jjCotes/60-percent-ahk#character_helperahk
Return

F24:: ; Selected F24 because I dont need that hotkey that hard
	Suspend
	GoTO refreshICON

Ss:
	Suspend, Toggle      
	refreshICON:
	If A_IsSuspended {
		Menu, Tray, Check, Stop
		Menu, Tray, Icon, charHelper_Off.ico
	}
	Else {
		Menu, Tray, UnCheck, Stop
		Menu, Tray, Icon, charHelper_On.ico
	}
Return

Ex:
	ExitApp
Return

Rl:
	Reload
Return