#Include .env
#SingleInstance force
menu, tray, NoStandard
menu, tray, add, Exit
Return

Exit:
	exitapp
Return


; Left Control + Space to toggle language input
<^Space::VK15

; Left Shift + Backspace to launch Wox
<+Backspace::
	Run, C:\Users\LUFT-AQUILA\AppData\Local\Wox\Wox.exe
  WinWait, Wox
  WinActivate, Wox
	Send ^a
	Send {Backspace}
return

; Left Control + ESC to send backtick
<^Esc:: SendRaw ``

; Cursor controls
<!J:: Send {Left}
<!K:: Send {Down}
<!I:: Send {Up}
<!L:: Send {Right}
<!Left:: Send {Home}
<!Right:: Send {End}

; Mouse click to browse
~LButton & RButton Up::Send {XButton2}
~RButton & LButton Up::Send {XButton1}

; Win + z to toggle taskbar
#z:: HideShowTaskbar(hide := !hide)
HideShowTaskbar(action) {
   static ABM_SETSTATE := 0xA, ABS_AUTOHIDE := 0x1, ABS_ALWAYSONTOP := 0x2
   VarSetCapacity(APPBARDATA, size := 2*A_PtrSize + 2*4 + 16 + A_PtrSize, 0)
   NumPut(size, APPBARDATA), NumPut(WinExist("ahk_class Shell_TrayWnd"), APPBARDATA, A_PtrSize)
   NumPut(action ? ABS_AUTOHIDE : ABS_ALWAYSONTOP, APPBARDATA, size - A_PtrSize)
   DllCall("Shell32\SHAppBarMessage", UInt, ABM_SETSTATE, Ptr, &APPBARDATA)
}

:*:wheart::♡
:*:bheart::♥
:*:wstar::☆
:*:bstar::★
:*C:ud`t::_
:*:wdt::⚬

:*:uarr::↑
:*:darr::↓
:*:larr::←
:*:rarr::→
:*:ularr::↖
:*:urarr::↗
:*:dlarr::↙
:*:drarr::↘

:*R:lu`t::luftaquila
:*R:em`t::mail@luftaquila.io

:*R:kk`t::
	EnvGet, pw, kakaoTalkPassword
  Send %pw%
Return
