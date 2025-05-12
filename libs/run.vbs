Set objArgs = WScript.Arguments
Set objShell = CreateObject("WScript.Shell")
Dim cmdExec
cmdExec = "cmd.exe /c " + objArgs(0)
objShell.Run  cmdExec, 0, False