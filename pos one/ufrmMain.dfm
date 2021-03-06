object frmMain: TfrmMain
  Left = 424
  Top = 216
  Caption = 'frmMain'
  ClientHeight = 421
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnMain
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object sbMain: TStatusBar
    Left = 0
    Top = 402
    Width = 609
    Height = 19
    Panels = <
      item
        Text = 'Store DB : Not Connected'
        Width = 300
      end
      item
        Text = 'POS DB : Not Connected'
        Width = 300
      end
      item
        Text = 'POS Code : -'
        Width = 85
      end
      item
        Text = 'Cashier : -'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '25-10-2008'
        Width = 70
      end
      item
        Alignment = taCenter
        Text = '09:03:26'
        Width = 60
      end
      item
        Width = 50
      end>
  end
  object mmoHelp: TMemo
    Left = 288
    Top = 5
    Width = 321
    Height = 397
    Align = alRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsItalic]
    Lines.Strings = (
      ''
      'Esc       = Kembali'
      'Enter  '#9'  = Eksekusi'
      'Up  '#9'  = Ubah Kuantiti transaksi'
      'Del '#9'  = Hapus transaksi PLU tsb'
      ''
      'F1 '#9'  = Bantuan'
      'F4 '#9'  = Print Header'
      'F5 '#9'  = Cari Barang'
      'F7 '#9'  = Open Cash Drawer'
      'F8'#9'  = List Pending'
      'F9 '#9'  = Pembayaran'
      'F10'#9'  = Transaksi End User'
      'F11'#9'  = Transaksi Trader'
      'F12 '#9'  = Reset Barang Transaksi'
      'Ctrl + Shift + P = Pending Transaksi')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    Visible = False
  end
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 5
    Align = alTop
    TabOrder = 2
  end
  object mnMain: TMainMenu
    Left = 12
    Top = 73
    object mmFile: TMenuItem
      Caption = '&File'
      object miLogin: TMenuItem
        Caption = '&Login'
        ShortCut = 16460
        OnClick = miLoginClick
      end
      object miLogout: TMenuItem
        Caption = 'Log&out'
        ShortCut = 24652
        OnClick = miLogoutClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = 'Exit'
        ShortCut = 32883
        OnClick = miExitClick
      end
    end
    object miCashier: TMenuItem
      Caption = '&Cashier'
      object miTransactionPending1: TMenuItem
        Caption = 'Transaction Pending'
        ShortCut = 119
        OnClick = miTransactionPending1Click
      end
      object miTransactionEndUser: TMenuItem
        Caption = '&Transaction End User'
        ShortCut = 121
        OnClick = miTransactionEndUserClick
      end
      object miTransactionTrader: TMenuItem
        Caption = 'Transaction Trader'
        ShortCut = 122
        OnClick = miTransactionTraderClick
      end
      object mnPayment: TMenuItem
        Caption = '&Payment'
        ShortCut = 120
        Visible = False
        OnClick = mnPaymentClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object PrintHeader1: TMenuItem
        Caption = 'Print Header'
        ShortCut = 115
        OnClick = PrintHeader1Click
      end
      object mmTools: TMenuItem
        Caption = 'T&ools'
        object Export1: TMenuItem
          Caption = '&Export...'
        end
        object miImport1: TMenuItem
          Caption = '&Import...'
          Visible = False
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object OpenCashDrawerF71: TMenuItem
          Caption = 'Open Cash Drawer'
          ShortCut = 118
        end
      end
    end
    object mmCashierTrader: TMenuItem
      Caption = 'Cashier &Trader'
      Visible = False
      object miDeliveryOrder: TMenuItem
        Caption = 'Delivery Order'
      end
    end
    object miImport: TMenuItem
      Caption = 'Transfer Data'
      object ExportDataPOS1: TMenuItem
        Caption = 'Export Data POS'
        OnClick = ExportDataPOS1Click
      end
      object ImportDataStore1: TMenuItem
        Caption = 'Import Data Store'
        OnClick = ImportDataStore1Click
      end
      object UpdateMaster1: TMenuItem
        Caption = 'Update Data Master'
        OnClick = UpdateMaster1Click
      end
      object ImportDataFromMDB: TMenuItem
        Caption = 'Import Data From MDB'
        OnClick = ImportDataFromMDBClick
      end
      object ExportDataToMDB: TMenuItem
        Caption = 'Export Data To MDB'
        OnClick = ExportDataToMDBClick
      end
    end
    object mmHelp: TMenuItem
      Caption = '&Help'
      object Bantuan1: TMenuItem
        Caption = 'Bantuan'
        ShortCut = 112
        OnClick = Bantuan1Click
      end
    end
    object Admin1: TMenuItem
      Caption = 'Admin'
      object miLoginAdmin: TMenuItem
        Caption = 'Login Admin'
      end
      object miCashierSupv: TMenuItem
        Caption = '&Cashier Supervisor'
        object miMasterSellingProduct: TMenuItem
          Caption = 'Master &Product For Selling'
          OnClick = miMasterSellingProductClick
        end
        object miMaintenancePassword: TMenuItem
          Caption = 'Maintenance &User And Password'
        end
        object miActivatePOS: TMenuItem
          Caption = '&Activate POS'
          OnClick = miActivatePOSClick
        end
        object miBeginningBalancePOS: TMenuItem
          Caption = '&Beginning Balance POS'
        end
        object miCashDroping: TMenuItem
          Caption = 'Cash &Dropping'
        end
        object miResetCashier: TMenuItem
          Caption = '&Reset Cashier'
        end
        object miFinalPayment: TMenuItem
          Caption = 'Closing Payment'
        end
        object miReturNotaCN: TMenuItem
          Caption = 'Retur &Nota (CN)'
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object miAdjustmentCashier: TMenuItem
          Caption = 'Ad&justment Cashier'
        end
        object miAdjustmentCashback: TMenuItem
          Caption = 'Adjustment Cashbac&k'
          OnClick = miAdjustmentCashbackClick
        end
        object ActivatePOS2: TMenuItem
          Caption = '-'
        end
        object miReferences: TMenuItem
          Caption = 'References'
          object CreditCard1: TMenuItem
            Caption = 'Credit Card'
          end
        end
        object miDisplay: TMenuItem
          Caption = 'Di&splay'
          object DisplayCreditCardAndCashback1: TMenuItem
            Caption = 'CC And Cash Back'
          end
          object DisplayLastTransactionNo1: TMenuItem
            Caption = 'Last Transaction No'
          end
          object DisplayPOSMonitor1: TMenuItem
            Caption = 'POS Monitor'
          end
          object DisplayPOSTransaction1: TMenuItem
            Caption = 'POS Transaction'
          end
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object miSalesReportContrabon: TMenuItem
          Caption = '&Sales Report Contrabon'
        end
        object miSalesReport: TMenuItem
          Caption = 'Sales Report By Cashier'
        end
        object ReprintNota1: TMenuItem
          Caption = 'Reprint Nota'
        end
      end
      object miCustomerSupport: TMenuItem
        Caption = 'C&ustomer Support'
        object miMemberShip1: TMenuItem
          Caption = 'Membership'
        end
        object miMemberActivation1: TMenuItem
          Caption = 'Member Activation'
        end
        object miVoucher1: TMenuItem
          Caption = 'Voucher'
          object miCostumer1: TMenuItem
            Caption = 'Customer'
            object miDataCostumer1: TMenuItem
              Caption = 'Customer'
            end
            object miCostumerAgreement1: TMenuItem
              Caption = 'Customer Agreement'
            end
          end
          object miGenerateVoucher1: TMenuItem
            Caption = 'Generate Voucher'
          end
          object miVoucherBotol1: TMenuItem
          end
        end
      end
      object miTrader: TMenuItem
        Caption = '&Trader'
        Visible = False
        object ListAssgros1: TMenuItem
        end
        object N8: TMenuItem
          Caption = '-'
        end
        object POFromAssgros1: TMenuItem
        end
        object DOForAsGriss1: TMenuItem
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object CrazyPrice1: TMenuItem
        end
      end
      object miMaster: TMenuItem
        Caption = '&Master'
        object miProduct1: TMenuItem
          Caption = 'Product'
          OnClick = miProduct1Click
        end
        object miMaintenanceBarcode: TMenuItem
          Caption = 'Maintenance Barcode'
        end
      end
      object miEOD: TMenuItem
        Caption = '&EOD'
        object Synchronize1: TMenuItem
        end
        object ImportSync1: TMenuItem
        end
      end
    end
    object miSetting: TMenuItem
      Caption = 'Setting'
      object miServerConnection: TMenuItem
        Caption = 'Server Connection'
        OnClick = miServerConnectionClick
      end
    end
  end
  object ilMain: TImageList
    Left = 15
    Top = 19
    Bitmap = {
      494C010103000400980010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000737373008C8C8C00737373006B6B6B006B6B6B00636363006363
      63005A5A5A00000000000000000000000000000000006B6B6B006B6B6B000000
      000000000000000000008484840073737300737373006B6B6B006B6B6B006363
      630063636300636363000000000000000000000000006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B00DEDEDE008C8C8C00737373006B6B6B006B6B6B006363
      6300636363007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002929
      DE006B6BA500A5A5A500C6C6C600DED6D600D6CECE00D6CECE00D6CECE00EFE7
      E70063636300000000000000000000000000000000006B6B6B0000FF00006B6B
      6B0073739C008C8C8C00A5A5A500C6C6C600DED6D600D6CECE00D6CECE00D6CE
      CE00EFE7E700636363000000000000000000000000006B6B6B000000FF000000
      FF000000FF006B6B6B00A5A5A500C6C6C600DED6D600D6CECE00D6CECE00D6CE
      CE00EFE7E7006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7BAD00B5B5
      B500D6D6D600E7DEDE00C6BDBD00BDB5B500BDB5AD00BDB5AD00B5ADAD00D6CE
      CE0063636300000000000000000000000000000000006B6B6B0000FF000000FF
      00006B6B6B00D6D6D600E7DEDE00C6BDBD00BDB5B500BDB5AD00BDB5AD00B5AD
      AD00D6CECE00636363000000000000000000000000006B6B6B000000FF000000
      FF000000FF006B6B6B00E7DEDE00C6BDBD00BDB5B500BDB5AD00BDB5AD00B5AD
      AD00D6CECE006363630000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500F7F7
      F700E7E7E700D6D6D600BDB5B500BDB5B500BDB5B500BDB5B500BDB5AD00D6CE
      CE006B6B6B00000000000000000000000000000000006B6B6B0000FF000000FF
      000000FF00006B6B6B00D6D6D600BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      AD00D6CECE006B6B6B000000000000000000000000006B6B6B000000FF000000
      FF000000FF006B6B6B00D6D6D600BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      AD00D6CECE006B6B6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A5A5A500EFEF
      EF00DEDEDE00D6D6D600BDBDB500BDB5B500BDB5B500BDB5B500BDB5B500D6D6
      CE0073737300000000000000000000000000000000006B6B6B0000FF000000FF
      00006B6B6B00DEDEDE00D6D6D600BDBDB500BDB5B500BDB5B500BDB5B500BDB5
      B500D6D6CE00737373000000000000000000000000006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B00D6D6D600BDBDB500BDB5B500BDB5B500BDB5B500BDB5
      B500D6D6CE007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00EFEF
      EF00DEDEDE00D6D6D600C6BDBD00BDBDB500BDB5B50039A5420031943100D6D6
      D60073737300000000000000000000000000000000006B6B6B0000FF00006B6B
      6B00EFEFEF00DEDEDE00D6D6D600C6BDBD00BDBDB500BDB5B50039A542003194
      3100D6D6D600737373000000000000000000000000000000000000000000ADAD
      AD00EFEFEF00DEDEDE00D6D6D600C6BDBD00BDBDB500BDB5B50039A542003194
      3100D6D6D6007373730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B500EFEF
      EF00DEDEDE00DEDEDE00C6BDBD00C6BDBD00C6BDBD009CCEA5004AAD5200D6D6
      D6007B7B7B00000000000000000000000000000000006B6B6B006B6B6B00B5B5
      B500EFEFEF00DEDEDE00DEDEDE00C6BDBD00C6BDBD00C6BDBD009CCEA5004AAD
      5200D6D6D6007B7B7B000000000000000000000000000000000000000000B5B5
      B500EFEFEF00DEDEDE00DEDEDE00C6BDBD00C6BDBD00C6BDBD009CCEA5004AAD
      5200D6D6D6007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00EFEF
      EF00DEDEDE00DEDEDE00C6BDBD00C6BDBD00C6BDBD00C6BDBD00BDBDB500D6D6
      D60084848400000000000000000000000000000000000000000000000000BDBD
      BD00EFEFEF00DEDEDE00DEDEDE00C6BDBD00C6BDBD00C6BDBD00C6BDBD00BDBD
      B500D6D6D600848484000000000000000000000000000000000000000000BDBD
      BD00EFEFEF00DEDEDE00DEDEDE00C6BDBD00C6BDBD00C6BDBD00C6BDBD00BDBD
      B500D6D6D6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00EFEF
      EF00E7E7E700DEDEDE00C6C6BD00949494008C8C8C008C8C8C008C8C8C00DED6
      D6008C8C8C00000000000000000000000000000000000000000000000000BDBD
      BD00EFEFEF00E7E7E700DEDEDE00C6C6BD00949494008C8C8C008C8C8C008C8C
      8C00DED6D6008C8C8C000000000000000000000000000000000000000000BDBD
      BD00EFEFEF00E7E7E700DEDEDE00C6C6BD00949494008C8C8C008C8C8C008C8C
      8C00DED6D6008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600EFEF
      EF00E7E7E700DEDEDE00CEC6C600CEC6C600C6C6BD00C6BDBD00C6BDBD00DED6
      D60094949400000000000000000000000000000000000000000000000000C6C6
      C600EFEFEF00E7E7E700DEDEDE00CEC6C600CEC6C600C6C6BD00C6BDBD00C6BD
      BD00DED6D600949494000000000000000000000000000000000000000000C6C6
      C600EFEFEF00E7E7E700DEDEDE00CEC6C600CEC6C600C6C6BD00C6BDBD00C6BD
      BD00DED6D6009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00EFEF
      EF00EFEFEF00E7E7E700CEC6C60094949400949494009494940094949400DED6
      D60094949400000000000000000000000000000000000000000000000000CECE
      CE00EFEFEF00EFEFEF00E7E7E700CEC6C6009494940094949400949494009494
      9400DED6D600949494000000000000000000000000000000000000000000CECE
      CE00EFEFEF00EFEFEF00E7E7E700CEC6C6009494940094949400949494009494
      9400DED6D6009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700CECE
      CE00DEDEDE00EFEFEF00CECECE00CEC6C600CEC6C600CEC6C600C6C6C600DEDE
      DE009C9C9C00000000000000000000000000000000000000000000000000CECE
      CE00CECECE00DEDEDE00EFEFEF00CECECE00CEC6C600CEC6C600CEC6C600C6C6
      C600DEDEDE009C9C9C000000000000000000000000000000000000000000F7F7
      F700D6D6D600DEDEDE00EFEFEF00CECECE00CEC6C600CEC6C600CEC6C600C6C6
      C600DEDEDE009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00DEDEDE00DEDEDE00E7E7E700E7DEDE00DEDEDE00DEDEDE00DEDEDE00EFEF
      EF00A5A5A5000000000000000000000000000000000000000000000000000000
      0000DEDEDE00D6D6D600DEDEDE00E7E7E700E7DEDE00DEDEDE00DEDEDE00DEDE
      DE00EFEFEF00A5A5A50000000000000000000000000000000000000000000000
      0000FFFFFF00DEDEDE00DEDEDE00E7E7E700E7DEDE00DEDEDE00DEDEDE00DEDE
      DE00EFEFEF00A5A5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DEDEDE00CECECE00C6C6C600BDBDBD00BDBDBD00B5B5B500ADAD
      AD00ADADAD000000000000000000000000000000000000000000000000000000
      00000000000000000000CECECE00CECECE00C6C6C600BDBDBD00BDBDBD00B5B5
      B500ADADAD00B5B5B50000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00CECECE00C6C6C600BDBDBD00BDBDBD00B5B5
      B500ADADAD00C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000F8079C0380030000
      E007800380030000C007800380030000C007800380030000C007800380030000
      C0078003E0030000C0078003E0030000C007E003E0030000C007E003E0030000
      C007E003E0030000C007E003E0030000C007E003E0030000E007F003F0030000
      F807FC03FC030000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object tmrMain: TTimer
    OnTimer = tmrMainTimer
    Left = 18
    Top = 126
  end
  object AppEvents: TApplicationEvents
    OnException = AppEventsException
    Left = 32
    Top = 280
  end
end
