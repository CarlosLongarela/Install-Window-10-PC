@ECHO OFF 
:: This batch file details Windows 10, hardware, and networking configuration and install programs.

TITLE Install Window 10 Programs
ECHO Please wait... Checking system information.

:: Section 1: Windows 10 information
ECHO ==========================
ECHO WINDOWS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"

:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name

:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
START https://support.microsoft.com/en-us/windows/windows-10-system-requirements-6d4e9a79-66bf-7950-467c-795cf0386715
PAUSE

ECHO ------------------------------------------
ECHO Install browsers
ECHO ------------------------------------------
winget install Microsoft.Edge
winget install Google.Chrome
winget install Mozilla.Firefox
winget install Mozilla.FirefoxDeveloperEdition
:: winget install ResponsivelyApp.ResponsivelyApp
:: winget install VivaldiTechnologies.Vivaldi

ECHO ------------------------------------------
ECHO Install Utilities
ECHO ------------------------------------------
winget install VB-Audio.VoiceMeeter_Banana
:: winget install Twilio.Authy
winget install 7zip.7zip
:: winget install RescueTime.RescueTime
winget install Microsoft.PowerToys
:: winget install Greenshot.Greenshot
winget install LibreOffice.LibreOffice 

ECHO ------------------------------------------
ECHO Install Dev Tools
ECHO ------------------------------------------
winget install Git.Git
winget install Atlassian.Sourcetree
winget install WPEngine.Local
winget install Microsoft.VisualStudioCode
winget install Microsoft.WindowsTerminal
winget install HeidiSQL.HeidiSQL
winget install Postman.Postman

ECHO ------------------------------------------
ECHO Install Communication & video Tools
ECHO ------------------------------------------
:: winget install Loom.Loom
winget install Zoom.Zoom
winget install Spotify.Spotify
:: winget install StefanMalzner.Franz
winget install Microsoft.Skype
:: winget install Discord.Discord

ECHO ------------------------------------------
ECHO Install Other
ECHO ------------------------------------------
winget install Dropbox.Dropbox
