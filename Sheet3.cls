VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Sheet3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Option Explicit

Private Const cstrHiddenCell = "a1"

Private Sub Worksheet_Activate()
    Range(cstrHiddenCell).Select
End Sub

Private Sub Worksheet_SelectionChange(ByVal Target As Range)
    Dim strMsg As String
    If Not Intersect(Target, Range("HighScores")) Is Nothing Then
        strMsg = "You cannot fix the scores you cheat!!!!!"
        MsgBox strMsg, vbOKOnly + vbExclamation, "No Cheating"
        Range("a1").Select
    End If
End Sub
