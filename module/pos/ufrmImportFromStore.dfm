object frmImportFromStore: TfrmImportFromStore
  Left = 542
  Top = 87
  Caption = 'Import Data Store'
  ClientHeight = 320
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBody: TPanel
    Left = 0
    Top = 30
    Width = 646
    Height = 290
    Align = alClient
    BevelOuter = bvLowered
    Color = 15198183
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 644
      Height = 64
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 38
        Width = 42
        Height = 13
        Caption = 'Filename'
        Visible = False
      end
      object Label2: TLabel
        Left = 16
        Top = 9
        Width = 39
        Height = 13
        Caption = 'Tanggal'
      end
      object btnLoad: TButton
        Left = 198
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Load'
        TabOrder = 0
        OnClick = btnLoadClick
      end
      object btSimpan: TButton
        Left = 438
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 1
        Visible = False
        OnClick = btSimpanClick
      end
      object edtFileName: TcxButtonEdit
        Left = 87
        Top = 35
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edtFileNamePropertiesButtonClick
        TabOrder = 2
        Visible = False
        Width = 345
      end
      object dtTanggal: TDateTimePicker
        Left = 87
        Top = 5
        Width = 97
        Height = 24
        Date = 40025.356299363430000000
        Time = 40025.356299363430000000
        TabOrder = 3
      end
      object btnLoadAll: TButton
        Left = 294
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Load All'
        TabOrder = 4
        OnClick = btnLoadAllClick
      end
    end
    object mmoImport: TMemo
      Left = 1
      Top = 65
      Width = 644
      Height = 224
      Align = alClient
      Color = 12582911
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      WordWrap = False
    end
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 30
    Align = alTop
    BevelOuter = bvLowered
    Color = 14079702
    TabOrder = 1
    object lblHeader: TLabel
      Left = 8
      Top = 7
      Width = 96
      Height = 14
      Caption = 'Import Data Store'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Text File (*.txt)|*.txt'
    Left = 352
    Top = 48
  end
end
