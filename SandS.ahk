#InstallKeybdHook
;Spaceを押したとき
*Space::
	if (isSpaceRepeat == true)		;キーリピートしているかどうか
	{
		if (A_PriorKey != "Space")		;Space長押し中の他キー押し下げを検出
		{
			KeyWait, Space
			Send {Blind}{ShiftUp}		;Shiftをリリース
			isSpaceRepeat := false
			Return
		}
		else Return
	}
	
	Send {Blind}{ShiftDown}		;Shiftを押し下げ
	isSpaceRepeat := true
Return

;Spaceを離したとき
*Space up::
	Send {Blind}{ShiftUp}		;Shiftをリリース
	isSpaceRepeat := false
	if (A_PriorKey == "Space"){		;Space単押しを検出
		Send {Blind}{Space}		;Spaceを入力
	}
Return