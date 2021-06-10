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

#---------------------
echo "make directory"
Start-Sleep -Seconds 5
#dir for downloads installation files
mkdir c:\install
#mkdir c:\!!!
#dir for downloads torrents and files
mkdir c:\users\administrator\Downloads\bitt
#dir for downloads settings file qBittorrent
mkdir C:\Users\administrator\AppData\Roaming\qBittorrent

#Downloads files
Start-Sleep -Seconds 5

$tls = [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#BitTorrent_7.10.5.46011.exe
$source = 'http://45.93.5.57/!/BitTorrent_7.10.5.46011.exe'
$destination = 'c:\install\BitTorrent_7.10.5.46011.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 5
#uTorrent_LAA
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/uTorrent_355_46036_LAA_.exe'
$destination = 'c:\install\uTorrent.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#BRAVE installer
#$tls
#$source = 'https://laptop-updates.brave.com/latest/winx64'
#$destination = 'c:\install\brave.exe'
#Firefox Installer.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/Firefox.exe'
$destination = 'c:\install\Firefox.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 5
#memreduct-3.3.5-setup.exe
$tls
$source = 'https://github.com/henrypp/memreduct/releases/download/v.3.3.5/memreduct-3.3.5-setup.exe'
$destination = 'c:\install\memreduct-3.3.5-setup.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 5
#node-v14.16.1-x64.msi
$tls
$source = 'https://nodejs.org/dist/v14.16.1/node-v14.16.1-x64.msi'
$destination = 'c:\install\node-v14.16.1-x64.msi'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 5
#qbittorrent_4.3.5_setup.exe github edition
$tls
$source = 'https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-4.3.5.10/qbittorrent_4.3.5.10_x64_setup.exe'
$destination = 'c:\install\qbittorrent_4.3.5_setup.exe'
Invoke-RestMethod -Uri $source -OutFile $destination
Start-Sleep -Seconds 5
#qBittorrent.ini
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/qBittorrent.ini'
$destination = 'c:\install\qBittorrent.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#qBittorent-data.ini
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/qBittorrent-data.ini'
$destination = 'c:\install\qBittorrent-data.ini'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#settings.dat
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/settings.dat'
$destination = 'c:\install\settings.dat'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#settings.dat.old
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/settings.dat.old'
$destination = 'c:\install\settings.dat.old'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#7z2102-x64.exe
#$tls
#$source = 'https://www.7-zip.org/a/7z2102-x64.exe'
#$destination = 'c:\install\7z2102-x64.exe'
#Invoke-WebRequest $source -OutFile $destination
#Start-Sleep -Seconds 5
#download 7z.exe
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/7z.exe'
$destination = 'c:\install\7z.exe'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#download 7z.dll
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/7z.dll'
$destination = 'c:\install\7z.dll'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#torrent-manager-main 0.0.5.7z	
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/SCRIPT_BITTORRENT0.0.5.zip'
$destination = 'c:\install\SCRIPT_BITTORRENT0.0.5.zip'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#btt_settings
$tls
$source = 'https://github.com/R0ckNRolla/btt_setting/raw/main/BitTorrentHelper.zip'
$destination = 'c:\install\BitTorrentHelper.zip'
Invoke-WebRequest $source -OutFile $destination
Start-Sleep -Seconds 5
#disable_firewall
$tls
$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/disable_firewall.bat'
$destination = 'c:\install\disable_firewall.bat'
Start-Sleep -Seconds 5
#enable_firewall
#$tls
#$source = 'https://raw.githubusercontent.com/R0ckNRolla/btt_setting/main/enable_firewall.bat'
#$destination = 'c:\install\enable_firewall.bat'
#Start-Sleep -Seconds 5




Start-Sleep -Seconds 5

# install programs
cmd /c c:\install\disable_firewall.bat
#c:\install\7z2102-x64.exe /S
#Start-Sleep -Seconds 1
c:\install\BitTorrent_7.10.5.46011.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
Start-Sleep -Seconds 90
c:\install\node-v14.16.1-x64.msi  /qn /norestart
Start-Sleep -Seconds 180
c:\install\memreduct-3.3.5-setup.exe /S 
Start-Sleep -Seconds 30
Start-Process -FilePath "C:\install\qbittorrent_4.3.5_setup.exe" -ArgumentList "/S /v/qn"
Start-Sleep -Seconds 60
c:\install\Firefox.exe -ms -ma
Start-Sleep -Seconds 10

#cd "C:\Program Files\7-Zip\"
cmd /c c:\install\7z.exe x 'C:\install\SCRIPT_BITTORRENT0.0.5.zip' -o"c:\install"
cmd /c c:\install\7z.exe x 'C:\install\BitTorrentHelper.zip' -o"c:\install"
Start-Sleep -Seconds 10

 
Copy-Item  -Path "C:\install\settings.dat" -Destination "C:\Users\administrator\AppData\Roaming\BitTorrent\settings.dat" -Force -Verbose
Start-Sleep -Seconds 1
Copy-Item -Path "C:\install\settings.dat.old" -Destination "C:\Users\administrator\AppData\Roaming\BitTorrent\settings.dat.old" -Force -Verbose
Start-Sleep -Seconds 1
Copy-Item -Path "C:\install\qBittorrent.ini" -Destination "C:\Users\administrator\AppData\Roaming\qBittorrent\qBittorrent.ini" -Force -Verbose
Start-Sleep -Seconds 1
Copy-Item -Path "C:\install\qBittorrent-data.ini" -Destination "C:\Users\administrator\AppData\Roaming\qBittorrent\qBittorrent-data.ini" -Force -Verbose

Start-Sleep -Seconds 10
'c:\users\administrator\appdata\roaming\bittorrent\bittorrent.exe'
Start-Sleep -Seconds 5
'c:\Program Files\qBittorrent\qBittorrent.exe'
Start-Sleep -Seconds 5



"c:\install\torrent-manager-main0.0.5\0.install.bat"

Start-Sleep -Seconds 10

"c:\install\torrent-manager-main0.0.5\1.run.bat"

Start-Sleep -Seconds 5

echo "INSTALL FINISH! GOOD LUCK!"
pause
