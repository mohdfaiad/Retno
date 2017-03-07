object fraBonusProduct: TfraBonusProduct
  Left = 0
  Top = 0
  Width = 688
  Height = 287
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object pnl1: TPanel
    Left = 0
    Top = 23
    Width = 688
    Height = 264
    Align = alClient
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 0
    object pnl2: TPanel
      Left = 2
      Top = 2
      Width = 684
      Height = 145
      Align = alClient
      BevelOuter = bvLowered
      BorderWidth = 20
      TabOrder = 0
      DesignSize = (
        684
        145)
      object lblDelete: TcxLabel
        Left = 585
        Top = 4
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Delete'
        ParentFont = False
        Transparent = True
        OnClick = lblDeleteClick
      end
      object lblAdd: TcxLabel
        Left = 524
        Top = 4
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Add'
        ParentFont = False
        Transparent = True
        OnClick = lblAddClick
      end
      object lblClose: TcxLabel
        Left = 628
        Top = 4
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Close'
        ParentFont = False
        Transparent = True
        OnClick = lblCloseClick
      end
      object lblEdit: TcxLabel
        Left = 554
        Top = 4
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Edit'
        ParentFont = False
        Transparent = True
        OnClick = lblEditClick
      end
      object pnl3: TPanel
        Left = 21
        Top = 92
        Width = 642
        Height = 32
        Align = alBottom
        BevelOuter = bvLowered
        Caption = 'pnl3'
        TabOrder = 0
        object lbl11: TLabel
          Left = 10
          Top = 6
          Width = 101
          Height = 16
          Caption = 'Product Bonus Name'
        end
        object edtProductNameUP: TEdit
          Left = 115
          Top = 5
          Width = 467
          Height = 22
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Text = 'WHITE STICK 30 X 10 S / 12 GR'
        end
      end
      object cxGrid: TcxGrid
        Left = 21
        Top = 21
        Width = 642
        Height = 71
        Align = alClient
        TabOrder = 1
        object cxGridViewBonusProduct: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = '<No Data>'
          OptionsView.GroupByBox = False
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridViewBonusProduct
        end
      end
    end
    object pnlAddEdit: TPanel
      Left = 2
      Top = 147
      Width = 684
      Height = 115
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15198183
      TabOrder = 1
      Visible = False
      object lbl1: TLabel
        Left = 18
        Top = 32
        Width = 99
        Height = 16
        Caption = 'Product Bonus Code'
      end
      object lbl2: TLabel
        Left = 325
        Top = 7
        Width = 80
        Height = 16
        Caption = 'Qty Order From'
      end
      object lbl3: TLabel
        Left = 451
        Top = 9
        Width = 11
        Height = 16
        Caption = 'To'
      end
      object lbl4: TLabel
        Left = 64
        Top = 7
        Width = 52
        Height = 16
        Caption = 'Date From'
      end
      object lbl5: TLabel
        Left = 203
        Top = 8
        Width = 11
        Height = 16
        Caption = 'To'
      end
      object lbl7: TLabel
        Left = 51
        Top = 55
        Width = 66
        Height = 16
        Caption = 'Qty Bonus CS'
      end
      object lbl8: TLabel
        Left = 40
        Top = 77
        Width = 78
        Height = 16
        Caption = 'Qty Bonus Sales'
      end
      object lbl10: TLabel
        Left = 419
        Top = 55
        Width = 78
        Height = 16
        Caption = 'Total Qty Bonus'
      end
      object edtProductCodeBNS: TEdit
        Left = 119
        Top = 30
        Width = 70
        Height = 22
        Ctl3D = False
        MaxLength = 6
        ParentCtl3D = False
        TabOrder = 4
        Text = '123456'
        OnChange = edtProductCodeBNSChange
        OnKeyUp = edtProductCodeBNSKeyUp
      end
      object edtProductNamebwh: TEdit
        Left = 190
        Top = 30
        Width = 371
        Height = 22
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        Text = 'WHITE STICK 30 X 10 S / 12 GR'
      end
      object intedtQtyOrderFrom: TcxCurrencyEdit
        Left = 407
        Top = 7
        TabOrder = 2
        Width = 41
      end
      object intedtQtyOrderTo: TcxCurrencyEdit
        Left = 464
        Top = 7
        TabOrder = 3
        Width = 41
      end
      object dtFrom: TcxDateEdit
        Left = 119
        Top = 6
        TabOrder = 0
        Width = 81
      end
      object dtTo: TcxDateEdit
        Left = 220
        Top = 6
        TabOrder = 1
        Width = 81
      end
      object intedtQtyBnsSals: TcxCurrencyEdit
        Left = 119
        Top = 76
        TabOrder = 8
        OnKeyUp = intedtQtyBnsSalsKeyUp
        Width = 61
      end
      object intedtQtyBnsCS: TcxCurrencyEdit
        Left = 119
        Top = 53
        TabOrder = 6
        OnKeyUp = intedtQtyBnsCSKeyUp
        Width = 61
      end
      object intedtTotalBonus: TcxCurrencyEdit
        Left = 500
        Top = 53
        TabOrder = 10
        Width = 61
      end
      object chkIsActive: TCheckBox
        Left = 500
        Top = 79
        Width = 65
        Height = 17
        Caption = 'Active'
        TabOrder = 11
      end
      object edtUOMPurchase: TEdit
        Left = 507
        Top = 7
        Width = 54
        Height = 22
        Ctl3D = False
        MaxLength = 6
        ParentCtl3D = False
        TabOrder = 12
        Text = 'UOM'
        OnChange = edtProductCodeBNSChange
        OnKeyUp = edtProductCodeBNSKeyUp
      end
      object edtUOMCS: TEdit
        Left = 181
        Top = 53
        Width = 53
        Height = 22
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object edtUOMSales: TEdit
        Left = 181
        Top = 76
        Width = 53
        Height = 22
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object btnSave: TcxButton
        Left = 264
        Top = 75
        Width = 65
        Height = 25
        Caption = 'Save'
        OptionsImage.Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000FF00FF663333
          6633336633336633336633336633336633336633336633336633336633336633
          33663333663333FF00FFFF00FF60606060606060606060606060606060606060
          6060606060606060606060606060606060606060606060000000FF00FFD78300
          FFCACC993300D4E3FFD4E3FFD4D4FFD4E3FFD4D4FFD4E3FFD4D4FFD4D4FF9933
          00DE9A3E663333FF00FFFF00FF606060FFFFFF606060FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF606060FFFFFF606060FFFFFFFF00FFD78300
          FFE2B4993300D4E3FFCC9999CC9999CC9999CC9999CC9999CC9999D4D4FF9933
          00DE9A3E663333FF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFD78300
          FFCACC993300D4E3FFD4E3FFD4E3FFD4E3FFD4D4FFD4E3FFD4D4FFD4E3FF9933
          00DE9A3E663333FF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFD78300
          FFE2B4993300F0D4FFCC9999CC9999CC9999CC9999CC9999CC9999D4D4FF9933
          00DE9A3E663333FF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFD78300
          FFCACC993300D4E3FFF0D4FFD4E3FFD4E3FFD4E3FFD4E3FFD4D4FFD4E3FF9933
          00DE9A3E663333FF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF606060FFFFFFFF00FFD78300
          FFE2B4FFCACC993300993300993300993300993300993300993300993300CC99
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FF60606060606060606060
          6060606060606060606060606060FF00FFFF00FF606060FFFFFFFF00FFD78300
          FFCACCFFCC99FFCACCCC9999FFCACCCC9999FFCC99CC9999FFCC99CC9999CC99
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF606060FFFFFFFF00FFD78300
          FFE2B4FFCACCFFCC99FFCACCCC9999FFCACCCC9999FFCC99CC9999FFCC99CC99
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFD78300
          FFCACCFFCC99FFCACCFFCC99FFCACCCC9999FFCACCCC9999FFCC99CC9999FFCC
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFD78300
          FFE2B4FFCACC606060404040404040404040404040404040404040FFCC99CC99
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FF60606060606060606060
          6060606060606060606060FF00FFFF00FFFF00FF606060FFFFFFFF00FFD78300
          FFCACCFFCC99606060DCDCDCDCDCDCBFBFBF9F9F9FBFBFBF7F7F7F404040FFCC
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FF606060FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF606060FF00FFFF00FF606060FFFFFFFF00FFD78300
          FFE2B4FFCACC606060DCDCDCFFFFFFDCDCDCBFBFBF9F9F9FBFBFBF404040CC99
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FF606060FFFFFFFF00FFFF
          00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FF606060FFFFFFFF00FFD78300
          FFCACCFFCC99606060DCDCDCFFFFFFDCDCDCDCDCDCBFBFBF9F9F9F404040CC99
          99DE9A3E663333FF00FFFF00FF606060FFFFFFFF00FF606060FFFFFFFF00FFFF
          00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FF606060FFFFFFFF00FFD78300
          D78300D78300D78300D78300D78300D78300D78300D78300D78300D78300D783
          00D78300FF00FFFF00FFFF00FF60606060606060606060606060606060606060
          6060606060606060606060606060606060606060FFFFFFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF}
        OptionsImage.NumGlyphs = 2
        TabOrder = 13
        OnClick = btnSaveClick
      end
      object btnCancel: TcxButton
        Left = 332
        Top = 75
        Width = 61
        Height = 25
        Caption = 'Cancel'
        OptionsImage.Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF500000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFCC6600CC6600500000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF606060FFFFFFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          CC6600D78300D78300CC6600500000FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFFF00FF606060FF
          FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6600
          FF9900DE9A3ED78300D78300CC6600500000FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FF60
          6060FFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFCC6600FFCC99
          FF9900FF9900DE9A3ED78300D78300CC6600500000FF00FFFF00FFFF00FF5000
          00500000500000500000606060FFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF
          00FF606060FFFFFFFF00FFFF00FF606060606060606060606060D78300CC6600
          CC6600FF9900FF9900DE9A3E500000500000500000FF00FFFF00FFFF00FFCC66
          00CC6600CC6600500000606060606060606060FFFFFFFF00FFFF00FF60606060
          6060606060FFFFFFFF00FFFF00FF606060FFFFFFFF00FF606060FF00FFFF00FF
          CC6600FFAA00FF9900FF9900500000FF00FFFF00FFFF00FFFF00FFFF00FFCC66
          00D78300CC6600500000FF00FFFF00FF606060FFFFFFFF00FFFF00FF606060FF
          FFFFFFFFFFFFFFFFFF00FFFF00FF606060FFFFFFFF00FF606060FF00FFFF00FF
          CC6600FFCC99FFAA00FF9900CC6600500000FF00FFFF00FFFF00FFCC6600D783
          00D78300CC6600500000FF00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FF60
          6060FFFFFFFF00FFFF00FF606060FFFFFFFF00FFFFFFFF606060FF00FFFF00FF
          FF00FFCC6600FFCC99FFAA00FF9900CC6600500000500000500000D78300D783
          00D78300500000FF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFFF00FFFF
          00FF606060606060606060FFFFFFFF00FFFF00FF606060FF00FFFF00FFFF00FF
          FF00FFCC6600FFCC99FFCC99FFAA00FF9900CC6600CC6600CC6600DE9A3ED783
          00D78300500000FF00FFFF00FFFF00FFFF00FF606060FFFFFFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF606060FF00FFFF00FFFF00FF
          FF00FFFF00FFCC6600FFCC99FFCC99FFAA00FF9900FF9900FF9900DE9A3EDE9A
          3E500000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFFFFFFFF
          00FFFF00FFFF00FFFF00FFFFFFFFFFFFFF606060FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFCC6600CC6600FFCC99FFAA00FF9900FF9900CC6600CC66
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060606060FF
          FFFFFFFFFFFFFFFFFFFFFF606060606060FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFCC6600CC6600CC6600CC6600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF60
          6060606060606060606060FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OptionsImage.NumGlyphs = 2
        TabOrder = 14
        OnClick = btnSaveClick
      end
    end
  end
  object pnl4: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 23
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'BONUS PRODUCT'
    Color = 15422804
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
