@echo off
set version=1.0
title Fsociety Tweaks - %version% 
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

:variables
set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m

:: Webhook
SET webhook=


:loading
chcp 65001 >nul
cls
echo.
echo.
echo.
echo.
echo  %c%   ███████╗███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo     ██╔════╝██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo     █████╗  ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝      ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗ %u%
echo     ██╔══╝  ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo     ██║     ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║        ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo.
echo %w%                                       Developed by Batlez#3740 
echo %w%                                   Thank you for using Batlez Tweaks
echo %w%                                     Press any key to get started            

echo.
echo(%cd%
pushd %~dp0
echo(%cd%
timeout /t 5 >nul & cls & goto Presets

:Presets
cls
chcp 437>nul
echo Choose a Colour.
echo %b%Blue%u%, %d%Cyan%u%, %g%Green%u%, %y%Yellow%u% or %r%Red%u%.
set /p preset=
if /i %preset%==Blue goto Blue
if /i %preset%==Cyan goto Cyan
if /i %preset%==Yellow goto Yellow
if /i %preset%==Green goto Green
if /i %preset%==Red goto Red
echo %c%Please enter a valid option.
timeout /t 1 /nobreak >nul
goto Presets

:Blue
set c=%b%
set u=%u%
set d=%n%
goto TweaksMenu

:Yellow
set c=%y%
set u=%u%
set d=%n%
goto TweaksMenu

:Green
set c=%g%
set u=%u%
set d=%n%
goto TweaksMenu

:Cyan
set c=%d%
set u=%u%
set d=%d%
goto TweaksMenu

:Red
set c=%r%
set u=%u%
set d=%r%
goto TweaksMenu


:Backup
cls
chcp 437>nul
chcp 65001 >nul 
echo.
echo  %c%   ███████╗███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo     ██╔════╝██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo     █████╗  ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝      ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗ %u%
echo     ██╔══╝  ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo     ██║     ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║        ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.
echo.
echo.
echo                                    %c%FSociety is a tweaking script that optimizes your system%u% 
echo                                       %c%to provide the best gaming experience possible.%u%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p input="%c%Would you like to create a Restore and Registry Point? (Y/N) »%u% "
    if "%input%"=="Y" goto tweaksmain
    if "%input%"=="N" goto TweaksMenu
echo %c%Please enter a valid number!%u% & goto Backup
::
:tweaksmain
echo %c%Backing up the Registry...%u%
if not exist "C:\RegistryBackup\" mkdir C:\RegistryBackup
cd /d C:\RegistryBackup
REG SAVE HKLM\SOFTWARE SOFTWARE
REG SAVE HKLM\SYSTEM SYSTEM
REG SAVE HKU\.DEFAULT DEFAULT
REG SAVE HKLM\SECURITY SECURITY
REG SAVE HKLM\SAM SAM
::reg export HKCR C:\RegBack\HKCR.Reg /y
::reg export HKCU C:\RegBack\HKCU.Reg /y
::reg export HKLM C:\RegBack\HKLM.Reg /y
::reg export HKU C:\RegBack\HKU.Reg /y
::reg export HKCC C:\RegBackHKCC.Reg /y
echo %c%The Registry backup is located at "C:\Registry"%u%
timeout 2 >nul /nobreak
echo %c%Backup succesfully created!%u%
cls

:restorepoint2
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v SystemRestorePointCreationFrequency /t REG_DWORD /d 0 /f >nul
echo %c%Creating a restore point...%u%
timeout 2 >nul /nobreak
@powershell -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'Before Batlez Tweaks' -RestorePointType 'MODIFY_SETTINGS'"
set SR_STATUS=%ERRORLEVEL%
IF %SR_STATUS%==0 & echo %c%System Restore point made succesfully!%u%
timeout 3 >nul /nobreak
cls
IF NOT %SR_STATUS%==0 & echo %c%Failed to create a restore point, please make sure you have enabled protection in System!%u% 
timeout 3 >nul /nobreak
goto TweaksMenu


:TweaksMenu
cls
chcp 437>nul
chcp 65001 >nul 
echo.
echo  %c%   ███████╗███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo     ██╔════╝██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo     █████╗  ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝      ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗ %u%
echo     ██╔══╝  ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo     ██║     ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║        ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.                                
echo %c%                   ╔═════════════════════════════════╦════════════════════════════╦════════════════════════════╗ %u%
echo                    %c%║%u% [%c%1%u%] Windows Cleaner             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%2%u%] Custom Regedit              %c%║%u% [%c%8%u%] Internet Refresher     %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%3%u%] GPU Optimizations           %c%║%u% [%c%9%u%] Service Tweaks         %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%4%u%] Network Tweaks              %c%║%u% [%c%10%u%] Debloater             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%5%u%] CPU Optimizations           %c%║%u% [%c%11%u%] Custom Power Plan     %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%6%u%] Memory Optimizer            %c%║%u% [%c%12%u%] Changelog             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo %c%                   ╚═════════════════════════════════╩════════════════════════════╩════════════════════════════╝
echo %c%                         ║      %u% [%c%13%u%] Theme Presets       [%c%15%u%] Anime            [%c%14%u%] Go Back            %c%║%u%
echo %c%                         ║                               %u% [%c%Quit%u%] Leave%c%                                  ║
echo %c%                         ╚══════════════════════════════════════════════════════════════════════════════╝
echo %u%                                            Current Version: %c%%version%
echo %u%                                        %u%User %c%%username% %u%- Date %c%%date% %u%
echo.
echo.
echo.
set /p M="%c%Choose an option »%u% "
if %M%==1 goto A
if %M%==2 goto B
if %M%==3 goto C
if %M%==4 goto D
if %M%==5 goto E
if %M%==6 goto F
if %M%==7 goto G
if %M%==8 goto H
if %M%==9 goto I
if %M%==10 goto J
if %M%==11 goto K
if %M%==12 goto changelog
if %M%==13 goto Presets
if %M%==14 goto TweaksMenu
if %M%==15 goto LinkMenu
if %M%==quit goto Destruct
cls
echo %g%============INVALID INPUT============
echo.
echo.
echo %g%_____________________________________
echo.
echo %r%Please select a number from the Main
echo %r%Menu [1-14] or type 'quit' to Leave.
echo %g%_____________________________________
echo.
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:K
chcp 437>nul
chcp 65001 >nul
echo.
echo.
echo %g%_____________________________________
echo.
echo      %c%Applying Custom Power Plan%u%         
echo %g%_____________________________________
timeout /t 3 >nul
cls
powershell Invoke-WebRequest "----------------link-here------------" -OutFile "%temp%\test.txt"
cls
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:changelog
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
:: code here
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:A
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo           %c%Windows Cleaner%u%         
echo %g%_____________________________________
timeout /t 3 >nul
cls
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
del /s /f /q c:\windows\tempor~1
del /s /f /q c:\windows\temp
del /s /f /q c:\windows\tmp
del /s /f /q c:\windows\ff*.tmp
del /s /f /q c:\windows\history
del /s /f /q c:\windows\cookies
del /s /f /q c:\windows\recent
del /s /f /q c:\windows\spool\printers
del /s /f /q %userprofile%\Recent\*.*
del /s /f /q C:\Windows\Prefetch\*.*
del /s /f /q C:\Windows\Temp\*.*
del /s /f /q %USERPROFILE%\appdata\local\temp\*.*
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:B
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
:: code here
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:C
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
:: code here
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:D
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo            %c%Network Tweaks%u%             
echo %g%_____________________________________
timeout /t 3 >nul
cls
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul
goto TweaksMenu

