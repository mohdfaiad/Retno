inherited frmDialogSearchRekening: TfrmDialogSearchRekening
  Left = 340
  Top = 236
  Caption = 'Search Rekening...'
  ClientHeight = 354
  ClientWidth = 505
  Constraints.MinHeight = 32
  OldCreateOrder = True
  ExplicitWidth = 521
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 505
    Height = 298
    ExplicitWidth = 507
    ExplicitHeight = 324
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 501
      Height = 54
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15198183
      TabOrder = 1
      ExplicitWidth = 503
      object lbl1: TLabel
        Left = 12
        Top = 6
        Width = 77
        Height = 16
        Caption = 'Rekening Code:'
      end
      object lbl2: TLabel
        Left = 111
        Top = 6
        Width = 79
        Height = 16
        Caption = 'Rekening Name:'
      end
      object edtRekeningCode: TEdit
        Left = 10
        Top = 24
        Width = 93
        Height = 22
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edtRekeningCodeChange
        OnKeyDown = edtRekeningCodeKeyDown
        OnKeyUp = edtRekeningCodeKeyUp
      end
      object edtRekeningName: TEdit
        Left = 110
        Top = 24
        Width = 344
        Height = 22
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnChange = edtRekeningNameChange
        OnKeyDown = edtRekeningNameKeyDown
        OnKeyUp = edtRekeningCodeKeyUp
      end
      object btnSearch: TcxButton
        Left = 456
        Top = 23
        Width = 35
        Height = 25
        Cursor = crHandPoint
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
      Width = 501
      Height = 240
      Align = alClient
      BevelOuter = bvLowered
      BorderWidth = 10
      Color = 15198183
      TabOrder = 0
      ExplicitWidth = 503
      ExplicitHeight = 266
      object cxGrid: TcxGrid
        Left = 11
        Top = 11
        Width = 479
        Height = 218
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 64
        ExplicitTop = 32
        ExplicitWidth = 250
        ExplicitHeight = 200
        object cxGridViewSearchRekening: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxColRekeningCode: TcxGridDBColumn
            Caption = 'Kode Rekening'
            Width = 94
          end
          object cxColRekeningName: TcxGridDBColumn
            Caption = 'Nama Rekening'
            Width = 200
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridViewSearchRekening
        end
      end
    end
  end
  inherited footerDialogMaster: TfraFooterDialog3Button
    Top = 298
    Width = 505
    ExplicitTop = 324
    ExplicitWidth = 507
    inherited pnlFooter: TPanel
      Width = 505
      ExplicitWidth = 507
      inherited btnClose: TcxButton
        Left = 422
        Action = actCancel
        ExplicitLeft = 424
      end
      inherited btnSave: TcxButton
        Left = 335
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
        ExplicitLeft = 337
      end
      inherited btnDelete: TcxButton
        Action = actDelete
      end
    end
    inherited pnlSortCut: TPanel
      Width = 505
      ExplicitWidth = 507
      inherited lbCTRLEnter: TLabel
        Left = 312
        Width = 92
        Caption = 'Ctrl-Enter [Select]'
        ExplicitLeft = 314
        ExplicitWidth = 92
      end
      inherited lbEscape: TLabel
        Left = 409
        ExplicitLeft = 411
      end
    end
  end
end
