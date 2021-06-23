Set-ExecutionPolicy Unrestricted  -Force

#-----------------  MAX PERFOMENS

$path = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects'
try {
    $s = (Get-ItemProperty -ErrorAction stop -Name visualfxsetting -Path $path).visualfxsetting 
    if ($s -ne 2) {
        Set-ItemProperty -Path $path -Name 'VisualFXSetting' -Value 2  
        }
    }
catch {
    New-ItemProperty -Path $path -Name 'VisualFXSetting' -Value 2 -PropertyType 'DWORD'
    }
#------------------- UAH
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force
New-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name UseTabletModeNotificationIcons -PropertyType DWord -Value 0 -Force
New-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name TaskbarSmallIcons -PropertyType DWord -Value 1 -Force
New-ItemProperty -Path HKLM:Software\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate -Name DisableWindowsUpdateAccess -PropertyType DWord -Value 1 -Force
New-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name Hidden -PropertyType DWord -Value 1 -Force
New-ItemProperty -Path HKCU:Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -PropertyType DWord -Value 0 -Force

taskkill /f /im explorer.exe
& explorer.exe
Start-Sleep -Seconds 3
#---------------------
#echo "make directory"
#Start-Sleep -Seconds 
#dir for downloads installation files
mkdir c:\install
#mkdir c:\!!!
#dir for downloads torrents and files
mkdir c:\users\administrator\Downloads\bitt
#dir for downloads settings file qBittorrent
mkdir C:\Users\administrator\AppData\Roaming\qBittorrent
#dir for settings memreduct
mkdir "C:\Users\Administrator\AppData\Roaming\Henry++\Mem Reduct"

#Downloads files
Start-Sleep -Seconds 1

