@echo off
cls
setlocal EnableDelayedExpansion

echo %1
set url=%1
set DownPath=%USERPROFILE%\Downloads

if %url:~1,8% EQU annie:// (
    echo link from chrome
    if %url:~9,1% EQU 1 (
      set proxy=-x "127.0.0.1:10808"
      set itag=
      set url=%url:~10,-1%
    )
    if %url:~9,1% EQU 0 (
      set proxy=
      set itag=
      set url=%url:~10,-1%
      goto :AnnieDown
    )
    
  )

:AnnieDown
echo I don't know if I need itag anymore
::wsl annie %proxy% %itag% -o %DownPath%  %url%
cd %DownPath%
annie %proxy% %itag% %url%
pause
