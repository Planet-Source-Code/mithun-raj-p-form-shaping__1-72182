VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3855
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3855
   ScaleWidth      =   4815
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox picMainSkin 
      FillColor       =   &H00C0FFFF&
      Height          =   2895
      Left            =   0
      Picture         =   "form shaper.frx":0000
      ScaleHeight     =   2835
      ScaleWidth      =   3675
      TabIndex        =   0
      Top             =   0
      Width           =   3735
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "X"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF80FF&
         Height          =   375
         Left            =   2640
         TabIndex        =   2
         Top             =   600
         Width           =   255
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   600
         TabIndex        =   1
         Top             =   3120
         Width           =   1095
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub Form_Load()

Dim WindowRegion As Long

   

   'Picture1.BackColor = &H0&
   'Picture2.BackColor = &H0&
   
    
    picMainSkin.ScaleMode = vbPixels
    picMainSkin.AutoRedraw = True
    picMainSkin.AutoSize = True
    picMainSkin.BorderStyle = vbBSNone
    Me.BorderStyle = vbBSNone
    Me.Width = picMainSkin.Width
    Me.Height = picMainSkin.Height
    WindowRegion = MakeRegion(picMainSkin)
   SetWindowRgn Me.hWnd, WindowRegion, True
End Sub


Private Sub Label2_DblClick()
End
End Sub

Private Sub Label1_Click()
End
End Sub

Private Sub picMainSkin_DblClick()
End
End Sub

Private Sub picMainSkin_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim lngReturnValue As Long
   If Button = 1 Then
      Call ReleaseCapture
      lngReturnValue = SendMessage(Form1.hWnd, WM_NCLBUTTONDOWN, HTCAPTION, 0&)
  End If
End Sub
