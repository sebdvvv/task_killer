@echo off
chcp 65001 >nul
title Task Killer 🚀
color 0A

echo.
echo ████████╗ █████╗ ███████╗██╗  ██╗     ██╗  ██╗██╗██╗     ██╗     ███████╗██████╗ 
echo ╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝     ██║ ██╔╝██║██║     ██║     ██╔════╝██╔══██╗
echo    ██║   ███████║███████╗█████╔╝█████╗█████╔╝ ██║██║     ██║     █████╗  ██████╔╝
echo    ██║   ██╔══██║╚════██║██╔═██╗╚════╝██╔═██╗ ██║██║     ██║     ██╔══╝  ██╔══██╗
echo    ██║   ██║  ██║███████║██║  ██╗     ██║  ██╗██║███████╗███████╗███████╗██║  ██║
echo    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
echo.
echo Killing unnecessary tasks... 💀🔪
echo.

REM KILL PROCESSES WITH PYTHON
call :kill "msedge.exe"
call :kill "TextInputHost.exe"
call :kill "WindowsInternal.ComposableShell.Experiences.TextInput.InputApp.exe"
call :kill "MicrosoftWindows.Client.CBS_cw5n1h2txyewy"
call :kill "mediaplayer.exe"
call :kill "mpc-hc64.exe"
call :kill "Dropbox.exe"
call :kill "DropboxUpdate.exe"
call :kill "AdobeCollabSync.exe"
call :kill "AdobeServiceInstaller.exe"
call :kill "GfxDownloadWrapper.exe"
call :kill "AdobeUpdateService.exe"
call :kill "AdobeARM.exe"
call :kill "AdobeARMHelper.exe"
call :kill "BraveUpdate.exe"
call :kill "SearchApp.exe"
call :kill "PhoneExperienceHost.exe"
call :kill "armsvc.exe"
call :kill "Creative Cloud.exe"
call :kill "Adobe Desktop Service.exe"
call :kill "AdobeUpdateService.exe"
call :kill "CoreSync.exe"
call :kill "Creative Cloud Helper.exe"

echo.
echo ✅ All tasks have been terminated!
timeout /t 3 >nul
exit /b

:kill
echo Killing %~1 ...
python -c "import os; os.system('taskkill /f /im \"%~1\" >nul 2>&1')"
goto :eof
