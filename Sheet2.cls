VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Option Explicit

Private Sub Worksheet_SelectionChange(ByVal Target As Range)
    Dim strMsg As String
    If Not Intersect(Target, Range("Score")) Is Nothing Then
        strMsg = "You cannot fix the scores you cheat!!!!!"
        MsgBox strMsg, vbOKOnly + vbExclamation, "No Cheating"
        Range("a1").Select
    End If
    If Target.Address = "$D$34" Then Range("a1").Select
End Sub