:E
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
:: code here
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:F
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo          %c%Memory Optimizer%u%            
echo %g%_____________________________________
timeout /t 3 >nul
cls
sc stop BITS
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start DsSvc
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS 
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "DcpSvc"
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:G
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
:: code here
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:H
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo         %c%Internet Refresher%u%             
echo %g%_____________________________________
timeout /t 3 >nul
cls
ipconfig /all
ipconfig /flushdns
ipconfig /release
ipconfig /renew
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:I
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo             %c%Service Tweaks%u%              
echo %g%_____________________________________
timeout /t 3 >nul
cls
echo %c%Activating Service Tweaks...%u%
:: code here
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:J
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo            %c%Debloater%u%        
echo %g%_____________________________________
timeout /t 3 >nul
cls
"powershell.exe" "get-appxpackage -AllUsers *windowsalarms* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *windowscommunicationsapps* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *officehub* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *skypeapp* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *getstarted* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *zunemusic* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *windowsmaps* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *solitairecollection* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *bingfinance* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *zunevideo* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *bingnews* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *onenote* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *people* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *windowsphone* | Remove-AppxPackage"
:: "powershell.exe" "get-appxpackage -AllUsers *photos* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *bingsports* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *soundrecorder* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *bingweather* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *connectivitystore* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *messaging* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *sway* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *3d* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *holographic* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers  Microsoft.XboxGamingOverlay | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers *3dbuilder* | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.MicrosoftEdge.Stable | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.PowerAutomateDesktop | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.XboxGameOverlay | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.YourPhone | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers MicrosoftWindows.Client.WebExperience | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.WindowsFeedbackHub | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.GetHelp | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.MicrosoftStickyNotes | Remove-AppxPackage"
"powershell.exe" "get-appxpackage -AllUsers Microsoft.ScreenSketch | Remove-AppxPackage"
"powershell.exe" "Get-AppxProvisionedPackage -online Microsoft.ScreenSketch | Remove-AppxProvisionedPackage -online"
"powershell.exe" "Get-AppxProvisionedPackage -online Microsoft.MicrosoftStickyNotes | Remove-AppxProvisionedPackage -online"
"powershell.exe" "Get-AppxProvisionedPackage -online Microsoft.GetHelp | Remove-AppxProvisionedPackage -online"
"powershell.exe" "Get-AppxProvisionedPackage -online Microsoft.WindowsFeedbackHub | Remove-AppxProvisionedPackage -online"
"powershell.exe" "Get-AppxProvisionedPackage -online MicrosoftWindows.Client.WebExperience | Remove-AppxProvisionedPackage -online"
"powershell.exe" "Get-AppxProvisionedPackage -online Microsoft.YourPhone | Remove-AppxProvisionedPackage -online"
"powershell.exe" "Get-AppxProvisionedPackage -online Microsoft.XboxGameOverlay | Remove-AppxProvisionedPackage -online"
cls
taskkill /f /im explorer.exe
start explorer.exe
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto TweaksMenu

