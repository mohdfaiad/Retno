inherited frmTransferBarang: TfrmTransferBarang
  Caption = 'Transfer Barang'
  ClientHeight = 339
  ClientWidth = 647
  ExplicitWidth = 663
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 647
    Height = 250
    ExplicitWidth = 647
    ExplicitHeight = 234
    inherited pgcBrowse: TcxPageControl
      Width = 645
      Height = 248
      ExplicitWidth = 645
      ExplicitHeight = 232
      ClientRectBottom = 247
      ClientRectRight = 644
      inherited tsBrowse: TcxTabSheet
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 643
        ExplicitHeight = 230
        inherited cxGrid: TcxGrid
          Width = 643
          Height = 246
          ExplicitWidth = 643
          ExplicitHeight = 230
          inherited cxGridView: TcxGridDBTableView
            object cxGridViewColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'NO'
              Width = 104
            end
            object cxGridViewColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'ASAL'
              Width = 100
            end
            object cxGridViewColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'TUJUAN'
              Width = 95
            end
            object cxGridViewColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'TANGGAL'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.ShowTime = False
              Width = 79
            end
            object cxGridViewColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'REFERENSI'
              Width = 100
            end
            object cxGridViewColumn6: TcxGridDBColumn
              DataBinding.FieldName = 'KETERANGAN'
              Width = 167
            end
          end
        end
      end
    end
  end
  inherited pnlHeader: TPanel
    Width = 647
    ExplicitWidth = 647
    inherited lblHeader: TLabel
      Width = 88
      Caption = 'Transfer Barang'
      ExplicitWidth = 88
    end
    inherited lblFilterData: TcxLabel
      Left = 293
      Visible = True
      ExplicitLeft = 293
      AnchorY = 17
    end
    inherited dtAwalFilter: TcxDateEdit
      Left = 354
      Visible = True
      ExplicitLeft = 354
      ExplicitHeight = 23
    end
    inherited dtAkhirFilter: TcxDateEdit
      Left = 470
      Visible = True
      ExplicitLeft = 470
      ExplicitHeight = 23
    end
    inherited btnSearch: TcxButton
      Left = 565
      ExplicitLeft = 565
    end
    inherited lblsdFilter: TcxLabel
      Left = 446
      Visible = True
      ExplicitLeft = 446
      AnchorY = 17
    end
  end
  inherited fraFooter4Button1: TfraFooter4Button
    Top = 283
    Width = 647
    ExplicitTop = 267
    ExplicitWidth = 647
    inherited pnlFooter: TPanel
      Width = 647
      ExplicitWidth = 647
      inherited btnAdd: TcxButton
        Action = actAdd
      end
      inherited btnUpdate: TcxButton
        Action = actEdit
      end
      inherited btnPrint: TcxButton
        Action = actPrint
      end
      inherited btnClose: TcxButton
        Left = 570
        Action = actClose
        ExplicitLeft = 570
      end
      inherited cxButton1: TcxButton
        Action = actExport
      end
    end
    inherited pnlShortCut: TPanel
      Width = 647
      ExplicitWidth = 647
      inherited lbEscape: TLabel
        Left = 573
        Height = 17
        ExplicitLeft = 573
      end
    end
  end
  inherited actlstBrowse: TActionList
    Left = 577
    Top = 71
    inherited actAdd: TAction
      OnExecute = actAddExecute
    end
    inherited actEdit: TAction
      OnExecute = actEditExecute
    end
    inherited actPrint: TAction
      OnExecute = actPrintExecute
    end
  end
end
