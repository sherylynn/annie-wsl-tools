@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
@echo off
cls
setlocal EnableDelayedExpansion
rem %~fs0是执行文件 %~dp0是文件夹
Reg delete HKCR\annie /f
Reg add HKCR\annie /ve /t REG_SZ /d "URL:annie Protocol Handler" /f
Reg add HKCR\annie /v "URL Protocol" /t REG_SZ /f
Reg add HKCR\annie\shell\open\command /ve  /t REG_SZ /d "%~dp0annie-exe-tools.bat \"%%1\"" /f
echo test
pause