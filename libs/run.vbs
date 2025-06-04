Set objArgs = WScript.Arguments
Set objShell = CreateObject("WScript.Shell")
If WScript.Arguments.Count = 2 Then
    If objArgs(1) = "start" Then
        Dim cmdExec
        cmdExec = objArgs(0)
        objShell.Run cmdExec, 0, False
    End If
    If objArgs(1) = "stop" Then
        Dim killExec
        killExec = "taskkill /f /im " & objArgs(0)
        objShell.Run killExec, 0, True
        objShell.Run "taskkill /f /im papersgpt-local-llm.exe", 0, True 
        objShell.Run "taskkill /f /im huggingface_download.exe", 0, True
     End If
End If
