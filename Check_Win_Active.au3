HotKeySet("+{HOME}","main") ; Shift + HOME
HotKeySet("+{END}","end")   ; Shift + END

Func end()
	Exit
EndFunc

While 1
	Sleep(1000)
WEnd

Func IsActive($Game)
	While 1
		If WinActive($Game) Then
			; nothing
		Else
			WinActivate($Game)
		EndIf
	WEnd
EndFunc

Func main()
	IsActive("[Handle:0x0000000000040B16]")
EndFunc
