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
