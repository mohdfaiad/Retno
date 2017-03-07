object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Store :: ASSALAAM HYPERMARKET'
  ClientHeight = 507
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmMainMenu
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = actOnCreateFormExecute
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object pnlHeader: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 80
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 10150911
    TabOrder = 0
    object imgHeader: TImage
      Left = 2
      Top = 2
      Width = 796
      Height = 76
      Align = alClient
      Transparent = True
      ExplicitLeft = 4
      ExplicitTop = 4
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 487
    Width = 800
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'User login:'
        Width = 110
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Role: '
        Width = 110
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Database:'
        Width = 250
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object mmMainMenu: TMainMenu
    Left = 520
    Top = 224
    object mmSistem1: TMenuItem
      Caption = '&System'
      object miLogin1: TMenuItem
        Caption = 'Login'
        ShortCut = 16460
      end
      object miLogout1: TMenuItem
        Caption = 'Logout'
        ShortCut = 24652
      end
      object MenuItem1: TMenuItem
        Caption = '-'
      end
      object miExit1: TMenuItem
        Caption = 'Exit'
        ShortCut = 32883
      end
    end
    object mmSetting1: TMenuItem
      Caption = 'Se&tting'
      object miConnectionDatabase1: TMenuItem
        Caption = 'Connection Database'
      end
      object MenuItem2: TMenuItem
        Caption = '-'
      end
      object miGlobalParameter1: TMenuItem
        Caption = 'Global Parameter'
      end
    end
    object mmWindow1: TMenuItem
      Caption = '&Window'
      object miCascade1: TMenuItem
        Caption = '&Cascade'
      end
      object miTile1: TMenuItem
        Caption = '&Tile'
      end
      object miArrange1: TMenuItem
        Caption = '&Arrange'
      end
      object MenuItem3: TMenuItem
        Caption = '-'
      end
      object miCloseAll1: TMenuItem
        Caption = 'Clo&se All'
      end
      object SysParam1: TMenuItem
        Caption = 'System Parameter'
      end
    end
    object mmAbout1: TMenuItem
      Caption = '&Help'
      object miHeadOfficeHelp1: TMenuItem
        Caption = 'Head Office Help'
        ShortCut = 112
      end
      object MenuItem4: TMenuItem
        Caption = '-'
      end
      object miAbout1: TMenuItem
        Caption = 'About...'
      end
    end
  end
  object actlstMain: TActionList
    Left = 448
    Top = 224
    object actOnCreateForm: TAction
      Caption = 'actOnCreateForm'
      OnExecute = actOnCreateFormExecute
    end
    object actOnLogout: TAction
      Category = 'Sistem'
      Caption = 'Logout'
      ShortCut = 24652
    end
    object actOnLogin: TAction
      Category = 'Sistem'
      Caption = 'Login'
      ShortCut = 16460
    end
    object actOnExit: TAction
      Category = 'Sistem'
      Caption = 'Exit'
      ShortCut = 32883
    end
    object actCascade: TAction
      Category = 'Window'
      Caption = '&Cascade'
    end
    object actTile: TAction
      Category = 'Window'
      Caption = '&Tile'
    end
    object actFinalPayment: TAction
      Category = 'SupvCashier'
      Caption = '&Final Payment'
    end
    object actArrange: TAction
      Category = 'Window'
      Caption = '&Arrange'
    end
    object actCloseAll: TAction
      Category = 'Window'
      Caption = 'Clo&se All'
    end
    object actInputSupplierNotForSO: TAction
      Category = 'SO'
      Caption = 'Input &Supplier Not For SO'
    end
    object actInputProductNotForSO: TAction
      Category = 'SO'
      Caption = 'Input &Product Not For SO'
    end
    object actCreateSO: TAction
      Category = 'SO'
      Caption = '&Create Suggestion Order'
    end
    object actGeneratePOForAll: TAction
      Category = 'PO'
      Caption = 'Generate PO For &All'
    end
    object actGeneratePOBySupplier: TAction
      Category = 'PO'
      Caption = 'Generate &PO By Supplier'
    end
    object actCancellingPO: TAction
      Category = 'PO'
      Caption = '&Cancellation PO'
    end
    object actChangeStatusPO: TAction
      Category = 'PO'
      Caption = 'Change &Status PO'
    end
    object actApprovalPO: TAction
      Category = 'PO'
      Caption = 'Appro&val Purchasing Order'
    end
    object actDeliveryOrder: TAction
      Category = 'Inventory'
      Caption = '&Good Receiving'
    end
    object actServiceLevel: TAction
      Category = 'Inventory'
      Caption = 'Monitoring &Service Level'
    end
    object actCNDNGoodReceiving: TAction
      Category = 'Inventory'
      Caption = '&CN/DN Receiving'
    end
    object actReturBarang: TAction
      Category = 'Inventory'
      Caption = '&Retur Barang (Credit Note)'
      Visible = False
    end
    object actDSI: TAction
      Category = 'Inventory'
      Caption = '&Kartu Stock (DSI)'
    end
    object actWastageObral: TAction
      Category = 'Inventory'
      Caption = 'Wastage &Obral'
    end
    object actWastageReal: TAction
      Category = 'Inventory'
      Caption = 'Wastage &Real / Damage'
    end
    object actInputProductIGRA: TAction
      Category = 'Inventory'
      Caption = '&Input Product IGRA/Wastage'
    end
    object actAdjustProductTurunan: TAction
      Category = 'Inventory'
      Caption = 'Adjustment Product &Turunan'
    end
    object actAdjustProductKemasan: TAction
      Category = 'Inventory'
      Caption = 'Adjustment Product &Kemasan'
      Visible = False
    end
    object actMutasiStok: TAction
      Category = 'Inventory'
      Caption = '&Mutasi Alokasi Stok'
    end
    object actBonusForSales: TAction
      Category = 'Inventory'
      Caption = '&Bonus For Sales'
      Visible = False
    end
    object actReprintNP: TAction
      Category = 'Inventory'
      Caption = '&Reprint / Check List NP'
    end
    object actCNReceiving: TAction
      Category = 'Inventory'
      Caption = '&CN Receiving'
    end
    object actDNReceiving: TAction
      Category = 'Inventory'
      Caption = '&DN Receiving'
    end
    object actReturReplace: TAction
      Category = 'Inventory'
      Caption = 'Retur &Replace'
    end
    object actReturDamage: TAction
      Category = 'Inventory'
      Caption = 'Retur &Damage'
    end
    object actGoodReceivingReplace: TAction
      Category = 'Inventory'
      Caption = 'Good Receiving For &Replace'
    end
    object actActivatePOS: TAction
      Category = 'SupvCashier'
      Caption = '&Activate POS'
    end
    object actBeginBalancePOS: TAction
      Category = 'SupvCashier'
      Caption = '&Beginning Balance POS'
    end
    object actProductForSelling: TAction
      Category = 'SupvCashier'
      Caption = 'Master &Product For Selling'
    end
    object actMaintenancePassword: TAction
      Category = 'SupvCashier'
      Caption = 'Maintenance &User And Password'
    end
    object actAdjustmentCashier: TAction
      Category = 'SupvCashier'
      Caption = 'Ad&justment Cashier'
    end
    object actCreditCard: TAction
      Category = 'SupvCashier'
      Caption = '&Credit Card And Discount Card'
    end
    object actCashDropping: TAction
      Category = 'SupvCashier'
      Caption = 'Cash &Dropping'
    end
    object actResetCashier: TAction
      Category = 'SupvCashier'
      Caption = '&Reset Cashier'
    end
    object actReturNota: TAction
      Category = 'SupvCashier'
      Caption = 'Retur &Nota (CN)'
    end
    object actDisplayPOSTransaction: TAction
      Category = 'SupvCashier'
      Caption = 'Display POS &Transaction'
    end
    object actDisplayPOSMonitor: TAction
      Category = 'SupvCashier'
      Caption = 'Display POS &Monitor'
    end
    object actDisplayLastTransactionNo: TAction
      Category = 'SupvCashier'
      Caption = 'Display &Last Transaction No.'
    end
    object actDisplayCCAndCashback: TAction
      Category = 'SupvCashier'
      Caption = 'Display Credit &Card And Cashback'
    end
    object actAdjustmentCashback: TAction
      Category = 'SupvCashier'
      Caption = 'Adjustment Cashbac&k'
    end
    object actExportSync: TAction
      Category = 'EOD'
      Caption = '&Export Sync'
    end
    object actImportSync: TAction
      Category = 'EOD'
      Caption = '&Import Sync'
    end
    object actPOFromAsgross: TAction
      Category = 'Asgross'
      Caption = '&PO From Asgross'
    end
    object actAssgros: TAction
      Category = 'Asgross'
      Caption = 'Master &Asgross'
    end
    object actDOForAsgross: TAction
      Category = 'Asgross'
      Caption = '&DO For Asgross'
    end
    object actMemberShip: TAction
      Category = 'CustomerSupport'
      Caption = 'MemberShip'
    end
    object actMemberActivation: TAction
      Category = 'CustomerSupport'
      Caption = 'Member Activation'
    end
    object actPrintPO: TAction
      Category = 'PO'
      Caption = 'Prin&t PO'
    end
    object actCrazyPrice: TAction
      Category = 'Asgross'
      Caption = 'Crazy Price'
    end
    object actDataCostumer: TAction
      Category = 'CustomerSupport'
      Caption = 'Data Costumer'
    end
    object actSalesReportContrabon: TAction
      Category = 'CustomerSupport'
      Caption = '&Sales Report Contrabon'
    end
    object actVoucherBotol: TAction
      Category = 'CustomerSupport'
      Caption = 'Voucher Botol'
    end
    object actShift: TAction
      Category = 'SupvCashier'
      Caption = 'actShift'
    end
    object actCustomerAgreement: TAction
      Category = 'CustomerSupport'
      Caption = 'actCustomerAgreement'
    end
    object actGenerateVoucher: TAction
      Category = 'CustomerSupport'
      Caption = 'actGenerateVoucher'
    end
    object actEODForPOS: TAction
      Category = 'SupvCashier'
      Caption = 'EOD For POS'
    end
    object actBroadcastDownload: TAction
      Category = 'SupvCashier'
      Caption = 'Broadcast Download'
    end
    object actDOForTrader: TAction
      Category = 'Asgross'
      Caption = 'actDOForTrader'
    end
    object actDailySalesReport: TAction
      Category = 'SupvCashier'
      Caption = 'Daily Sales Report'
    end
    object actReprintNota: TAction
      Category = 'SupvCashier'
      Caption = 'actReprintNota'
    end
    object actCashierCollectionReport: TAction
      Category = 'SupvCashier'
      Caption = 'actCashierCollectionReport'
    end
    object actDailySalesAnalysis: TAction
      Category = 'SupvCashier'
      Caption = 'Daily Sales Analysis'
    end
    object actRekapitulasiCN: TAction
      Category = 'Inventory'
      Caption = 'actRekapitulasiCN'
    end
    object actPrintPurchaseOrder: TAction
      Category = 'PO'
      Caption = 'actPrintPurchaseOrder'
    end
    object actPrintWorksheet: TAction
      Category = 'SupvCashier'
      Caption = 'actPrintWorksheet'
    end
    object actListingPOByMerchandisingGroup: TAction
      Category = 'PO'
      Caption = 'actListingPOByMerchandisingGroup'
    end
    object actPrintRecapitulationPO: TAction
      Category = 'PO'
      Caption = 'actPrintRecapitulationPO'
    end
    object actPrintHistoryPOBySupplier: TAction
      Category = 'PO'
      Caption = 'actPrintHistoryPOBySupplier'
    end
    object actListRecapCreditDebetCard: TAction
      Category = 'SupvCashier'
      Caption = 'actListRecapCreditDebetCard'
    end
    object actUnpackingStok: TAction
      Category = 'Inventory'
      Caption = 'actUnpackingStok'
    end
    object actStokOpnam: TAction
      Category = 'Inventory'
      Caption = 'actStokOpnam'
    end
    object actStockAdjustment: TAction
      Category = 'Inventory'
      Caption = 'actStockAdjustment'
    end
    object actPeriodeStokOpnam: TAction
      Category = 'Inventory'
      Caption = 'actPeriodeStokOpnam'
    end
    object actFormStokOpnam: TAction
      Category = 'Inventory'
      Caption = 'actFormStokOpnam'
    end
    object actKoordinatorStokOpnam: TAction
      Category = 'Inventory'
      Caption = 'actKoordinatorStokOpnam'
    end
    object actTimStokOpnam: TAction
      Category = 'Inventory'
      Caption = 'actTimStokOpnam'
    end
    object actMaintenanceBarcode: TAction
      Category = 'Inventory'
      Caption = 'actMaintenanceBarcode'
    end
    object actLokasiStokOpnam: TAction
      Category = 'Inventory'
      Caption = 'actLokasiStokOpnam'
    end
    object actSetupProductTurunan: TAction
      Category = 'Inventory'
      Caption = 'actSetupProductTurunan'
    end
    object actProduct: TAction
      Category = 'Merchandise'
      Caption = '&Product'
    end
    object actSupplier: TAction
      Category = 'Merchandise'
      Caption = '&Supplier'
    end
    object actHistoryPO: TAction
      Category = 'PO'
      Caption = 'actHistoryPO'
    end
    object actListingReceivingProduct: TAction
      Category = 'Inventory'
      Caption = 'actListingReceivingProduct'
    end
    object actListOutstandingDOAssgros: TAction
      Category = 'Asgross'
      Caption = 'List Outstanding DO Assgros'
    end
    object actAdjustmentProduct: TAction
      Category = 'Inventory'
      Caption = 'actAdjustmentProduct'
    end
    object actListCNMerchandisePerSuplier: TAction
      Category = 'Inventory'
      Caption = 'List CN Merchandise Per Supplier'
    end
    object actListPODOReceive: TAction
      Category = 'Asgross'
      Caption = 'Listing PO/DO Receive'
    end
    object actListOmzet: TAction
      Category = 'Asgross'
      Caption = 'List Omzet'
    end
    object actListingProductIGRA: TAction
      Category = 'Inventory'
      Caption = 'Print Product IGRA'
    end
    object actDisplayPO: TAction
      Category = 'PO'
      Caption = 'actDisplayPO'
    end
    object actListMembership: TAction
      Category = 'CustomerSupport'
      Caption = 'List Membership'
    end
    object actBarcodeRequest: TAction
      Category = 'Inventory'
      Caption = 'actBarcodeRequest'
    end
    object actListWastage: TAction
      Category = 'Inventory'
      Caption = 'actListWastage'
    end
    object actListPOCancel: TAction
      Category = 'PO'
      Caption = 'List PO Cancel'
    end
    object actListingRankingCNWastage: TAction
      Category = 'Inventory'
      Caption = 'List Ranking CN / Wastage'
    end
    object actListingSupplierHaveCN: TAction
      Category = 'Inventory'
      Caption = 'Listing Supplier Have CN'
    end
    object actPriceConfirmation: TAction
      Category = 'Asgross'
      Caption = 'Price Confirmation'
    end
    object actListAdjustmentProduct: TAction
      Category = 'Inventory'
      Caption = 'List Adjustment Product'
    end
    object actPriceConfirmationKring33: TAction
      Category = 'Asgross'
      Caption = 'Price Confirmation Kring33'
    end
    object actListDailyTransaction: TAction
      Category = 'SupvCashier'
      Caption = 'Listing Daily Transaction'
    end
    object actPOBonus: TAction
      Category = 'PO'
      Caption = 'actPOBonus'
    end
    object actSettingJurnal: TAction
      Category = 'Inventory'
      Caption = 'actSettingJurnal'
    end
    object actretursupplier: TAction
      Category = 'Inventory'
      Caption = 'actretursupplier'
    end
    object actGenerateJurnal: TAction
      Category = 'EOD'
      Caption = 'actGenerateJurnal'
    end
    object actTransferBarangBonus: TAction
      Category = 'Inventory'
      Caption = 'actTransferBarangBonus'
    end
    object actLaporanWastage: TAction
      Category = 'Inventory'
      Caption = 'actLaporanWastage'
    end
    object actUbahQtyPO: TAction
      Category = 'PO'
      Caption = 'actUbahQtyPO'
    end
    object actStokBarang: TAction
      Category = 'Inventory'
      Caption = 'actStokBarang'
    end
    object actMutasiKeluar: TAction
      Category = 'Inventory'
      Caption = 'Mutasi Keluar'
    end
    object actMutasiMasuk: TAction
      Category = 'Inventory'
      Caption = 'Mutasi Masuk'
    end
    object actGudang: TAction
      Category = 'Inventory'
      Caption = 'Gudang'
    end
    object actListMutasiStok: TAction
      Caption = 'actListMutasiStok'
    end
    object actOmzet: TAction
      Caption = 'actOmzet'
    end
    object actAdjustmentStock: TAction
      Caption = 'actAdjustmentStock'
    end
    object actListBarcodeRequest: TAction
      Caption = 'actListBarcodeRequest'
    end
    object actAdjustmentStockList: TAction
      Caption = 'actAdjustmentStockList'
    end
    object actBarcodeRequestSlip: TAction
      Caption = 'actBarcodeRequestSlip'
    end
    object actWastageRealList: TAction
      Caption = 'actWastageRealList'
    end
    object actDiscMember: TAction
      Caption = 'actDiscMember'
    end
    object actChangeStatusPOS: TAction
      Caption = 'actChangeStatusPOS'
    end
    object actStockBarang: TAction
      Caption = 'actStockBarang'
    end
    object actLapReturSup: TAction
      Category = 'Inventory'
      Caption = 'actLapReturSup'
    end
    object actLaporanKonsinyasi: TAction
      Category = 'Inventory'
      Caption = 'actLaporanKonsinyasi'
    end
    object actLapInvMovement: TAction
      Category = 'Inventory'
      Caption = 'actLapInvMovement'
    end
    object actLapInvMovementQty: TAction
      Category = 'Inventory'
      Caption = 'actLapInvMovementQty'
    end
    object actShipmentAgent: TAction
      Category = 'Inventory'
      Caption = 'actShipmentAgent'
    end
    object actShipmentTransport: TAction
      Category = 'Inventory'
      Caption = 'actShipmentTransport'
    end
    object actShipmentDocument: TAction
      Category = 'Inventory'
      Caption = 'actShipmentDocument'
    end
    object actExportDataStore: TAction
      Category = 'EOD'
      Caption = 'actExportDataStore'
    end
    object actImportFromPOS: TAction
      Category = 'EOD'
      Caption = 'actImportFromPOS'
    end
    object actListProduct: TAction
      Category = 'Merchandise'
      Caption = 'actListProduct'
    end
    object actLaporanMutasiKeluar: TAction
      Category = 'Inventory'
      Caption = 'actLaporanMutasiKeluar'
    end
    object actLaporanMutasiMasuk: TAction
      Category = 'Inventory'
      Caption = 'actLaporanMutasiMasuk'
    end
    object actReconcileBti: TAction
      Category = 'Inventory'
      Caption = 'Reconcile Bti'
    end
    object actLPKAll: TAction
      Category = 'Inventory'
      Caption = 'actLPKAll'
    end
    object actEodLpk: TAction
      Category = 'EOD'
      Caption = 'actEodLpk'
    end
    object actUser: TAction
      Category = 'EOD'
      Caption = 'actUser'
    end
  end
end
