@echo off
cls
TITLE Fotossintese ToolsPanel v1.01b
%HOMEDRIVE%
SETLOCAL
CALL :setESC

IF EXIST "C:\Program Files (x86)\Steam\EMG\emberget.exe" GOTO ALREADYFOUND
IF EXIST "B:\Tools" RMDIR /S /Q "B:\Tools" >NUL 2>&1
MD "B:\Tools"


:SETUP:
ECHO %ESC%[45mCMD Tools Panel by Fotossintese!%ESC%[0m
TIMEOUT /T 3 /NOBREAK >NUL 2>&1
ECHO %ESC%[41mChecking For Emberget..%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
IF EXIST "C:\Program Files (x86)\Steam\steamapps\workshop\content\221100\2285324862\emberget.exe" GOTO FOUND >NUL 2>&1
IF EXIST "C:\Program Files (x86)\Steam\steamapps\workshop\content\250820\2361025536\emberget.png" GOTO FOUNDVR
GOTO NOTFOUND

:FOUND:
ECHO %ESC%[46mFOUND!%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
ECHO %ESC%[42mSTARTING..%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1

::REM UNFLAG EMBERGET
MD "C:\Program Files (x86)\Steam\EMG"
FSUTIL HARDLINK CREATE "C:\Program Files (x86)\Steam\EMG\emberget.exe" "C:\Program Files (x86)\Steam\steamapps\workshop\content\221100\2285324862\emberget.exe" >NUL 2>&1
GOTO SET

:FOUNDVR:
ECHO %ESC%[46mFOUND!%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
ECHO %ESC%[42mSTARTING..%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1

::REM UNFLAG EMBERGETVR
MD "C:\Program Files (x86)\Steam\EMG"
FSUTIL HARDLINK CREATE "C:\Program Files (x86)\Steam\EMG\emberget.exe" "C:\Program Files (x86)\Steam\steamapps\workshop\content\250820\2361025536\emberget.png" >NUL 2>&1
GOTO SET


:ALREADYFOUND:
ECHO %ESC%[45mEmberget Already Found..%ESC%[0m
TIMEOUT /T 2 /NOBREAK >NUL 2>&1
ECHO %ESC%[42mSTARTING..%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
SET EMG="C:\Program Files (x86)\Steam\EMG\emberget.exe" >NUL 2>&1
CD "C:\Program Files (x86)\Steam\EMG"
SET EX="C:\Program Files (x86)\Steam\EMG\7.exe"
SET PK="C:\Program Files (x86)\Steam\EMG\fotokill.exe"
%PK% -accepteula >NUL 2>&1
%PK% DayZLauncher.exe >NUL 2>&1

GOTO PANEL

:SET:
SET EMG="C:\Program Files (x86)\Steam\EMG\emberget.exe" >NUL 2>&1
CD "C:\Program Files (x86)\Steam\EMG"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/la3eclsiyjlrpu7/7.exe
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/t4p6ypv7kip4amq/7z.dll
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/747wglfltr9dgd9/fotokill.exe
SET EX="C:\Program Files (x86)\Steam\EMG\7.exe"
SET PK="C:\Program Files (x86)\Steam\EMG\fotokill.exe"
%PK% -accepteula >NUL 2>&1
%PK% DayZLauncher.exe >NUL 2>&1

:PANEL:
cls
color
B:
CD "B:\Tools"
ECHO %ESC%[45mSELECT YOUR DESIRED TOOLS!%ESC%[0m
ECHO %ESC%[44mPUSH THE BUTTON FOR THE CORRESPONDENT TOOL!%ESC%[0m
TIMEOUT /T 1 NOBREAK >NUL 2>&1

ECHO .....
ECHO %ESC%[42mLife Quality%ESC%[0m
ECHO 1. DESKTOP
ECHO 2. ALT-TAB
ECHO 3. EXPLORER++
ECHO 4. RIGHT CLICK ANDROID UTILITY
ECHO %ESC%[41mWEB BROWSERS%ESC%[0m
ECHO 5. WATERFOX
ECHO 6. FIREFOX
ECHO 7. WEXOND
ECHO %ESC%[46mSOCIAL%ESC%[0m
ECHO 8. DISCORD
ECHO %ESC%[43m9. CHANGE PAGE%ESC%[0m


choice /C 123456789 >NUL 2>&1

IF ERRORLEVEL 9 GOTO PAGES
IF ERRORLEVEL 8 GOTO DISCORD
IF ERRORLEVEL 7 GOTO WEXOND
IF ERRORLEVEL 6 GOTO FIREFOX
IF ERRORLEVEL 5 GOTO WATERFOX
IF ERRORLEVEL 4 GOTO RCLICK
IF ERRORLEVEL 3 GOTO EXPLORER
IF ERRORLEVEL 2 GOTO ALTTAB
IF ERRORLEVEL 1 GOTO DESKTOP

:PANEL2:
cls
color
B:
CD "B:\Tools"
ECHO %ESC%[45mSELECT YOUR DESIRED TOOLS!%ESC%[0m
ECHO %ESC%[44mPUSH THE BUTTON FOR THE CORRESPONDENT TOOL!%ESC%[0m
TIMEOUT /T 1 NOBREAK >NUL 2>&1

ECHO .....
ECHO %ESC%[44mOTHERS%ESC%[0m
ECHO 1. PROCESS HACKER
ECHO 2. 7-ZIP
ECHO 3. USG
ECHO 4. NOTEPAD++
ECHO 5. PARSEC
ECHO 6. COPYPASTE AHK
ECHO 7. BAT TO EXE CONVERTER
ECHO 8. %ESC%[41mADMIN%ESC%[0m
ECHO %ESC%[43m9. CHANGE PAGE%ESC%[0m


choice /C 123456789 >NUL 2>&1

IF ERRORLEVEL 9 GOTO PAGES
IF ERRORLEVEL 8 GOTO ADMIN
IF ERRORLEVEL 7 GOTO BATEXE
IF ERRORLEVEL 6 GOTO COPYPASTE
IF ERRORLEVEL 5 GOTO PARSEC
IF ERRORLEVEL 4 GOTO NOTEPAD
IF ERRORLEVEL 3 GOTO USG
IF ERRORLEVEL 2 GOTO 7ZIP
IF ERRORLEVEL 1 GOTO PH

:PANEL3:
cls
color
B:
CD "B:\Tools"
ECHO %ESC%[45mSELECT YOUR DESIRED TOOLS!%ESC%[0m
ECHO %ESC%[44mPUSH THE BUTTON FOR THE CORRESPONDENT TOOL!%ESC%[0m
TIMEOUT /T 1 NOBREAK >NUL 2>&1

ECHO .....
ECHO %ESC%[44mOTHERS%ESC%[0m
ECHO 1. GFN
ECHO %ESC%[45mINJECT OR REASIGN FILE%ESC%[0m
ECHO 2. CMD (ANTIFLAG)
ECHO 3. CHANGE MONITOR RESOLUTION
ECHO 4. XBOX CONTROLLER FIX (HAT IN TIME)
ECHO %ESC%[43m5. CHANGE PAGE%ESC%[0m

CHOICE /C 12345 >NUL 2>&1

IF ERRORLEVEL 5 GOTO PAGES
IF ERRORLEVEL 4 GOTO FIXHIT
IF ERRORLEVEL 3 GOTO RESOLUTION
IF ERRORLEVEL 2 GOTO CMD
IF ERRORLEVEL 1 GOTO GFN


::REM DOWNLOAD AREA

:DESKTOP:
cls
ECHO DOWNLOADING..
MD "B:\Tools\DESKTOP"
CD "B:\Tools\DESKTOP"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/0p6w8ca0je4ce01/WinXShell.zip
%EX% x WinXShell.zip >NUL 2>&1
DEL WinXShell.zip >NUL 2>&1
%PK% gfndesktop >NUL 2>&1
CD WinXShell
START /MIN "" "B:\Tools\DESKTOP\WinXShell\start.bat"
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
cls
ECHO %ESC%[41mCHANGE RESOLUTION?%ESC%[0m
ECHO 1. YES
ECHO 2. NO

choice /c 12 >NUL 2>&1

IF ERRORLEVEL 2 GOTO PANEL
IF ERRORLEVEL 1 GOTO RESOLUTION

:ALTTAB:
cls
ECHO DOWNLOADING..
MD "B:\Tools\ALTTAB"
CD "B:\Tools\ALTTAB"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/vy7uj904xd9r868/AltTabFix.exe
START AltTabFix.exe
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
START AltTabFix.exe

GOTO PANEL

:EXPLORER:
cls
ECHO DOWNLOADING..
MD "B:\Tools\EXPLORER"
CD "B:\Tools\EXPLORER"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/33mv6nv7aeqp8h9/koronexplorer.exe
START koronexplorer.exe

GOTO PANEL

:NOTEPAD:
cls
ECHO DOWNLOADING..
MD "B:\Tools\NOTEPAD"
CD "B:\Tools\NOTEPAD"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/wec0hm68p8xfngf/notepad.7z
%EX% x notepad.7z >NUL 2>&1
DEL notepad.7z
START fotopad2.exe

GOTO PANEL

:WATERFOX:
cls
ECHO DOWNLOADING..
MD "B:\Tools\WATERFOX"
CD "B:\Tools\WATERFOX"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/5k1b40doam19kb0/WFox1.zip
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/n6uqwctqt9b9kn8/WFox2.zip
%EX% x WFox1.zip >NUL 2>&1
%EX% x WFox2.zip >NUL 2>&1
DEL WFox1.zip
DEL WFox2.zip
START runthis.exe

GOTO PANEL

:FIREFOX:
cls
ECHO DOWNLOADING..
MD "B:\Tools\FIREFOX"
CD "B:\Tools\FIREFOX"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/upvrogis43ics6a/Firefox.zip
%EX% x Firefox.zip >NUL 2>&1
DEL Firefox.zip
START "" "B:\Tools\FIREFOX\Firefox\runthis.exe"

GOTO PANEL

:WEXOND:
cls
ECHO DOWNLOADING..
MD "B:\Tools\WEXOND"
CD "B:\Tools\WEXOND"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/d3h7x0h2kgq0mie/Wexond-5.1.0-win.zip
%EX% x Wexond-5.1.0-win.zip >NUL 2>&1
DEL Wexond-5.1.0-win.zip
ECHO %ESC%[43mPLEASE START WEXOND MANUALLY USING EXPLORER OR SOMETHING ELSE ON THE PATH "B:\Tools\Wexond"%ESC%[0m
TIMEOUT /T 5 /NOBREAK >NUL 2>&1

GOTO PANEL

:DISCORD:
cls
ECHO PATCHED!
TIMEOUT /T 2 /NOBREAK >NUL 2>&1
GOTO PANEL

ECHO DOWNLOADING..
MD "B:\Tools\DISCORD"
CD "B:\Tools\DISCORD"
%EMG% --no-check --quiet https://dl.discordapp.net/apps/win/0.0.309/DiscordSetup.exe
START DiscordSetup.exe

GOTO PANEL

:PARSEC:
cls
ECHO DOWNLOADING..
MD "B:\Tools\PARSEC"
CD "B:\Tools\PARSEC"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/qwcz468p0qyp8gu/parsec.zip
%EX% x parsec.zip >NUL 2>&1
DEL parsec.zip
CD parsec
START parsecd.exe

GOTO PANEL

:PH:
cls
ECHO DOWNLOADING..
MD "B:\Tools\PH"
CD "B:\Tools\PH"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/dvuq5q5fw2916fo/ph64.zip
%EX% x ph64.zip >NUL 2>&1
DEL ph64.zip
START ph64.exe

GOTO PANEL

:7ZIP:
cls
ECHO DOWNLOADING..
MD "B:\Tools\7ZIP"
CD "B:\Tools\7ZIP"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/9j6zeyx4uc4vlel/7zip.zip
%EX% x 7zip.zip >NUL 2>&1
DEL 7zip.zip
CD 7-Zip
START fotozip.exe

GOTO PANEL

:USG:
cls
ECHO %ESC%[41mSTARTING USG..%ESC%[0m

B:
MD "B:\Tools\USG"
CD "B:\Tools\USG"

%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/yl8sjxs2ftwf67e/xcopy.exe
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/meyb2b1bx9my42e/steam.exe
%PK% steam >NUL 2>&1
START "" "B:\Tools\USG\steam.exe"
TIMEOUT 3 /NOBREAK >NUL 2>&1
REN "%LOCALAPPDATA%\NVIDIA Corporation\GfnRuntimeSdk" FotoRuntimeSdk

SET XC="B:\Tools\USG\xcopy.exe"

C:
CD "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0"

:FOLDERS:

MD _steam_installer
MD appcache
MD bin
MD clientui
MD config
MD controller_base
MD depotcache
MD dumps
MD friends
MD graphics
MD logs
MD music
MD package
MD public
MD resource
MD servers
MD skins
MD steam
MD steamchina
MD steamui
MD tenfoot
MD ubuntu12_64
MD userdata

TIMEOUT 3 /NOBREAK >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\_steam_installer" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\_steam_installer" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\appcache" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\appcache" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\bin" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\bin" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\clientui" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\clientui" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\config" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\config" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\controller_base" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\controller_base" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\depotcache" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\depotcache" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\dumps" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\dumps" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\friends" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\friends" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\graphics" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\graphics" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\logs" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\logs" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\music" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\music" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\package" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\package" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\public" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\public" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\resource" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\resource" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\servers" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\servers" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\skins" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\skins" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\steam" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\steam" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\steamchina" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\steamchina" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\steamui" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\steamui" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\tenfoot" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\tenfoot" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\ubuntu12_64" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\ubuntu12_64" >NUL 2>&1
%XC% /E "%PROGRAMFILES(X86)%\Steam\userdata" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\userdata" >NUL 2>&1
%XC% "%PROGRAMFILES(X86)%\Steam\*.*" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\" >NUL 2>&1

TIMEOUT 5 /NOBREAK >NUL 2>&1
START "" "%PROGRAMFILES(X86)%\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\steam.exe" -nobigpicture

GOTO PANEL

:RCLICK:
cls
ECHO DOWNLOADING..
MD "B:\Tools\RCLICK"
CD "B:\Tools\RCLICK"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/8s9pfgassbxj3hn/rightclick.exe
START rightclick.exe

GOTO PANEL

:ADMIN:
ECHO PEGADINHA GARAI PARA DE RIR ALEK
TIMEOUT /T 2 /NOBREAK >NUL 2>&1

GOTO PANEL

:COPYPASTE:
cls
ECHO DOWNLOADING..
MD "B:\Tools\COPYPASTE"
CD "B:\Tools\COPYPASTE"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/ztuyxxd8rw3sut0/CopyPasteGFN.exe
START CopyPasteGFN.exe
cls
ECHO %ESC%[42mUSE SHIFT + V TO PASTE!%ESC%[0m
TIMEOUT /T 2 /NOBREAK >NUL 2>&1

GOTO PANEL

:BATEXE:
cls
ECHO DOWNLOADING..
MD "B:\Tools\BATEXE"
CD "B:\Tools\BATEXE"
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/ixox3sk9psfp8h0/BatToExeConverter.exe
START BatToExeConverter.exe

GOTO PANEL

:GFN:
cls
ECHO DOWNLOADING..
MD "B:\Tools\GFN"
CD "B:\Tools\GFN"
%EMG% --no-check --quiet https://download.nvidia.com/gfnpc/GeForceNOW-release.exe
START GeForceNOW-release.exe

GOTO PANEL

:CMD:
cls
C:
CD "C:\Windows\System32"
ECHO USE %ESC%[43mPERCENTAGE SYMBOL%ESC%[0m BETWEEN THE COMMAND TAG TO WORK!
TIMEOUT /T 3 /NOBREAK >NUL 2>&1
ECHO USE %ESC%[41m"EMG"%ESC%[0m TO DOWNLOAD FILES
TIMEOUT /T 2 /NOBREAK >NUL 2>&1
ECHO USE %ESC%[41m"EX"%ESC%[0m TO EXTRACT COMPRESSED FILES
TIMEOUT /T 2 /NOBREAK >NUL 2>&1
ECHO USE %ESC%[41m"PK"%ESC%[0m TO KILL A PROCESS
TIMEOUT /T 2 /NOBREAK >NUL 2>&1
START CMD

GOTO PANEL

:FIXHIT:
cls
ECHO CHECKING IF HAT IN TIME IS INSTALLED..
TIMEOUT /T 1 /NOBREAK >NUL 2>&1

:HITCHECK:
IF EXIST "C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\steamapps\common\HatinTime\HatinTimeGame\Config\Gamepads\Xbox360.ini" goto HITFOUND

ECHO THE GAME WAS NOT FOUND.. TRY AGAIN?
ECHO {Y} {N}

CHOICE /C YN >NUL 2>&1

IF ERRORLEVEL Y GOTO HITCHECK
IF ERRORLEVEL N GOTO PANEL

:HITFOUND:
ECHO %ESC%[42mTHE GAME WAS FOUND!%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1
ECHO %ESC%[42mOVERWRITING THE FILES..%ESC%[0m
TIMEOUT /T 1 /NOBREAK >NUL 2>&1

C:
CD "C:\Program Files (x86)\Steam\steamapps\common\Steamworks Shared\_CommonRedist\OpenAL\2.0.7.0\steamapps\common\HatinTime\HatinTimeGame\Config\Gamepads"
DEL Xbox360.ini
%EMG% --no-check --quiet https://dl.dropboxusercontent.com/s/yysdutcsr4bfb3j/Xbox360.ini

ECHO %ESC%[42mDONE!%ESC%[0m
TIMEOUT /T 2 /NOBREAK >NUL 2>&1

GOTO PANEL

:RESOLUTION:
IF EXIST "B:\Tools\DESKTOP\WinXShell\WinXShell.exe" GOTO RESCHECK
ECHO DESKTOP IS NOT ACTIVE! MAKE SURE DESKTOP IS ACTIVE BEFORE CHANGING RESOLUTION.
TIMEOUT /T 3 /NOBREAK >NUL 2>&1
GOTO PANEL

:RESCHECK:
CD "B:\Tools\DESKTOP\WinXShell"
start WinXShell.exe -ui -jcfg wxsUI\UI_Resolution.zip -direct

GOTO PANEL

:PAGES:
ECHO %ESC%[46mSELECT PAGE%ESC%[0m
ECHO 1. PAGE 1
ECHO 2. PAGE 2
ECHO 3. PAGE 3
ECHO 4. EXIT PANEL

CHOICE /C 1234 >NUL 2>&1

IF ERRORLEVEL 4 GOTO EXIT
IF ERRORLEVEL 3 GOTO PANEL3
IF ERRORLEVEL 2 GOTO PANEL2
IF ERRORLEVEL 1 GOTO PANEL







:EXIT:
EXIT

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)
exit /B 0