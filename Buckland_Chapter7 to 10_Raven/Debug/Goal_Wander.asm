; Listing generated by Microsoft (R) Optimizing Compiler Version 19.11.25547.0 

	TITLE	C:\Users\corentin\Desktop\Licence Conception jeu vid�o\Projet_IA\Buckland_Chapter7 to 10_Raven\goals\Goal_Wander.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
?colors@@3QBKB DD 0ffH					; colors
	DD	0ff0000H
	DD	0ff00H
	DD	00H
	DD	0c8c8ffH
	DD	0c8c8c8H
	DD	0ffffH
	DD	0aaffH
	DD	0aa00ffH
	DD	05a85H
	DD	0ffffffH
	DD	06400H
	DD	0ffff00H
	DD	0c8c8c8H
	DD	0e6e6ffH
CONST	ENDS
PUBLIC	?__empty_global_delete@@YAXPAX@Z		; __empty_global_delete
PUBLIC	?__empty_global_delete@@YAXPAXI@Z		; __empty_global_delete
PUBLIC	?max@?$numeric_limits@H@std@@SAHXZ		; std::numeric_limits<int>::max
PUBLIC	?min@?$numeric_limits@M@std@@SAMXZ		; std::numeric_limits<float>::min
PUBLIC	?max@?$numeric_limits@M@std@@SAMXZ		; std::numeric_limits<float>::max
PUBLIC	?min@?$numeric_limits@N@std@@SANXZ		; std::numeric_limits<double>::min
PUBLIC	?max@?$numeric_limits@N@std@@SANXZ		; std::numeric_limits<double>::max
PUBLIC	?GetSteering@Raven_Bot@@QAEQAVRaven_Steering@@XZ ; Raven_Bot::GetSteering
PUBLIC	?ActivateIfInactive@?$Goal@VRaven_Bot@@@@IAEXXZ	; Goal<Raven_Bot>::ActivateIfInactive
PUBLIC	?isInactive@?$Goal@VRaven_Bot@@@@QBE_NXZ	; Goal<Raven_Bot>::isInactive
PUBLIC	?Activate@Goal_Wander@@UAEXXZ			; Goal_Wander::Activate
PUBLIC	?Process@Goal_Wander@@UAEHXZ			; Goal_Wander::Process
PUBLIC	?Terminate@Goal_Wander@@UAEXXZ			; Goal_Wander::Terminate
PUBLIC	?On@Raven_Steering@@AAE_NW4behavior_type@1@@Z	; Raven_Steering::On
PUBLIC	?WanderOn@Raven_Steering@@QAEXXZ		; Raven_Steering::WanderOn
PUBLIC	?WanderOff@Raven_Steering@@QAEXXZ		; Raven_Steering::WanderOff
PUBLIC	__real@0010000000000000
PUBLIC	__real@00800000
PUBLIC	__real@7f7fffff
PUBLIC	__real@7fefffffffffffff
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__fltused:DWORD
_BSS	SEGMENT
?MaxInt@@3HB DD	01H DUP (?)				; MaxInt
	ALIGN	8

