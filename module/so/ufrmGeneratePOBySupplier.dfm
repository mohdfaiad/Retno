inherited frmGeneratePOBySupplier: TfrmGeneratePOBySupplier
  Left = 270
  Top = 182
  Width = 668
  Height = 373
  Caption = 'Generate Purchasing Order By Supplier'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 660
    Height = 256
    BorderWidth = 0
    Caption = ''
    object lbl3: TLabel
      Left = 18
      Top = 6
      Width = 107
      Height = 16
      Caption = 'No. Suggestion Order'
    end
    object lbl4: TLabel
      Left = 85
      Top = 29
      Width = 40
      Height = 16
      Caption = 'Date SO'
    end
    object bvl1: TBevel
      Left = 9
      Top = 106
      Width = 433
      Height = 17
      Shape = bsTopLine
    end
    object lbl1: TLabel
      Left = 9
      Top = 112
      Width = 115
      Height = 16
      Caption = 'Date Purchasing Order'
    end
    object lbl2: TLabel
      Left = 28
      Top = 52
      Width = 96
      Height = 16
      Caption = 'Merchandise Group'
    end
    object lbl5: TLabel
      Left = 56
      Top = 79
      Width = 67
      Height = 16
      Caption = 'Supplier Code'
    end
    object edtNoSO: TEdit
      Left = 133
      Top = 6
      Width = 132
      Height = 22
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      OnChange = edtNoSOChange
      OnKeyPress = edtNoSOKeyPress
    end
    object dtDateSO: TJvDateEdit
      Left = 133
      Top = 29
      Width = 132
      Height = 22
      ButtonFlat = True
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object dtDatePO: TJvDateEdit
      Left = 133
      Top = 111
      Width = 132
      Height = 22
      ButtonFlat = True
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 6
    end
    object btnProcessPO: TsuiButton
      Left = 156
      Top = 134
      Width = 113
      Height = 27
      Cursor = crHandPoint
      Caption = 'Process PO (F5)'
      AutoSize = False
      UIStyle = BlueGlass
      Action = actGeneratPOBySupplier
      TabOrder = 7
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF
        FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF500019
        500019FF00FFFF00FFFF00FFFF00FF500019500019FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FF9F
        9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
        993300500019FF00FFFF00FFFF00FF663333993300500019FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FF9F9F9FFFFFFFFF00FFFF00FF9F
        9F9FFFFFFF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
        993300993300500019FF00FFFF00FF663333993300993300500019FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FF9F9F9FFFFFFFFF00FF9F
        9F9FFFFFFFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF663333
        993300993300993300500019FF00FF663333993300993300993300500019FF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FF9F9F9FFFFFFF9F
        9F9FFFFFFFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF663333
        9933009933009933009933005000196633339933009933009933009933005000
        19FF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FF9F9F9F9F
        9F9FFFFFFFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FF663333
        CC6600993300CC6600993300CC6600663333993300CC6600993300CC66009933
        00500019FF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF9F
        9F9FFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FF663333
        993300CC6600993300CC6600993300993300CC6600993300CC6600993300CC66
        00993300500019FF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FF663333
        CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC66
        00CC6600663333FF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF
        FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FF663333
        CC6600FF9900CC6600FF9900CC6600663333FF9900CC6600FF9900CC6600FF99
        00663333FF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFFFFFF9F
        9F9FFFFFFFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FF663333
        FF9900FF9900FF9900FF9900663333663333FF9900FF9900FF9900FF99006633
        33FF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFFFFFF9F9F9F9F
        9F9FFFFFFFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FF663333
        FF9900FF9900FF9900663333FF00FF663333FF9900FF9900FF9900663333FF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFFFFFF9F9F9FFF00FF9F
        9F9FFFFFFFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF663333
        FF9900FF9900663333FF00FFFF00FF663333FFE2B4FFE2B4663333FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFFFFFF9F9F9FFF00FFFF00FF9F
        9F9FFFFFFFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
        FFFFDE663333FF00FFFF00FFFF00FF663333FFFFDE663333FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FF9F
        9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
        663333FF00FFFF00FFFF00FFFF00FF663333663333FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF9F9F9F9F9F9FFF00FFFF00FFFF00FFFF00FF9F
        9F9F9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      ResHandle = 0
    end
    object pbProcess: TJvProgressBar
      Left = 1
      Top = 239
      Width = 658
      Height = 16
      Align = alBottom
      Position = 30
      TabOrder = 9
    end
    object cbbMerchanGroup: TComboBox
      Left = 133
      Top = 52
      Width = 188
      Height = 24
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 16
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Pilih...'
      OnChange = cbbMerchanGroupChange
      Items.Strings = (
        'Pilih...'
        'Hard Line'
        'Soft Line'
        'Dry Food'
        'Fresh & Frozen')
    end
    object cbbSupplierCode: TComboBox
      Left = 133
      Top = 77
      Width = 68
      Height = 24
      BevelKind = bkSoft
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 16
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Pilih...'
      OnChange = cbbSupplierCodeChange
      Items.Strings = (
        'Pilih...'
        'BHSB'
        'DLKDK'
        'ALSLK'
        'TEMPSL')
    end
    object edtSupplierName: TEdit
      Left = 203
      Top = 77
      Width = 236
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object pnl1: TPanel
      Left = 1
      Top = 210
      Width = 658
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      Color = 15198183
      TabOrder = 10
      DesignSize = (
        658
        29)
      object lblKet: TLabel
        Left = 8
        Top = 5
        Width = 132
        Height = 16
        Anchors = [akLeft, akBottom]
        Caption = 'processing generate PO...'
      end
    end
    object btn1: TsuiButton
      Left = 270
      Top = 3
      Width = 45
      Height = 27
      Cursor = crHandPoint
      Caption = 'F2'
      AutoSize = False
      UIStyle = BlueGlass
      TabOrder = 1
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E000000000000000000007F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFF00FFFF00
        FF003250003250FF00FFBFBFBFFFFFFFBFBFBF7F7F7F9F9F9F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7FFFFFFFFF00FF7F7F7F7F7F7FFF00FFBFBFBFDCDCDC
        BFBFBFDCDCDCBFBFBFDCDCDCBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFF00FF003D
        B90033FF0099CC003250BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF7F7F7FFFFFFF7F7F7FFFFFFFFF00FF7F7F7FBFBFBFFFFFFF
        DCDCDCBFBFBFDCDCDCBFBFBFDCDCDCBFBFBFBFBFBFBFBFBF606060003DB90033
        FFB1C7FF0055FF0032507F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7F7F7F7FFFFFFFFF00FFFF00FF7F7F7FBFBFBFFFFFFF
        BFBFBFDCDCDCBFBFBFDCDCDCBFBFBFDCDCDCBFBFBFBFBFBF003DB90033FFB1C7
        FF0055FF0033FF0032509F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FF7F7F7FBFBFBFFFFFFF
        DCDCDCDCDCDCDCDCDCBFBFBFBFBFBFBFBFBFBFBFBF003DB90033FFB1C7FF0055
        FF0033FF003250FF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFFFF
        FFFFFFFFFF7F7F7FFFFFFFFF00FFFF00FFFF00FF7F7F7FFFFFFFBFBFBFFFFFFF
        DCDCDCDCDCDCBFBFBFFF9900CC6600CC6600CC6600BFBFBFBFBFBF0055FF0033
        FF003250FF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FF7F7F7F7F7F7F7F
        7F7F7F7F7FFFFFFFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFBFBFBFFFFFFF
        DCDCDCBFBFBFFF9900DE9A3EDE9A3EDE9A3ED78300CC66009F9F9F7F7F7F0032
        50FF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF
        00FFFF00FF7F7F7FFFFFFFFF00FF7F7F7FFFFFFFFF00FFFF00FFBFBFBFFFFFFF
        FFFFFFFF9900DE9A3EFFCC99FFCC99FFCC99DE9A3ED78300663333003250FF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7F7F7F7FFFFFFFFF00FFFF00FFFF00FFBFBFBFFFFFFF
        DCDCDCFF9900FFE2B4FFE2B4FFE2B4FFCC99FFCC99DE9A3E663333FF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFF
        FFFFFFFF9900FFE2B4FFFFDEFFFFFFFFE2B4FFCC99DE9A3E663333FF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFF
        DCDCDCFF9900DE9A3EFFFFFFFFFFDEFFE2B4FFCC99DE9A3E663333FF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF9F9F9FDCDCDCFF00FFFF00FFFF
        00FFBFBFBFBFBFBF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFF
        FFFFFFDCDCDCCC6600DE9A3EFFE2B4FFE2B4DE9A3E6633337F7F7FFF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF9F9F9FDCDCDCFFFFFFFF
        FFFFFFFFFF7F7F7FBFBFBFFFFFFFFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFF
        FFFFFFFFFFFFDCDCDCCC6600663333663333663333BFBFBF7F7F7FFF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FF9F9F9F9F9F9F7F
        7F7F7F7F7FFF00FFBFBFBFFFFFFFFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFF
        FFFFFFFFFFFFFFFFFFDCDCDCFFFFFFDCDCDCDCDCDCDCDCDC7F7F7FFF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFC0C0C0FFFFFFFF00FFFF00FFFF00FFFF00FFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FFF00FFFF00
        FFFF00FFFF00FFFF00FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F9F
        9F9F7F7F7F9F9F9FBFBFBFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn1Click
      ResHandle = 0
    end
    object btn2: TsuiButton
      Left = 156
      Top = 160
      Width = 113
      Height = 27
      Cursor = crHandPoint
      Caption = 'Detail PO (F3)'
      AutoSize = False
      Visible = False
      UIStyle = BlueGlass
      TabOrder = 8
      Transparent = True
      ModalResult = 0
      FocusedRectMargin = 2
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF005019FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF
        FFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF005019009900005019FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF00FF7F
        7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF005019009900009900009900005019FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF00FFFF00FFFF
        00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00501933CC6633CC6600B93D00B93D009900005019FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF00FFFF00FFFF00FFFF
        00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        00501933CC6666FF9900B93D33CC6600B93D00B93D009900005019FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF005019
        33CC6666FF9933CC6666FF9933CC6633CC6600B93D00B93D009900005019FF00
        FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FF006600
        66FF9933CC6666FF9933CC6666FF9966FF9933CC6600B93D00B93D0099000050
        19FF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFFFFFFFF
        00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FF006600
        66FF9966FF9933CC6666FF99006600CCFFCC66FF9933CC6600B93D00B93D0099
        00005019FF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFFFFFF7F7F7FFF
        FFFFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF006600
        CCFFCC66FF9966FF99006600FF00FF006600CCFFCC66FF9933CC6600B93D00B9
        3D009900005019FF00FFFF00FF7F7F7FFFFFFFFF00FFFFFFFF7F7F7FFF00FF7F
        7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF006600
        CCFFCCCCFFCC006600FF00FFFF00FFFF00FF006600CCFFCC66FF9933CC6600B9
        3D00B93D005019FF00FFFF00FF7F7F7FFFFFFFFFFFFF7F7F7FFF00FFFF00FFFF
        00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF006600
        CCFFCC006600FF00FFFF00FFFF00FFFF00FFFF00FF006600CCFFCC66FF9933CC
        6600B93D005019FF00FFFF00FF7F7F7FFFFFFF7F7F7FFF00FFFF00FFFF00FFFF
        00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF006600
        006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600CCFFCC66FF
        9933CC66005019FF00FFFF00FF7F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600CCFF
        CC66FF99005019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FF7F7F7FFFFFFFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066
        00CCFFCC005019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFF7F7F7FFFFFFFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF006600005019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7F7F7F7FFFFFFFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF005019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFF}
      Layout = blGlyphLeft
      Spacing = 4
      MouseContinuouslyDownInterval = 100
      OnClick = btn2Click
      ResHandle = 0
    end
  end
  inherited pnlHeader: TPanel
    Width = 660
  end
  inline fraFooter1Button1: TfraFooter1Button
    Left = 0
    Top = 286
    Width = 660
    Height = 56
    Align = alBottom
    AutoScroll = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    inherited pnlFooter: TPanel
      Top = 22
      Width = 660
      inherited btnClose: TsuiButton
        Left = 575
      end
    end
    inherited pnlSortCut: TPanel
      Width = 660
      Height = 22
      inherited lbl5: TLabel
        Left = 570
      end
    end
  end
  object actlst1: TActionList
    Left = 576
    Top = 46
    object actGeneratPOBySupplier: TAction
      Caption = 'Process PO'
      OnExecute = actGeneratPOBySupplierExecute
    end
  end
end
