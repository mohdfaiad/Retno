inherited frmDialogSearchSupplier: TfrmDialogSearchSupplier
  Left = 342
  Top = 270
  Caption = 'Search Supplier...'
  ClientHeight = 352
  ClientWidth = 502
  Constraints.MinHeight = 32
  OldCreateOrder = True
  ExplicitWidth = 518
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 502
    Height = 296
    ExplicitWidth = 502
    ExplicitHeight = 296
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 498
      Height = 54
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15198183
      TabOrder = 0
      object lbl1: TLabel
        Left = 12
        Top = 6
        Width = 71
        Height = 16
        Caption = 'Supplier Code:'
      end
      object lbl2: TLabel
        Left = 111
        Top = 6
        Width = 73
        Height = 16
        Caption = 'Supplier Name:'
      end
      object edtSupCode: TEdit
        Left = 10
        Top = 24
        Width = 93
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edtSupCodeChange
        OnKeyDown = edtSupCodeKeyDown
      end
      object edtSupName: TEdit
        Left = 110
        Top = 24
        Width = 344
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnChange = edtSupNameChange
        OnKeyDown = edtSupNameKeyDown
      end
      object btnSearch: TcxButton
        Left = 456
        Top = 21
        Width = 33
        Height = 25
        OptionsImage.Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          1800000000000006000000000000000000000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF500019500019FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333993300500019FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333993300993300500019FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000993300993300993300500019FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF0000009933009933009933009933005000
          19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000993300CC6600993300CC66009933
          00500019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000CC6600993300CC6600993300CC66
          00993300500019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF000000CC6600CC6600CC6600CC6600CC66
          00CC6600663333FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333FF9900CC6600FF9900CC6600FF99
          00663333FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333FF9900FF9900FF9900FF99006633
          33FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333FF9900FF9900FF9900663333FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333FFE2B4FFE2B4663333FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333FFFFDE663333FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF663333663333FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9F9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OptionsImage.NumGlyphs = 2
        TabOrder = 2
      end
    end
    object pnl2: TPanel
      Left = 2
      Top = 56
      Width = 498
      Height = 238
      Align = alClient
      BevelOuter = bvLowered
      BorderWidth = 10
      Color = 15198183
      TabOrder = 1
      object cxGrid: TcxGrid
        Left = 11
        Top = 11
        Width = 476
        Height = 216
        Align = alClient
        TabOrder = 0
        object cxGridViewSearchSupplier: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridViewSearchSupplierColumn1: TcxGridDBColumn
            Caption = 'Supplier Code'
            Width = 91
          end
          object cxGridViewSearchSupplierColumn2: TcxGridDBColumn
            Caption = 'Supplier Name'
            Width = 211
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridViewSearchSupplier
        end
      end
    end
  end
  inherited footerDialogMaster: TfraFooterDialog3Button
    Top = 296
    Width = 502
    ExplicitTop = 296
    ExplicitWidth = 502
    inherited pnlFooter: TPanel
      Width = 502
      ExplicitWidth = 502
      inherited btnClose: TcxButton
        Left = 425
        Action = actCancel
        ExplicitLeft = 425
      end
      inherited btnSave: TcxButton
        Left = 332
        Action = actSave
        Caption = 'Select'
        OptionsImage.Glyph.Data = {
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
        OnClick = footerDialogMasterbtnSaveClick
        ExplicitLeft = 332
      end
      inherited btnDelete: TcxButton
        Action = actDelete
      end
    end
    inherited pnlSortCut: TPanel
      Width = 502
      ExplicitWidth = 502
      inherited lbCTRLEnter: TLabel
        Left = 320
        Width = 92
        Caption = 'Ctrl-Enter [Select]'
        ExplicitLeft = 320
        ExplicitWidth = 92
      end
      inherited lbEscape: TLabel
        Left = 418
        ExplicitLeft = 418
      end
    end
  end
end
