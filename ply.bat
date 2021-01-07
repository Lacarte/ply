@echo off
REM cd "C:\Users\LCRT\Desktop\New courses\@extracted\[GigaCourse.com] Udemy - NestJS Zero to Hero - Modern TypeScript Back-end Development"
REM "C:\Program Files\VideoLAN\VLC\vlc.exe" --playlist-autostart --loop --playlist-tree "C:\Users\LCRT\Desktop\New courses\@extracted\[GigaCourse.com] Udemy - NestJS Zero to Hero - Modern TypeScript Back-end Development"


REM WHERE vlc
REM IF %ERRORLEVEL% NEQ 0 ECHO mycommand wasn't found 
REM pause


REM where /q vlc
REM IF ERRORLEVEL 1 (
REM    ECHO The application is missing. Ensure it is installed and placed in your PATH.
REM    pause
REM     EXIT /B
REM ) ELSE (
REM    ECHO Application exists. Let's go!
REM )

REM pause
cls
color 0C
echo REMEMBER ONLY RUN PLY COMMAND INSIDE A DIRECTORY OF MEDIA(MP3,MP4,OGG)
PING 127.0.0.1 -n 4 >NUL 2>&1

IF EXIST  "C:\Program Files\VideoLAN\VLC\vlc.exe"  (GOTO yesfile) else goto nofile
pause

:yesfile
CLs
COLOR 0E
REM ECHO  "VLC FOUND"
chdir > %~dp0\current_pwd
set /p DATA=< %~dp0\current_pwd
REM echo %DATA%
del %~dp0\current_pwd

REM ANIMATION
PING 127.0.0.1 -n 2 >NUL 2>&1
color 0a
set v=.
set /a l=0
set var=
:loop
if %l% GEQ 25 goto play
set "var=%var%%v%"
set /a l+=1
PING 127.0.0.1 -n 1 >NUL 2>&1
color 0a
cls
echo %var% 
goto loop

:play
color 0a
echo ENJOY YOUR PLAYLIST
"C:\Program Files\VideoLAN\VLC\vlc.exe" --playlist-autostart --loop --playlist-tree "%DATA%"
goto end
pause

:nofile
color 0C
ECHO  VLC NOT FOUND
goto end
pause

:end
ECHO  BYE
PING 127.0.0.1 -n 4 >NUL 2>&1
exit /b


