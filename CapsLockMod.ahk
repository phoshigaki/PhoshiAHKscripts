#InstallKeybdHook
;CapsLockの押し下げを検知
*CapsLock::
	Suspend, Permit
	isCapsDown := true
	KeyWait CapsLock
	isCapsDown := false
Return

#If isCapsDown == false


#If isCapsDown == true		;以下のスクリプトはCapsLock押し下げ時のみ
e::Suspend, Off ;Enable hotkeys
d::Suspend, On ;Disable hotkeys

;CapsLock
c::sc03A

;方向キー
i::Up
j::Left
k::Down
l::Right

;ファンクションキー
t::F1
g::F2
b::F3
y::F4
h::F5
n::F6									
m::F7
sc033::F8		;カンマ(,)
.::F9
/::F10

;削除系
u::BackSpace
o::Delete
p::Esc

;default
; | t | y | u | i | o | p |
;  | g | h | j | k | l |
;   | b | n | m | , | . | / |

;CapsLock down
; | F1| F4| BS| ^ |Del|Esc|
;  | F2| F5| < | v | > |
;   | F3| F6| F7| F8| F9|F10|
#If		;以下のスクリプトは文脈に依存しない