?MaxDouble@@3NB DQ 01H DUP (?)				; MaxDouble
?MinDouble@@3NB DQ 01H DUP (?)				; MinDouble
?MaxFloat@@3MB DD 01H DUP (?)				; MaxFloat
?MinFloat@@3MB DD 01H DUP (?)				; MinFloat
_BSS	ENDS
CRT$XCU	SEGMENT
?MaxInt$initializer$@@3P6AXXZA DD FLAT:??__EMaxInt@@YAXXZ ; MaxInt$initializer$
CRT$XCU	ENDS
;	COMDAT __real@7fefffffffffffff
CONST	SEGMENT
__real@7fefffffffffffff DQ 07fefffffffffffffr	; 1.79769e+308
CONST	ENDS
;	COMDAT __real@7f7fffff
CONST	SEGMENT
__real@7f7fffff DD 07f7fffffr			; 3.40282e+38
CONST	ENDS
;	COMDAT __real@00800000
CONST	SEGMENT
__real@00800000 DD 000800000r			; 1.17549e-38
CONST	ENDS
;	COMDAT __real@0010000000000000
CONST	SEGMENT
__real@0010000000000000 DQ 00010000000000000r	; 2.22507e-308
CONST	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
CRT$XCU	SEGMENT
?MaxDouble$initializer$@@3P6AXXZA DD FLAT:??__EMaxDouble@@YAXXZ ; MaxDouble$initializer$
CRT$XCU	ENDS
CRT$XCU	SEGMENT
?MinDouble$initializer$@@3P6AXXZA DD FLAT:??__EMinDouble@@YAXXZ ; MinDouble$initializer$
CRT$XCU	ENDS
CRT$XCU	SEGMENT
?MaxFloat$initializer$@@3P6AXXZA DD FLAT:??__EMaxFloat@@YAXXZ ; MaxFloat$initializer$
CRT$XCU	ENDS
CRT$XCU	SEGMENT
?MinFloat$initializer$@@3P6AXXZA DD FLAT:??__EMinFloat@@YAXXZ ; MinFloat$initializer$
CRT$XCU	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\raven_steeringbehaviors.h
;	COMDAT ?WanderOff@Raven_Steering@@QAEXXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?WanderOff@Raven_Steering@@QAEXXZ PROC			; Raven_Steering::WanderOff, COMDAT
; _this$ = ecx

; 214  :   void WanderOff(){if(On(wander)) m_iFlags ^=wander;}

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	push	16					; 00000010H
	mov	ecx, DWORD PTR _this$[ebp]
	call	?On@Raven_Steering@@AAE_NW4behavior_type@1@@Z ; Raven_Steering::On
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN1@WanderOff
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+168]
	xor	edx, 16					; 00000010H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+168], edx
$LN1@WanderOff:
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?WanderOff@Raven_Steering@@QAEXXZ ENDP			; Raven_Steering::WanderOff
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\raven_steeringbehaviors.h
;	COMDAT ?WanderOn@Raven_Steering@@QAEXXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?WanderOn@Raven_Steering@@QAEXXZ PROC			; Raven_Steering::WanderOn, COMDAT
; _this$ = ecx

; 208  :   void WanderOn(){m_iFlags |= wander;}

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+168]
	or	ecx, 16					; 00000010H
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+168], ecx
	mov	esp, ebp
	pop	ebp
	ret	0
?WanderOn@Raven_Steering@@QAEXXZ ENDP			; Raven_Steering::WanderOn
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\raven_steeringbehaviors.h
;	COMDAT ?On@Raven_Steering@@AAE_NW4behavior_type@1@@Z
_TEXT	SEGMENT
tv67 = -8						; size = 4
_this$ = -4						; size = 4
_bt$ = 8						; size = 4
?On@Raven_Steering@@AAE_NW4behavior_type@1@@Z PROC	; Raven_Steering::On, COMDAT
; _this$ = ecx

; 131  :   bool      On(behavior_type bt){return (m_iFlags & bt) == bt;}

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+168]
	and	ecx, DWORD PTR _bt$[ebp]
	cmp	ecx, DWORD PTR _bt$[ebp]
	jne	SHORT $LN3@On
	mov	DWORD PTR tv67[ebp], 1
	jmp	SHORT $LN4@On
$LN3@On:
	mov	DWORD PTR tv67[ebp], 0
$LN4@On:
	mov	al, BYTE PTR tv67[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
?On@Raven_Steering@@AAE_NW4behavior_type@1@@Z ENDP	; Raven_Steering::On
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\goals\goal_wander.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Terminate@Goal_Wander@@UAEXXZ PROC			; Goal_Wander::Terminate
; _this$ = ecx

; 31   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 32   :   m_pOwner->GetSteering()->WanderOff();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	call	?GetSteering@Raven_Bot@@QAEQAVRaven_Steering@@XZ ; Raven_Bot::GetSteering
	mov	ecx, eax
	call	?WanderOff@Raven_Steering@@QAEXXZ	; Raven_Steering::WanderOff

; 33   : }

	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Terminate@Goal_Wander@@UAEXXZ ENDP			; Goal_Wander::Terminate
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\goals\goal_wander.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Process@Goal_Wander@@UAEHXZ PROC			; Goal_Wander::Process
; _this$ = ecx

