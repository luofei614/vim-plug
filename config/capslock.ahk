SetCapsLockState , AlwaysOff
CapsLock & b::SendInput {Left}
CapsLock & n::SendInput {Down}
CapsLock & p::SendInput {Up}
CapsLock & f::SendInput {Right}
CapsLock & a::SendInput {Home}
CapsLock & e::SendInput {End}
CapsLock & d::SendInput {Delete}
CapsLock & k::SendInput, +{End}{Delete}
;Shift & CapsLock::SendInput, {Shift Down}{Blind}{Esc}{Shift Up}
;用^表示ctrl 用+表示 shift
CapsLock::SendInput ^
;Esc::CapsLock
;下面是以前自己做给windows和mac键位兼容的映射
;Capslock::Ctrl
;LWin::Alt
;Alt::Ctrl