:LinkMenu
cls
chcp 437>nul
chcp 65001 >nul 
echo.
echo  %c%   ███████╗███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
echo     ██╔════╝██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
echo     █████╗  ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝      ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗ %u%
echo     ██╔══╝  ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
echo     ██║     ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║        ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
echo     ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
echo.                                
echo %c%                   ╔═════════════════════════════════╦════════════════════════════╦════════════════════════════╗ %u%
echo                    %c%║%u% [%c%1%u%] Windows Cleaner             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%2%u%] Custom Regedit              %c%║%u% [%c%8%u%] Internet Refresher     %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%3%u%] GPU Optimizations           %c%║%u% [%c%9%u%] Service Tweaks         %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%4%u%] Network Tweaks              %c%║%u% [%c%10%u%] Debloater             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%5%u%] CPU Optimizations           %c%║%u% [%c%11%u%] Custom Power Plan     %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo                    %c%║%u% [%c%6%u%] Memory Optimizer            %c%║%u% [%c%12%u%] Changelog             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
echo %c%                   ╚═════════════════════════════════╩════════════════════════════╩════════════════════════════╝
echo %c%                         ║      %u% [%c%13%u%] Theme Presets       [%c%14%u%] Go Back          [%c%15%u%] Go Back            %c%║%u%
echo %c%                         ║                               %u% [%c%28%u%] Leave%c%                                    ║
echo %c%                         ╚══════════════════════════════════════════════════════════════════════════════╝
echo %u%                                            Current Version: %c%%version%
echo %u%                                        %u%User %c%%username% %u%- Date %c%%date% %u%
echo.
echo.
echo.
set /p M="%c%Choose an option »%u% "
if %M%==1 goto AA
if %M%==2 goto BB
if %M%==3 goto CC
if %M%==4 goto DD
if %M%==5 goto EE
if %M%==6 goto FF
if %M%==7 goto GG
if %M%==8 goto HH
if %M%==9 goto II
if %M%==10 goto JJ
if %M%==11 goto KK
if %M%==12 goto LL
if %M%==13 goto MM
if %M%==14 goto NN
if %M%==15 goto OO
if %M%==16 goto PP
if %M%==17 goto QQ
if %M%==18 goto RR
if %M%==19 goto SS
if %M%==20 goto TT
if %M%==21 goto UU
if %M%==22 goto VV
if %M%==23 goto WW
if %M%==24 goto XX
if %M%==25 goto YY
if %M%==26 goto ZZ
if %M%==27 goto TweaksMenu
if %M%==28 goto Destruct