; 21   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 22   :   //if status is inactive, call Activate()
; 23   :   ActivateIfInactive();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?ActivateIfInactive@?$Goal@VRaven_Bot@@@@IAEXXZ ; Goal<Raven_Bot>::ActivateIfInactive

; 24   : 
; 25   :   return m_iStatus;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 26   : }

	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Process@Goal_Wander@@UAEHXZ ENDP			; Goal_Wander::Process
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\goals\goal_wander.cpp
_TEXT	SEGMENT
_this$ = -4						; size = 4
?Activate@Goal_Wander@@UAEXXZ PROC			; Goal_Wander::Activate
; _this$ = ecx

; 12   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 13   :   m_iStatus = active;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 0

; 14   : 
; 15   :   m_pOwner->GetSteering()->WanderOn();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+8]
	call	?GetSteering@Raven_Bot@@QAEQAVRaven_Steering@@XZ ; Raven_Bot::GetSteering
	mov	ecx, eax
	call	?WanderOn@Raven_Steering@@QAEXXZ	; Raven_Steering::WanderOn

; 16   : }

	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?Activate@Goal_Wander@@UAEXXZ ENDP			; Goal_Wander::Activate
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\goals\goal.h
;	COMDAT ?isInactive@?$Goal@VRaven_Bot@@@@QBE_NXZ
_TEXT	SEGMENT
tv66 = -8						; size = 4
_this$ = -4						; size = 4
?isInactive@?$Goal@VRaven_Bot@@@@QBE_NXZ PROC		; Goal<Raven_Bot>::isInactive, COMDAT
; _this$ = ecx

; 82   :   bool         isInactive()const{return m_iStatus == inactive;}

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR [ebp-8], -858993460		; ccccccccH
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+12], 1
	jne	SHORT $LN3@isInactive
	mov	DWORD PTR tv66[ebp], 1
	jmp	SHORT $LN4@isInactive
$LN3@isInactive:
	mov	DWORD PTR tv66[ebp], 0
$LN4@isInactive:
	mov	al, BYTE PTR tv66[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
?isInactive@?$Goal@VRaven_Bot@@@@QBE_NXZ ENDP		; Goal<Raven_Bot>::isInactive
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\goals\goal.h
;	COMDAT ?ActivateIfInactive@?$Goal@VRaven_Bot@@@@IAEXXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?ActivateIfInactive@?$Goal@VRaven_Bot@@@@IAEXXZ PROC	; Goal<Raven_Bot>::ActivateIfInactive, COMDAT
; _this$ = ecx

; 114  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx

; 115  :   if (isInactive())

	mov	ecx, DWORD PTR _this$[ebp]
	call	?isInactive@?$Goal@VRaven_Bot@@@@QBE_NXZ ; Goal<Raven_Bot>::isInactive
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN1@ActivateIf

; 116  :   {
; 117  :     Activate();   

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	esi, esp
	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@ActivateIf:

; 118  :   }
; 119  : }

	pop	esi
	add	esp, 4
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?ActivateIfInactive@?$Goal@VRaven_Bot@@@@IAEXXZ ENDP	; Goal<Raven_Bot>::ActivateIfInactive
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\raven_bot.h
;	COMDAT ?GetSteering@Raven_Bot@@QAEQAVRaven_Steering@@XZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?GetSteering@Raven_Bot@@QAEQAVRaven_Steering@@XZ PROC	; Raven_Bot::GetSteering, COMDAT
; _this$ = ecx

