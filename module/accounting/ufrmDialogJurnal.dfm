inherited frmDialogJurnal: TfrmDialogJurnal
  Caption = 'Dialog Jurnal'
  ClientHeight = 473
  ClientWidth = 851
  ExplicitWidth = 867
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 851
    Height = 417
    ExplicitWidth = 851
    ExplicitHeight = 417
    object pnlHeader: TPanel
      Left = 2
      Top = 2
      Width = 847
      Height = 103
      Align = alTop
      TabOrder = 0
      object lblNo: TcxLabel
        Left = 58
        Top = 8
        Caption = 'No'
      end
      object lblJurnalDate: TcxLabel
        Left = 14
        Top = 35
        Caption = 'Jurnal Date'
      end
      object lblReferensi: TcxLabel
        Left = 20
        Top = 62
        Caption = 'Reference'
      end
      object lblDescription: TcxLabel
        Left = 291
        Top = 9
        Caption = 'Description'
      end
      object edNo: TcxTextEdit
        Left = 81
        Top = 7
        Enabled = False
        TabOrder = 0
        Width = 153
      end
      object dtTanggal: TcxDateEdit
        Tag = 1
        Left = 81
        Top = 34
        HelpType = htKeyword
        HelpKeyword = 'Tanggal'
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        TabOrder = 1
        Width = 153
      end
      object memDesc: TcxMemo
        Tag = 1
        Left = 359
        Top = 7
        Properties.ScrollBars = ssVertical
        TabOrder = 3
        Height = 78
        Width = 223
      end
      object edReference: TcxTextEdit
        Tag = 1
        Left = 81
        Top = 61
        TabOrder = 2
        Width = 153
      end
    end
    object cxgrdJurnal: TcxGrid
      Left = 2
      Top = 105
      Width = 847
      Height = 310
      Align = alClient
      TabOrder = 1
      RootLevelOptions.DetailTabsPosition = dtpTop
      object cxGridTableJurnal: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;(,0.00)'
            Kind = skSum
            Column = cxGridColJurDebet
          end
          item
            Format = ',0.00;(,0.00)'
            Kind = skSum
            Column = cxGridColJurCredit
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = DMClient.cxStyleGridEven
        Styles.Header = DMClient.cxStyleGridHeader
        object cxGridColJurKode: TcxGridColumn
          Caption = 'Kode'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.ImmediatePost = True
          Properties.OnEditValueChanged = cxGridColJurKodePropertiesEditValueChanged
          HeaderAlignmentHorz = taCenter
          Width = 134
        end
        object cxGridColJurNama: TcxGridColumn
          Caption = 'Nama'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 191
        end
        object cxGridColJurCostCenter: TcxGridColumn
          Caption = 'Cost Center'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object cxGridColJurDescription: TcxGridColumn
          Caption = 'Description'
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object cxGridColJurDebet: TcxGridColumn
          Caption = 'Debet'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00;(,0.00)'
          Properties.Nullable = False
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxGridColJurCredit: TcxGridColumn
          Caption = 'Credit'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00;(,0.00)'
          Properties.Nullable = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxgrdlvlDetail: TcxGridLevel
        Caption = 'Detail'
        GridView = cxGridTableJurnal
      end
    end
  end
  inherited footerDialogMaster: TfraFooterDialog3Button
    Top = 417
    Width = 851
    ExplicitTop = 417
    ExplicitWidth = 851
    inherited pnlFooter: TPanel
      Width = 851
      ExplicitWidth = 851
      inherited btnClose: TcxButton
        Left = 774
        Action = actCancel
        ExplicitLeft = 774
      end
      inherited btnSave: TcxButton
        Left = 681
        Action = actSave
        ExplicitLeft = 681
      end
      inherited btnDelete: TcxButton
        Action = actDelete
      end
      inherited btnPrint: TcxButton
        Left = 604
        Action = actPrint
        ExplicitLeft = 604
      end
    end
    inherited pnlSortCut: TPanel
      Width = 851
      ExplicitWidth = 851
      inherited lbCTRLEnter: TLabel
        Left = 676
        Height = 15
        ExplicitLeft = 676
      end
      inherited lbEscape: TLabel
        Left = 767
        Height = 15
        ExplicitLeft = 767
      end
      inherited lbCTRLDel: TLabel
        Height = 15
      end
      inherited lblCTRLP: TLabel
        Left = 600
        Height = 15
        ExplicitLeft = 600
      end
    end
  end
  inherited actlstMasterDialog: TActionList
    Left = 520
    Top = 264
    inherited actDelete: TAction
      OnExecute = actDeleteExecute
    end
    inherited actSave: TAction
      OnExecute = actSaveExecute
    end
  end
end