cls
echo %g%============INVALID INPUT============
echo.
echo.
echo %g%=====================================
echo %r%Please select a number from the Main
echo %r%Menu [1-27] or type 'exit' to Leave.
echo %g%=====================================
echo.
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======

pause >nul
goto LinkMenu

:Kk
chcp 437>nul
chcp 65001 >nul
echo.
echo.
cls
echo %g%_____________________________________
echo.
echo              %c%Changelog%u%         
echo %g%_____________________________________
timeout /t 3 >nul
cls
start https://github.com/
echo.
echo %g%======PRESS ANY KEY TO CONTINUE======
pause >nul
goto LinkMenu

:Destruct
title Thanks for using FSOCIETY Tweaks!
mode 42,5
cls
echo.            
echo %u%Developed by: %c%FSOCIETY
timeout /t 5 >nul
exit

:: =====================================================================================================================================================
:: echo.
:: echo  %c% ███████╗███████╗ ██████╗  ██████╗██╗███████╗████████╗██╗   ██╗  ████████╗██╗    ██╗███████╗ █████╗ ██╗  ██╗███████╗
:: echo   ██╔════╝██╔════╝██╔═══██╗██╔════╝██║██╔════╝╚══██╔══╝╚██╗ ██╔╝  ╚══██╔══╝██║    ██║██╔════╝██╔══██╗██║ ██╔╝██╔════╝
:: echo   █████╗  ███████╗██║   ██║██║     ██║█████╗     ██║    ╚████╔╝      ██║   ██║ █╗ ██║█████╗  ███████║█████╔╝ ███████╗ %u%
:: echo   ██╔══╝  ╚════██║██║   ██║██║     ██║██╔══╝     ██║     ╚██╔╝       ██║   ██║███╗██║██╔══╝  ██╔══██║██╔═██╗ ╚════██║
:: echo   ██║     ███████║╚██████╔╝╚██████╗██║███████╗   ██║      ██║        ██║   ╚███╔███╔╝███████╗██║  ██║██║  ██╗███████║
:: echo   ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝╚═╝╚══════╝   ╚═╝      ╚═╝        ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
:: echo.
:: del /s /f /q %temp%\*.* 2>nul
:: del /s /f /q %WinDir%\temp\*.* 2>nul
:: del %AppData%\Origin\Logs /F /Q /S 2>nul
:: del /s /f /q %localappdata%\Microsoft\Windows\INetCache\IE
:: 
:: winver windowkey + R
:: rstrui.exe windowkey + R
:: 
:: taskkill /f /im explorer.exe
:: start explorer.exe
:: 
:: start %TEMP%
:: start shell:::{ED7BA470-8E54-465E-825C-99712043E01C}
:: start shutdown.exe -r -o -f -t 00
:: DEL *.*
::
:: C:\Windows\System32\svchost.exe
:: C:\Windows\SystemApps\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\SearchHost.exe
::
:: echo.
:: echo %c%                       ╔═════════════════════════════════╦════════════════════════════╗ %u%
:: echo                        %c%║%u% [%c%1%u%] Windows Cleaner             %c%║%u% [%c%7%u%] Mouse/Keyboard Tweaks  %c%║%u%
:: echo                        %c%║%u% [%c%2%u%] Custom Regedit              %c%║%u% [%c%8%u%] Internet Refresher     %c%║%u%
:: echo                        %c%║%u% [%c%3%u%] GPU Optimizations           %c%║%u% [%c%9%u%] Service Tweaks         %c%║%u%
:: echo                        %c%║%u% [%c%4%u%] Network Tweaks              %c%║%u% [%c%10%u%] Debloater             %c%║%u%
:: echo                        %c%║%u% [%c%5%u%] CPU Optimizations           %c%║%u% [%c%11%u%] Custom Power Plan     %c%║%u%
:: echo                        %c%║%u% [%c%6%u%] Memory Optimizer            %c%║%u% [%c%12%u%] Changelog             %c%║%u%
:: echo %c%                       ╚═════════════════════════════════╩════════════════════════════╝
:: echo %c%                             ║  %u% [%c%13%u%] Theme Presets       [%c%14%u%] Go Back          %c%║%u%
:: echo %c%                             ║                %u% [%c%Quit%u%] Leave%c%                     ║
:: echo %c%                             ╚══════════════════════════════════════════════════╝
:: echo.
:: ==================================================================================================================================================
:: 