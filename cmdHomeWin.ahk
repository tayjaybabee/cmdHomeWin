#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

EnvGet, EnvVar, USERNAME

Run, %ComSpec% /c ""C:\Windows\py.exe" "%A_ScriptDir%\service\win_start.py""

::cd ~::
    Send, cd C:/Users/%EnvVar%{enter}
    TrayTip, Changed Input, Converted 'cd ~' to the actual path, 20, 17
