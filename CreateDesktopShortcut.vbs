Set oWS = WScript.CreateObject("WScript.Shell")
sLinkFile = oWS.ExpandEnvironmentStrings("%USERPROFILE%\Desktop\Winastic Maintenance.lnk")
Set oLink = oWS.CreateShortcut(sLinkFile)
oLink.TargetPath = "powershell.exe"
oLink.Arguments = "-ExecutionPolicy Bypass -File ""D:\_AI\MyCode\Winastic\Winastic.ps1"""
oLink.WorkingDirectory = "D:\_AI\MyCode\Winastic"
oLink.Description = "Winastic - Maintenance Système Windows"
' Utiliser l'icône clé à molette de Windows (shell32.dll, index 23)
oLink.IconLocation = "shell32.dll,23"
oLink.Save
WScript.Echo "Raccourci créé sur le Bureau : Winastic Maintenance" & vbCrLf & "Icône clé à molette appliquée"