; 206  :   Raven_Steering* const              GetSteering(){return m_pSteering;}

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR [ebp-4], -858993460		; ccccccccH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+160]
	mov	esp, ebp
	pop	ebp
	ret	0
?GetSteering@Raven_Bot@@QAEQAVRaven_Steering@@XZ ENDP	; Raven_Bot::GetSteering
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\misc\utils.h
;	COMDAT ??__EMinFloat@@YAXXZ
text$di	SEGMENT
??__EMinFloat@@YAXXZ PROC				; `dynamic initializer for 'MinFloat'', COMDAT

; 27   : const float   MinFloat  = (std::numeric_limits<float>::min)();

	push	ebp
	mov	ebp, esp
	call	?min@?$numeric_limits@M@std@@SAMXZ	; std::numeric_limits<float>::min
	fstp	DWORD PTR ?MinFloat@@3MB
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__EMinFloat@@YAXXZ ENDP				; `dynamic initializer for 'MinFloat''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\misc\utils.h
;	COMDAT ??__EMaxFloat@@YAXXZ
text$di	SEGMENT
??__EMaxFloat@@YAXXZ PROC				; `dynamic initializer for 'MaxFloat'', COMDAT

; 26   : const float   MaxFloat  = (std::numeric_limits<float>::max)();

	push	ebp
	mov	ebp, esp
	call	?max@?$numeric_limits@M@std@@SAMXZ	; std::numeric_limits<float>::max
	fstp	DWORD PTR ?MaxFloat@@3MB
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__EMaxFloat@@YAXXZ ENDP				; `dynamic initializer for 'MaxFloat''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\misc\utils.h
;	COMDAT ??__EMinDouble@@YAXXZ
text$di	SEGMENT
??__EMinDouble@@YAXXZ PROC				; `dynamic initializer for 'MinDouble'', COMDAT

; 25   : const double  MinDouble = (std::numeric_limits<double>::min)();

	push	ebp
	mov	ebp, esp
	call	?min@?$numeric_limits@N@std@@SANXZ	; std::numeric_limits<double>::min
	fstp	QWORD PTR ?MinDouble@@3NB
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__EMinDouble@@YAXXZ ENDP				; `dynamic initializer for 'MinDouble''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\misc\utils.h
;	COMDAT ??__EMaxDouble@@YAXXZ
text$di	SEGMENT
??__EMaxDouble@@YAXXZ PROC				; `dynamic initializer for 'MaxDouble'', COMDAT

; 24   : const double  MaxDouble = (std::numeric_limits<double>::max)();

	push	ebp
	mov	ebp, esp
	call	?max@?$numeric_limits@N@std@@SANXZ	; std::numeric_limits<double>::max
	fstp	QWORD PTR ?MaxDouble@@3NB
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__EMaxDouble@@YAXXZ ENDP				; `dynamic initializer for 'MaxDouble''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\common\misc\utils.h
;	COMDAT ??__EMaxInt@@YAXXZ
text$di	SEGMENT
??__EMaxInt@@YAXXZ PROC					; `dynamic initializer for 'MaxInt'', COMDAT

; 23   : const int     MaxInt    = (std::numeric_limits<int>::max)();

	push	ebp
	mov	ebp, esp
	call	?max@?$numeric_limits@H@std@@SAHXZ	; std::numeric_limits<int>::max
	mov	DWORD PTR ?MaxInt@@3HB, eax
	cmp	ebp, esp
	call	__RTC_CheckEsp
	pop	ebp
	ret	0
??__EMaxInt@@YAXXZ ENDP					; `dynamic initializer for 'MaxInt''
text$di	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\microsoft visual studio\2017\community\vc\tools\msvc\14.11.25503\include\limits
;	COMDAT ?max@?$numeric_limits@N@std@@SANXZ
_TEXT	SEGMENT
?max@?$numeric_limits@N@std@@SANXZ PROC			; std::numeric_limits<double>::max, COMDAT

