object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 502
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 805
    Height = 502
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabOrder
    Properties.CustomButtons.Buttons = <>
    ExplicitHeight = 468
    ClientRectBottom = 498
    ClientRectLeft = 4
    ClientRectRight = 801
    ClientRectTop = 24
    object tabOrder: TcxTabSheet
      Caption = 'Order'
      ImageIndex = 0
      ExplicitHeight = 440
      object pnlGeneral: TPanel
        Left = 0
        Top = 0
        Width = 797
        Height = 474
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 440
        object pnlGrid: TPanel
          Left = 1
          Top = 105
          Width = 795
          Height = 368
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 334
          object gridOrderItems: TDBGrid
            Left = 1
            Top = 1
            Width = 793
            Height = 325
            Align = alClient
            DataSource = dsOrderItems
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
          object pnlControlItem: TPanel
            Left = 1
            Top = 326
            Width = 793
            Height = 41
            Align = alBottom
            TabOrder = 1
            ExplicitLeft = 304
            ExplicitTop = 152
            ExplicitWidth = 185
            object btnRemoveItem: TcxButton
              Left = 657
              Top = 6
              Width = 129
              Height = 25
              Caption = 'Remove Order Item'
              TabOrder = 0
              OnClick = btnRemoveItemClick
            end
            object btnAddItem: TcxButton
              Left = 522
              Top = 6
              Width = 129
              Height = 25
              Caption = 'Add Order Item'
              TabOrder = 1
              OnClick = btnAddItemClick
            end
          end
        end
        object pnlTop: TPanel
          Left = 1
          Top = 1
          Width = 795
          Height = 104
          Align = alTop
          TabOrder = 1
          object pnlActions: TPanel
            Left = 1
            Top = 1
            Width = 793
            Height = 40
            Align = alTop
            TabOrder = 0
            object btnNewOrder: TcxButton
              Left = 13
              Top = 9
              Width = 75
              Height = 25
              Caption = 'New Order'
              TabOrder = 0
              OnClick = btnNewOrderClick
            end
            object btnSaveOrder: TcxButton
              Left = 94
              Top = 9
              Width = 75
              Height = 25
              Caption = 'Save'
              TabOrder = 1
              OnClick = btnSaveOrderClick
            end
            object btnDeleteOrder: TcxButton
              Left = 175
              Top = 9
              Width = 75
              Height = 25
              Caption = 'Delete'
              TabOrder = 2
              OnClick = btnDeleteOrderClick
            end
            object btnOrderReport: TcxButton
              Left = 640
              Top = 9
              Width = 146
              Height = 25
              Caption = 'Generate Order Report'
              TabOrder = 3
              OnClick = btnOrderReportClick
            end
          end
          object pnlProductOrder: TPanel
            Left = 1
            Top = 41
            Width = 793
            Height = 62
            Align = alClient
            TabOrder = 1
            object lblOrderId: TLabel
              Left = 25
              Top = 9
              Width = 50
              Height = 13
              Caption = 'Order Id:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblClientId: TLabel
              Left = 25
              Top = 36
              Width = 50
              Height = 13
              Caption = 'Client Id:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 232
              Top = -16
              Width = 31
              Height = 13
              Caption = 'Label2'
            end
            object lblClientName: TLabel
              Left = 170
              Top = 36
              Width = 70
              Height = 13
              Caption = 'Client Name:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object lblOrderDate: TLabel
              Left = 299
              Top = 9
              Width = 30
              Height = 13
              Caption = 'Date:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object btnLoadOrder: TcxButton
              Left = 170
              Top = 5
              Width = 115
              Height = 25
              Caption = 'Load Order'
              TabOrder = 0
              OnClick = btnLoadOrderClick
            end
            object edtOrderId: TcxTextEdit
              Left = 81
              Top = 6
              TabOrder = 1
              Width = 83
            end
            object edtClientId: TcxTextEdit
              Left = 81
              Top = 33
              TabOrder = 2
              Width = 83
            end
            object edtOrderDate: TcxTextEdit
              Left = 335
              Top = 6
              TabOrder = 3
              Width = 122
            end
          end
        end
      end
    end
    object tabProduct: TcxTabSheet
      Caption = 'Product'
      ImageIndex = 1
      ExplicitHeight = 440
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 797
        Height = 474
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 440
        object Panel2: TPanel
          Left = 1
          Top = 105
          Width = 795
          Height = 368
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 334
          object gridProducts: TDBGrid
            Left = 1
            Top = 1
            Width = 793
            Height = 366
            Align = alClient
            DataSource = dsProducts
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 795
          Height = 104
          Align = alTop
          TabOrder = 1
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 793
            Height = 40
            Align = alTop
            TabOrder = 0
            object btnNewProduct: TcxButton
              Left = 15
              Top = 9
              Width = 75
              Height = 25
              Caption = 'New Product'
              TabOrder = 0
              OnClick = btnNewProductClick
            end
            object btnSaveProduct: TcxButton
              Left = 96
              Top = 9
              Width = 75
              Height = 25
              Caption = 'Save'
              TabOrder = 1
              OnClick = btnSaveProductClick
            end
            object btnDeleteProduct: TcxButton
              Left = 177
              Top = 11
              Width = 75
              Height = 25
              Caption = 'Delete'
              TabOrder = 2
              OnClick = btnDeleteProductClick
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 41
            Width = 793
            Height = 62
            Align = alClient
            TabOrder = 1
            object lblProductPrice: TLabel
              Left = 571
              Top = 9
              Width = 31
              Height = 13
              Caption = 'Price:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblProductName: TLabel
              Left = 248
              Top = 8
              Width = 35
              Height = 13
              Caption = 'Name:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblProductId: TLabel
              Left = 60
              Top = 8
              Width = 15
              Height = 13
              Caption = 'Id:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblDescriptionProduct: TLabel
              Left = 8
              Top = 34
              Width = 67
              Height = 13
              Caption = 'Description:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtProductId: TcxTextEdit
              Left = 81
              Top = 6
              TabOrder = 0
              Width = 83
            end
            object edtProductDescription: TcxTextEdit
              Left = 81
              Top = 33
              TabOrder = 1
              Width = 648
            end
            object edtProductPrice: TcxTextEdit
              Left = 608
              Top = 6
              TabOrder = 2
              Width = 121
            end
            object edtProductName: TcxTextEdit
              Left = 289
              Top = 6
              TabOrder = 3
              Width = 248
            end
            object btnLoadProduct: TcxButton
              Left = 170
              Top = 2
              Width = 55
              Height = 25
              Caption = 'Load'
              TabOrder = 4
              OnClick = btnLoadProductClick
            end
          end
        end
      end
    end
  end
  object frxReportOrders: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45555.151772569400000000
    ReportOptions.LastChange = 45555.823914189820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 673
    Top = 297
    Datasets = <
      item
        DataSet = frxDBClient
        DataSetName = 'frxDBClient'
      end
      item
        DataSet = frxDBOrder
        DataSetName = 'frxDBDataSet1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 204.094620000000000000
          Top = 6.102350000000001000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Address:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 268.346630000000000000
          Top = 6.102350000000001000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '355 Jo'#227'o Ribeiro do Nascimento Street')
        end
        object Memo3: TfrxMemoView
          Left = 204.094620000000000000
          Top = 25.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ZIP Code:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 276.110390000000000000
          Top = 25.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '14781-530')
        end
        object Memo7: TfrxMemoView
          Left = 351.700990000000000000
          Top = 25.000000000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'City:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 393.275820000000000000
          Top = 25.000000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Barretos')
        end
        object Memo9: TfrxMemoView
          Left = 506.661720000000000000
          Top = 25.000000000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'State:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 552.016080000000000000
          Top = 25.000000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'SP')
        end
        object Memo11: TfrxMemoView
          Left = 204.094620000000000000
          Top = 43.897650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Phone Number:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 204.094620000000000000
          Top = 62.795300000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 317.480520000000000000
          Top = 43.897650000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            ' +55 (17) 3321-8000')
        end
        object Memo6: TfrxMemoView
          Left = 249.448980000000000000
          Top = 62.795300000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'support@minervafoods.com')
        end
        object Picture2: TfrxPictureView
          Left = 7.559060000000000000
          Top = 3.779530000000001000
          Width = 196.535560000000000000
          Height = 79.370130000000000000
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'COSTUMER ORDER REPORT')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBClient
        DataSetName = 'frxDBClient'
        RowCount = 0
        object Memo15: TfrxMemoView
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Phone Number:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 56.692949999999800000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 113.385900000000000000
          Top = 37.795300000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBClient."ClientPhone"')
        end
        object Memo18: TfrxMemoView
          Left = 45.354360000000000000
          Top = 56.692950000000020000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBClient."ClientEmail"')
        end
        object Memo13: TfrxMemoView
          Top = 18.897649999999940000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Address:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 64.252010000000000000
          Top = 18.897650000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBClient."ClientAddress"')
        end
        object Memo19: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Name:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 52.913420000000000000
          Width = 464.882190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBClient."ClientName"')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBDataSet1."client_id">'
        object Memo22: TfrxMemoView
          Top = 3.779530000000022000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Order ID')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000022000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Order Date')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 128.504020000000000000
          Top = 3.779530000000022000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Product ID')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 200.315090000000000000
          Top = 3.779530000000022000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Product Name')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000022000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantity')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000022000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit Price')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 559.370440000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Total')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 638.740570000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Order Total')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 362.834880000000000000
        Width = 718.110700000000000000
        DataSet = frxDBOrder
        DataSetName = 'frxDBDataSet1'
        RowCount = 0
        object Memo30: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."order_id"')
        end
        object Memo31: TfrxMemoView
          Left = 56.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."OrderDate"')
        end
        object Memo32: TfrxMemoView
          Left = 128.504020000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."ProductID"')
        end
        object Memo33: TfrxMemoView
          Left = 200.315090000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."ProductName"')
        end
        object Memo34: TfrxMemoView
          Left = 434.645950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."Quantity"')
        end
        object Memo35: TfrxMemoView
          Left = 491.338900000000000000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."UnitPrice"')
        end
        object Memo36: TfrxMemoView
          Left = 559.370440000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."ItemTotal"')
        end
        object Memo37: TfrxMemoView
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'frxDBDataSet1."OrderTotal"')
        end
      end
    end
  end
  object frxDBClient: TfrxDBDataset
    UserName = 'frxDBClient'
    CloseDataSource = False
    DataSet = qryClient
    BCDToCurrency = False
    Left = 697
    Top = 401
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=DESKTOP-LQTA0BU\SQLEXPRESS'
      'Database=CRUD_MinervaFoods'
      'OSAuthent=Yes'
      'ApplicationName=Architect'
      'Workstation=DESKTOP-LQTA0BU'
      'MARS=yes'
      'DriverID=MSSQL')
    Left = 529
    Top = 297
  end
  object qryOrder: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '#10'  '
      '  o.order_id AS OrderID,'#10'  '
      '  o.order_date AS OrderDate,'#10'  '
      '  i.item_id AS ProductID,'#10'  '
      '  p.item_name AS ProductName,'#10'  '
      '  i.quantity AS Quantity,'#10'  '
      '  i.unit_price AS UnitPrice,'#10'  '
      '  (i.quantity * i.unit_price) AS ItemTotal,'#10'  '
      '  o.total_value AS OrderTotal'
      #10'FROM '#10'  tab_orders o'#10
      '  JOIN '#10'  tab_orders_item i ON o.order_id = i.order_id'
      #10'  JOIN '#10'  tab_item p ON i.item_id = p.item_id'
      #10'WHERE '#10'  '
      '  o.client_id = :ClientID'
      #10'  AND '#10'  o.order_date BETWEEN :StartDate AND :EndDate'
      #10'ORDER BY '#10'  '
      '  o.order_date, '
      '  o.order_id;')
    Left = 561
    Top = 217
    ParamData = <
      item
        Name = 'CLIENTID'
        ParamType = ptInput
      end
      item
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
  end
  object qryClient: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'client_name AS ClientName,'
      #9'client_address AS ClientAddress,'
      #9'phone AS ClientPhone,'
      #9'email as ClientEmail'
      'FROM tab_clients '
      #10'WHERE'#10#9'client_id = :ClientID')
    Left = 577
    Top = 273
    ParamData = <
      item
        Name = 'CLIENTID'
        ParamType = ptInput
      end>
  end
  object frxDBOrder: TfrxDBDataset
    UserName = 'frxDBDataSet1'
    CloseDataSource = False
    DataSet = qryOrder
    BCDToCurrency = False
    Left = 625
    Top = 377
  end
  object qryProducts: TFDQuery
    AfterScroll = qryProductsAfterScroll
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      #9'item_id AS ProductID, '
      #9'item_name AS ProductName,'
      #9'item_description AS ProductDescription,'
      #9'price AS ProductPrice'
      'FROM tab_item ')
    Left = 417
    Top = 273
  end
  object dsProducts: TDataSource
    DataSet = qryProducts
    Left = 293
    Top = 369
  end
  object qryOrderItems: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  o.order_id AS OrderID,'#10'  '
      '  o.client_id AS ClientID,'#10'  '
      '  c.client_name AS ClientName,'
      '  o.order_date AS OrderDate,'
      '  i.item_id AS ProductID,'
      '  p.item_name AS ProductName,'
      '  i.quantity AS Quantity,'
      '  i.unit_price AS UnitPrice,'
      '  (i.quantity * i.unit_price) AS ItemTotal,'
      '  o.total_value AS OrderTotal'#10
      'FROM tab_orders o'
      '  JOIN tab_orders_item i ON o.order_id = i.order_id'#10'  '
      '  JOIN tab_item p ON i.item_id = p.item_id'
      '  JOIN tab_clients c ON c.client_id = o.client_id'
      #10'WHERE '
      'o.order_id = :cod_order'
      #10'ORDER BY '
      '  o.order_date, '
      '  o.order_id;')
    Left = 401
    Top = 209
    ParamData = <
      item
        Name = 'COD_ORDER'
        ParamType = ptInput
      end>
  end
  object dsOrderItems: TDataSource
    AutoEdit = False
    DataSet = qryOrderItems
    Left = 501
    Top = 353
  end
end
