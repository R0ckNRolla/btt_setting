@echo off

:: Created by: R0ckNR0lla
:: Created on: june 2021
:: Tutorial: https://www.tenforums.com/tutorials/5313-hide-show-notification-area-icons-taskbar-windows-10-a.html

::мальникие значки в панели; требуеться перезапуск проводника
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V UseTabletModeNotificationIcons /T REG_DWORD /D 0 /F
::показывать значки в трее; требуеться перезапуск проводника
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V TaskbarSmallIcons /T REG_DWORD /D 1 /F
::отключить автообновление винды; требуеться перезагузка винды
REG ADD "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate" /V DisableWindowsUpdateAccess /T REG_DWORD /D 1 /F
::показывать скрытые файлы и папки
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f
::отображать расширения файлов
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f
::
:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe
exit
