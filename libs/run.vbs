Set objArgs = WScript.Arguments
Set objShell = CreateObject("WScript.Shell")
If WScript.Arguments.Count = 2 Then
    Dim cmdExec
    cmdExec = "cmd.exe /c " + objArgs(0)
    objShell.Run  cmdExec, 0, False
Else
    objShell.Run "taskkill /f /im papersgpt-agent.exe", 0, True
    objShell.Run "taskkill /f /im llama-server.exe", 0, True
End If