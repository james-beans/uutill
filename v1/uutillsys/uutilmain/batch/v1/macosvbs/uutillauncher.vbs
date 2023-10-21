Option Explicit

Dim choice

Do
    Call ClearScreen
    Call DisplayMenu
    choice = InputBox("Enter your choice:")

    If choice = "1" Then
        Call RunTxtfg ' Replace with actual code to run txtfg
    ElseIf choice = "2" Then
        Call RunCalc ' Replace with actual code to run calc
    ElseIf LCase(choice) = "q" Then
        Exit Do
    Else
        MsgBox "Invalid choice. Please select a valid option.", vbExclamation
    End If

    Call Pause
Loop

Sub ClearScreen
    Dim objShell
    Set objShell = CreateObject("WScript.Shell")
    objShell.Run "cmd /c cls", 0, True
    Set objShell = Nothing
End Sub

Sub DisplayMenu
    WScript.Echo "                                    88 88 88"
    WScript.Echo "                              ,d    """" 88 88"
    ' Rest of your menu code...
End Sub

Sub RunTxtfg
    WScript.Echo "You selected txtfg. (Replace with actual code to run txtfg)"
    Call Pause
End Sub

Sub RunCalc
    WScript.Echo "You selected calc. (Replace with actual code to run calc)"
    Call Pause
End Sub

Sub Pause
    WScript.Echo "Press Enter to continue..."
    WScript.StdIn.ReadLine
End Sub
