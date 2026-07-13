@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

sing-box.exe merge config.json -c outbounds/outbounds.json -C fields && sing-box.exe run