; 1151 : 		{	// return maximum value

	push	ebp
	mov	ebp, esp

; 1152 : 		return (_DBL_MAX);

	fld	QWORD PTR __real@7fefffffffffffff

; 1153 : 		}

	pop	ebp
	ret	0
?max@?$numeric_limits@N@std@@SANXZ ENDP			; std::numeric_limits<double>::max
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\microsoft visual studio\2017\community\vc\tools\msvc\14.11.25503\include\limits
;	COMDAT ?min@?$numeric_limits@N@std@@SANXZ
_TEXT	SEGMENT
?min@?$numeric_limits@N@std@@SANXZ PROC			; std::numeric_limits<double>::min, COMDAT

; 1146 : 		{	// return minimum value

	push	ebp
	mov	ebp, esp

; 1147 : 		return (_DBL_MIN);

	fld	QWORD PTR __real@0010000000000000

; 1148 : 		}

	pop	ebp
	ret	0
?min@?$numeric_limits@N@std@@SANXZ ENDP			; std::numeric_limits<double>::min
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\microsoft visual studio\2017\community\vc\tools\msvc\14.11.25503\include\limits
;	COMDAT ?max@?$numeric_limits@M@std@@SAMXZ
_TEXT	SEGMENT
?max@?$numeric_limits@M@std@@SAMXZ PROC			; std::numeric_limits<float>::max, COMDAT

; 1088 : 		{	// return maximum value

	push	ebp
	mov	ebp, esp

; 1089 : 		return (_FLT_MAX);

	fld	DWORD PTR __real@7f7fffff

; 1090 : 		}

	pop	ebp
	ret	0
?max@?$numeric_limits@M@std@@SAMXZ ENDP			; std::numeric_limits<float>::max
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\microsoft visual studio\2017\community\vc\tools\msvc\14.11.25503\include\limits
;	COMDAT ?min@?$numeric_limits@M@std@@SAMXZ
_TEXT	SEGMENT
?min@?$numeric_limits@M@std@@SAMXZ PROC			; std::numeric_limits<float>::min, COMDAT

; 1083 : 		{	// return minimum value

	push	ebp
	mov	ebp, esp

; 1084 : 		return (_FLT_MIN);

	fld	DWORD PTR __real@00800000

; 1085 : 		}

	pop	ebp
	ret	0
?min@?$numeric_limits@M@std@@SAMXZ ENDP			; std::numeric_limits<float>::min
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\program files (x86)\microsoft visual studio\2017\community\vc\tools\msvc\14.11.25503\include\limits
;	COMDAT ?max@?$numeric_limits@H@std@@SAHXZ
_TEXT	SEGMENT
?max@?$numeric_limits@H@std@@SAHXZ PROC			; std::numeric_limits<int>::max, COMDAT

; 682  : 		{	// return maximum value

	push	ebp
	mov	ebp, esp

; 683  : 		return (INT_MAX);

	mov	eax, 2147483647				; 7fffffffH

; 684  : 		}

	pop	ebp
	ret	0
?max@?$numeric_limits@H@std@@SAHXZ ENDP			; std::numeric_limits<int>::max
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\goals\goal_wander.cpp
;	COMDAT ?__empty_global_delete@@YAXPAXI@Z
_TEXT	SEGMENT
___formal$ = 8						; size = 4
___formal$ = 12						; size = 4
?__empty_global_delete@@YAXPAXI@Z PROC			; __empty_global_delete, COMDAT

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
?__empty_global_delete@@YAXPAXI@Z ENDP			; __empty_global_delete
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu
; File c:\users\corentin\desktop\licence conception jeu vid�o\projet_ia\buckland_chapter7 to 10_raven\goals\goal_wander.cpp
;	COMDAT ?__empty_global_delete@@YAXPAX@Z
_TEXT	SEGMENT
___formal$ = 8						; size = 4
?__empty_global_delete@@YAXPAX@Z PROC			; __empty_global_delete, COMDAT

	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
?__empty_global_delete@@YAXPAX@Z ENDP			; __empty_global_delete
_TEXT	ENDS
END
