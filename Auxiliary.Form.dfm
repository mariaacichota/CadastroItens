object frmAuxiliary: TfrmAuxiliary
  Left = 0
  Top = 0
  Caption = 'Auxiliary Form'
  ClientHeight = 186
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGeneral: TPanel
    Left = 0
    Top = 0
    Width = 291
    Height = 186
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 248
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object edtStartDate: TcxDateEdit
      Left = 16
      Top = 48
      TabOrder = 0
      Width = 121
    end
    object edtEndDate: TcxDateEdit
      Left = 16
      Top = 104
      TabOrder = 1
      Width = 121
    end
    object btnOk: TcxButton
      Left = 16
      Top = 144
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = btnOkClick
    end
    object lblStartDate: TcxLabel
      Left = 16
      Top = 25
      Caption = 'Start Date:'
    end
    object lblEndDate: TcxLabel
      Left = 16
      Top = 81
      Caption = 'End Date:'
    end
  end
end
