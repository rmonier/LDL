Dim objet
Set objet = WScript.CreateObject("WScript.Shell")

chemin = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

objet.Run """" & chemin & "\LDL.bat""""", 0, True

Set objet = Nothing

WScript.Quit