$tls = [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#echo "Download BitTorrent_7.10.5.46011.exe"
#BitTorrent_7.10.5.46011.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/BitTorrent_7.10.5.46011.exe'
$destination = 'c:\install\BitTorrent_7.10.5.46011.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download uTorrent_LAA"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/uTorrent_355_46036_LAA_.exe'
$destination = 'c:\install\uTorrent.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
##echo "Download BRAVE installer"
#$tls
#$source = 'https://laptop-updates.brave.com/latest/winx64'
#$destination = 'c:\install\brave.exe'
#echo "Download Firefox Installer.exe"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/Firefox.exe'
$destination = 'c:\install\Firefox.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download memreduct-3.3.5-setup.exe"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/memreduct.zip'
$destination = 'c:\install\memreduct.zip'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download node-v14.16.1-x64.msi"
$tls
$source = 'https://nodejs.org/dist/v14.16.1/node-v14.16.1-x64.msi'
$destination = 'c:\install\node-v14.16.1-x64.msi'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download qbittorrent_4.3.5_setup.exe github edition"
$tls
$source = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.3.5.10/qbittorrent_4.3.5.10_x64_setup.exe'
$destination = 'c:\install\qbittorrent_4.3.5_setup.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download qBittorrent.ini"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/qBittorrent.ini'
$destination = 'c:\install\qBittorrent.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download qBittorent-data.ini"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/qBittorrent-data.ini'
$destination = 'c:\install\qBittorrent-data.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download settings.dat"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/settings.dat'
$destination = 'c:\install\settings.dat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download settings.dat.old"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/settings.dat.old'
$destination = 'c:\install\settings.dat.old'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#7z2102-x64.exe
#$tls
#$source = 'https://www.7-zip.org/a/7z2102-x64.exe'
#$destination = 'c:\install\7z2102-x64.exe'
#Invoke-WebRequest $source -OutFile $destination
#Start-Sleep -Seconds 1
#echo "Download download 7z.exe"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/7z.exe'
$destination = 'c:\install\7z.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download download 7z.dll"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/7z.dll'
$destination = 'c:\install\7z.dll'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download torrent-manager-main 0.0.5.7z"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/SCRIPT_BITTORRENT0.0.5.zip'
$destination = 'c:\install\SCRIPT_BITTORRENT0.0.5.zip'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download btt_settings"
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/BitTorrentHelper.zip'
$destination = 'c:\install\BitTorrentHelper.zip'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download disable_firewall"
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/df.bat'
$destination = 'c:\install\df.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
##echo "Download enable_firewall"
#$tls
#$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/enable_firewall.bat'
#$destination = 'c:\install\enable_firewall.bat'
#Start-Sleep -Seconds 1
#echo "Download script_autoran_after_reboot"
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/script_autoran.bat'
$destination = 'C:\Users\administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\script_autoran.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download memreduct_setting 5 min"
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/memreduct5min.ini'
$destination = 'C:\install\memreduct.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download memreduct_setting 80%"
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/memreduct80.ini'
$destination = 'C:\install\memreduct80.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 1
#echo "Download settings firefox"
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/firefox.reg'
$destination = 'C:\install\firefox.reg'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#echo "Download reg settings visual effects and disable autoupdate winx64 2012r2"
#$tls
#$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/reg_settings.bat'
#$destination = 'C:\install\reg_settings.bat'
#Invoke-WebRequest $source -OutFile $destination
#Start-Sleep -Seconds 15
#echo "Download setting downloads update script"
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/update_scheduler.bat'
$destination = 'C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\update_scheduler.bat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#echo "Download python3.9.5"
$tls
$source = 'https://www.python.org/ftp/python/3.9.5/python-3.9.5-amd64.exe'
$destination = 'C:\install\python.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 15




#Start-Sleep -Seconds 5

# install programs
#echo "install node js"
c:\install\node-v14.16.1-x64.msi  /qn /norestart
Start-Sleep -Seconds 2
#echo "run disable_firewall"
& c:\install\df.bat
Start-Sleep -Seconds 2
#c:\install\7z2102-x64.exe /S
#Start-Sleep -Seconds 1
#echo "install BitTorrent"
& "c:\install\BitTorrent_7.10.5.46011.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
Start-Sleep -Seconds 2
#echo "install python"
& C:\install\python.exe /quiet InstallAllUsers=1 PrependPath=1
Start-Sleep -Seconds 2
#echo "unzip memreduct"
cmd /c c:\install\7z.exe x 'C:\install\memreduct.zip' -o"c:\Program Files"
#c:\install\memreduct.exe /S
Start-Sleep -Seconds 2
#echo "install qBittorrent"
Start-Process -FilePath "C:\install\qbittorrent_4.3.5_setup.exe" -ArgumentList "/S /v/qn"
Start-Sleep -Seconds 2
#echo "install Firefox"
c:\install\Firefox.exe -ms -ma
Start-Sleep -Seconds 40
#echo "kill Firefox"
cmd /c taskkill.exe /im firefox.exe /f
Start-Sleep -Seconds 2
#echo "setting Firefox default browser"
regedit /S C:\install\firefox.reg
Start-Sleep -Seconds 2




#cd "C:\Program Files\7-Zip\"
#echo "#echo unzip ip block script"
cmd /c c:\install\7z.exe x 'C:\install\SCRIPT_BITTORRENT0.0.5.zip' -o"c:\install"
Start-Sleep -Seconds 1
#cmd 'c:\install\torrent-manager-0.0.5\0.install.bat'
#cmd 'c:\install\torrent-manager-0.0.5\1.run.bat'
#echo "#echo unzip BitTorrentHelper"
cmd /c c:\install\7z.exe x 'C:\install\BitTorrentHelper.zip' -o"c:\install"
Start-Sleep -Seconds 1
#echo "install schtask update script"
cmd /c SCHTASKS /create /tn \Microsoft\Windows\test /sc HOURLY /mo 12 /tr "cmd /c C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\update_scheduler.bat"  /ru "NT AUTHORITY\SYSTEM" /RL HIGHEST /F
Start-Sleep -Seconds 1
#echo "run schtask script"
cmd /c SCHTASKS /tn \Microsoft\Windows\test /run
Start-Sleep -Seconds 1

#echo "copy settings.dat in folder BitTorrent"
Copy-Item  -Path "C:\install\settings.dat" -Destination "C:\Users\administrator\AppData\Roaming\BitTorrent\settings.dat" -Force -Verbose
Start-Sleep -Seconds 1
#echo "copy settings.dat.old in folder BitTorrent"
Copy-Item -Path "C:\install\settings.dat.old" -Destination "C:\Users\administrator\AppData\Roaming\BitTorrent\settings.dat.old" -Force -Verbose
Start-Sleep -Seconds 1
#Copy-Item  -Path "C:\install\settings.dat" -Destination "C:\Users\administrator\AppData\Roaming\uTorrent\settings.dat" -Force -Verbose
#Start-Sleep -Seconds 1
#Copy-Item -Path "C:\install\settings.dat.old" -Destination "C:\Users\administrator\AppData\Roaming\uTorrent\settings.dat.old" -Force -Verbose
#Start-Sleep -Seconds 1
#echo "copy qBittorrent.ini in folder qBittorrent"
Copy-Item -Path "C:\install\qBittorrent.ini" -Destination "C:\Users\administrator\AppData\Roaming\qBittorrent\qBittorrent.ini" -Force -Verbose
Start-Sleep -Seconds 1
#echo "copy qBittorrent-data.ini in folder qBittorrent"
Copy-Item -Path "C:\install\qBittorrent-data.ini" -Destination "C:\Users\administrator\AppData\Roaming\qBittorrent\qBittorrent-data.ini" -Force -Verbose
Start-Sleep -Seconds 1
#echo "install reg_settings.bat"
#& C:\install\reg_settings.bat
#Start-Sleep -Seconds 2
#echo "run memreduct.exe"
& "c:\Program Files\memreduct\memreduct.exe"
Start-Sleep -Seconds 5
#echo "kill memreduct.exe"
cmd /c taskkill.exe /im memreduct.exe /f
Start-Sleep -Seconds 2
#echo "copy memreduct.ini in folder C:\Users\Administrator\AppData\Roaming\Henry++\Mem Reduct\"
Copy-Item -Path "C:\install\memreduct.ini" -Destination "C:\Users\Administrator\AppData\Roaming\Henry++\Mem Reduct\memreduct.ini" -Force -Verbose
Start-Sleep -Seconds 1


#на будущее, написать цикл, который будет проверять наличие ехе в папке, если есть запуск, если нет, пауза 10 сек.
#echo "delete df.bat"
Remove-Item 'c:\install\df.bat'
Start-Sleep -Seconds 1
#echo "run bittorrent"
& 'c:\users\administrator\appdata\roaming\bittorrent\bittorrent.exe'
Start-Sleep -Seconds 1
#& 'c:\users\administrator\appdata\roaming\utorrent\utorrent.exe'
#Start-Sleep -Seconds 5
#echo "run qBittorrent"
& 'c:\Program Files\qBittorrent\qBittorrent.exe'
Start-Sleep -Seconds 1
#echo "run memreduct"
& "c:\Program Files\memreduct\memreduct.exe"
Start-Sleep -Seconds 1
#echo "run firefox"
& 'C:\Program Files\Mozilla Firefox\firefox.exe'
Start-Sleep -Seconds 1
#echo "start script autorun"
start "" "C:\Users\administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\script_autoran.bat"
Start-Sleep -Seconds 5

#& 'c:\install\torrent-manager-0.0.5\0.install.bat'

#Start-Sleep -Seconds 10

#& 'c:\install\torrent-manager-0.0.5\1.run.bat'

#Start-Sleep -Seconds 5

#echo "INSTALL FINISH! GOOD LUCK!"

shutdown -t 0 -r -f
