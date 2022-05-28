#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
GroupAdd, roz, ahk_exe Discord.exe
GroupAdd, roz, ahk_exe Messenger.exe
#IfWinActive
^m::
Pause:: ;Pause Break button is my chosen hotkey

    SoundSet, +1, MASTER, mute,9 ;12 was my mic id number use the code below the dotted line to find your mic id. you need to replace all 12's  <---------IMPORTANT
    SoundGet, master_mute, , mute, 9

    ToolTip, Mute %master_mute% ;use a tool tip at mouse pointer to show what state mic is after toggle
    SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
    SetTimer, RemoveToolTip, Off
    ToolTip
return

MuteMic()
return
MuteMic() {
    local MM
    SoundSet, +1, MASTER:1, MUTE, 9
    SoundGet, MM, MASTER:1, MUTE, 9
    #Persistent
    ToolTip, % (MM == "On" ? "Microphone muted" : "Microphone online")
    SetTimer, RemoveMuteMicTooltip, 700
return
}

RemoveMuteMicTooltip:
    SetTimer, RemoveMuteMicTooltip, Off
    ToolTip
return
F1::
    WinGetTitle, Title, A
    MinimazeAndStopVid()
    WinMinimize, %Title%
    Run, Firefox.exe
    WinWait, Mozilla Firefox
    WinMaximize ; Use the window found by WinWait.
    KeyWait, Shift, D
    if WinExist("Mozilla Firefox"){
        WinClose, Mozilla Firefox

    }
    WinActivate, %Title%
    MinimazeAndStopVid()
return
return
MinimazeAndStopVid()
{

    SendInput, {f}
    SendInput, {Space}
    ;Sleep, 500
return
}
:*:wgl::w ogóle

:*:nmzc::Nie ma za co
:*:spk::spoko
:*:dzk::dzięki
:*:nwm::nie wiem
:*:czm::czemu
:*:kk::okok
:*:mg::mogę
:*:nmg::nie mogę
:*:wsm::w sumie
:*::so:::😭
:*:skull::💀
:*::pe::😔
:*:XD::
    Random, num, 0, 3
    if (num = 0){
        Send, lol
    }
    else if (num = 1){
        Send, lmao
    }
    Else{
        Send, lmfao
    }
return