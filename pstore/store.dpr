program store;

uses
  Vcl.Forms,
  ufrmLogin in '..\module\login\ufrmLogin.pas' {frmLogin},
  ufraFooter1Button in '..\system\ufraFooter1Button.pas' {fraFooter1Button: TFrame},
  ufraFooter5Button in '..\system\ufraFooter5Button.pas' {fraFooter5Button: TFrame},
  ufraLoading in '..\system\ufraLoading.pas' {fraLoading: TFrame},
  ufraProgressBar in '..\system\ufraProgressBar.pas' {fraProgressBar: TFrame},
  ufraFooterDialog2Button in '..\system\ufraFooterDialog2Button.pas' {fraFooterDialog2Button: TFrame},
  ufrmMasterDialog in '..\system\ufrmMasterDialog.pas' {frmMasterDialog},
  ufrmMaster in '..\system\ufrmMaster.pas' {frmMaster},
  udmMain in 'ui\udmMain.pas' {dmMain: TDataModule},
  ufrmAbout in 'ui\ufrmAbout.pas' {frmAbout},
  uFormProperty in '..\system\uFormProperty.pas',
  uConn in '..\lib\uConn.pas',
  uDBUtils in '..\lib\uDBUtils.pas',
  uDSUtils in '..\lib\uDSUtils.pas',
  uDXUtils in '..\lib\uDXUtils.pas',
  uNetUtils in '..\lib\uNetUtils.pas',
  uTSINIFile in '..\lib\uTSINIFile.pas',
  uConstanta in 'unit\uConstanta.pas',
  uRetnoUnit in '..\system\uRetnoUnit.pas',
  uTSCommonDlg in '..\system\uTSCommonDlg.pas',
  ufraFooter4Button in '..\system\ufraFooter4Button.pas' {fraFooter4Button: TFrame},
  ufraFooterDialog3Button in '..\system\ufraFooterDialog3Button.pas' {fraFooterDialog3Button: TFrame},
  uCompany in '..\classes\uCompany.pas',
  uTSBaseClass in '..\classes\uTSBaseClass.pas',
  uModApp in '..\model\uModApp.pas',
  uModAuthApp in '..\model\uModAuthApp.pas',
  uModCompany in '..\model\uModCompany.pas',
  uModOutlet in '..\model\uModOutlet.pas',
  uModTest in '..\model\uModTest.pas',
  uModBank in '..\model\uModBank.pas',
  uModAuthUser in '..\model\uModAuthUser.pas',
  ufrmHistorySO in '..\module\so\ufrmHistorySO.pas' {frmHistorySO},
  ufrmDialogDetailSO in '..\module\so\ufrmDialogDetailSO.pas' {frmDialogDetailSO},
  ufrmSearchSO in '..\module\so\ufrmSearchSO.pas' {frmDialogSearchSO},
  ufrmMasterDialogBrowse in '..\system\ufrmMasterDialogBrowse.pas' {frmMasterDialogBrowse},
  uAppUtils in '..\lib\uAppUtils.pas',
  ufrmDialogAddProductForSO in '..\module\so\ufrmDialogAddProductForSO.pas' {frmDialogAddProductForSO},
  ufrmSearchProduct in '..\module\product\ufrmSearchProduct.pas' {frmDialogSearchProduct},
  ufrmDialogMemberShip in '..\module\customer_support\ufrmDialogMemberShip.pas' {frmDialogMemberShip},
  ufrmSearchCompanyMember in '..\module\customer_support\ufrmSearchCompanyMember.pas' {frmDialogSearchCompanyMember},
  ufrmDialogFamilyMember in '..\module\customer_support\ufrmDialogFamilyMember.pas' {frmDialogFamilyMember},
  ufrmSearchStatusKlrg in '..\module\customer_support\ufrmSearchStatusKlrg.pas' {frmDialogSearchStatusKlrg},
  ufrmDialogPersonalMember in '..\module\customer_support\ufrmDialogPersonalMember.pas' {frmDialogPersonalMember},
  ufrmSearchTypeMember in '..\module\customer_support\ufrmSearchTypeMember.pas' {frmDialogSearchTypeMember},
  ufrmPopupFamilyMember in '..\module\customer_support\ufrmPopupFamilyMember.pas' {frmPopupFamilyMember},
  ufrmPopupPersonalMember in '..\module\customer_support\ufrmPopupPersonalMember.pas' {frmPopupPersonalMember},
  ufrmGudang in '..\module\inventory\ufrmGudang.pas' {frmGudang},
  ufrmDialogGudang in '..\module\inventory\ufrmDialogGudang.pas' {frmDialogGudang},
  uInterface in '..\system\uInterface.pas',
  ufrmTrader in '..\module\trader\ufrmTrader.pas' {frmTrader},
  ufrmDialogTrader in '..\module\trader\ufrmDialogTrader.pas' {frmDialogTrader},
  ufrmDialogPlafonTrader in '..\module\trader\ufrmDialogPlafonTrader.pas' {frmDialogPlafonTrader},
  ufrmSearchPO in '..\module\merchandise\ufrmSearchPO.pas' {frmDialogSearchPO},
  ufrmCrazyPrice in '..\module\trader\ufrmCrazyPrice.pas' {frmCrazyPrice},
  ufrmCrazyPriceDialog in '..\module\trader\ufrmCrazyPriceDialog.pas' {frmCrazyPriceDialog},
  ufrmPOFromTrader in '..\module\trader\ufrmPOFromTrader.pas' {ufrmPOFromTrader},
  ufrmDialogPOFromTrader in '..\module\trader\ufrmDialogPOFromTrader.pas' {frmDialogPOFromTrader},
  ufrmDialogPrintKasirPreview in '..\module\cashier_supv\ufrmDialogPrintKasirPreview.pas' {frmDialogPrintKasirPreview},
  uTemplatePrintText in '..\system\uTemplatePrintText.pas',
  uDMClient in '..\system\uDMClient.pas' {DMClient: TDataModule},
  ufrmMemberShip in '..\module\customer_support\ufrmMemberShip.pas' {frmMemberShip},
  uModMember in '..\model\uModMember.pas',
  uModTipePerusahaan in '..\model\uModTipePerusahaan.pas',
  ufrmInputSupplierForNotSO in '..\module\so\ufrmInputSupplierForNotSO.pas' {frmInputSupplierForNotSO},
  ufrmDialogInputSupplierForNotSO in '..\module\so\ufrmDialogInputSupplierForNotSO.pas' {frmDialogInputSupplierForNotSO},
  ufrmInputProductForNotSO in '..\module\so\ufrmInputProductForNotSO.pas' {frmInputProductForNotSO},
  ufrmDialogInputProductForNotSO in '..\module\so\ufrmDialogInputProductForNotSO.pas' {frmDialogInputProductForNotSO},
  ufrmCreateSO in '..\module\so\ufrmCreateSO.pas' {frmCreateSO},
  ufrmGeneratePOForAll in '..\module\po\ufrmGeneratePOForAll.pas' {frmGeneratePOforAll},
  ufrmGeneratePOBonus in '..\module\po\ufrmGeneratePOBonus.pas' {frmGeneratePOBonus},
  ufrmChangeStatusPO in '..\module\merchandise\ufrmChangeStatusPO.pas' {frmChangeStatusPO},
  ufrmCancellationPO in '..\module\po\ufrmCancellationPO.pas' {frmCancellationPO},
  ufrmApprovalPO in '..\module\po\ufrmApprovalPO.pas' {frmApprovallPO},
  ufrmSearchSupplier in '..\module\merchandise\ufrmSearchSupplier.pas' {frmDialogSearchSupplier},
  ufrmProduct in '..\module\product\ufrmProduct.pas' {frmProduct},
  ufraStockCard in '..\module\product\ufraStockCard.pas' {fraStockCard: TFrame},
  ufraSellingPrice in '..\module\product\ufraSellingPrice.pas' {fraSellingPrice: TFrame},
  ufraProductTurunan in '..\module\product\ufraProductTurunan.pas' {fraProductTurunan: TFrame},
  ufraProductSupplier in '..\module\product\ufraProductSupplier.pas' {fraProductSupplier: TFrame},
  ufraBonusProduct in '..\module\product\ufraBonusProduct.pas' {fraBonusProduct: TFrame},
  ufraUOMConvertion in '..\module\product\ufraUOMConvertion.pas' {fraUOMConvertion: TFrame},
  ufraAlokasiStock in '..\module\product\ufraAlokasiStock.pas' {fraAlokasiStock: TFrame},
  ufrmDialogProduct in '..\module\product\ufrmDialogProduct.pas' {frmDialogProduct},
  uModBarang in '..\model\uModBarang.pas',
  uModRefPajak in '..\model\uModRefPajak.pas',
  uModSatuan in '..\model\uModSatuan.pas',
  ufrmDialogMerk in '..\module\product\ufrmDialogMerk.pas' {frmDialogMerk},
  uSpecialKey in '..\classes\uSpecialKey.pas',
  ufraHistoriPOByProduct in '..\module\merchandise\ufraHistoriPOByProduct.pas' {fraHistoriPOByProduct: TFrame},
  ufrmDialogPrintPreview in '..\system\ufrmDialogPrintPreview.pas' {frmDialogPrintPreview},
  uDMReport in '..\system\uDMReport.pas' {DMReport},
  HPHELP in '..\lib\HPHELP.PAS',
  ufrmGoodsReceiving in '..\module\inventory\ufrmGoodsReceiving.pas' {frmGoodsReceiving},
  ufrmDisplayPO in '..\module\merchandise\ufrmDisplayPO.pas' {frmDisplayPO},
  ufrmMain in 'ui\ufrmMain.pas' {frmMain},
  ufrmServiceLevel in '..\module\merchandise\ufrmServiceLevel.pas' {frmServiceLevel},
  ufrmDSI in '..\module\inventory\ufrmDSI.pas' {frmDSI},
  uModGudang in '..\model\uModGudang.pas',
  uModUnit in '..\model\uModUnit.pas',
  uModPropinsi in '..\model\uModPropinsi.pas',
  ufrmWastageReal in '..\module\inventory\ufrmWastageReal.pas' {frmWastageReal},
  uSpell in '..\lib\uSpell.pas',
  ufrmSearchWastageReal in '..\module\inventory\ufrmSearchWastageReal.pas' {frmSearchWastageReal},
  ufrmDialogWastageReal in '..\module\inventory\ufrmDialogWastageReal.pas' {frmDialogWastageReal},
  ufrmReprintNP in '..\module\inventory\ufrmReprintNP.pas' {frmReprintNP},
  ufrmProductForSelling in '..\module\cashier_supv\ufrmProductForSelling.pas' {frmProductForSelling},
  ufrmDialogActivatePOS in '..\module\cashier_supv\ufrmDialogActivatePOS.pas' {frmDialogActivePOS},
  ufrmActivatePOS in '..\module\cashier_supv\ufrmActivatePOS.pas' {frmActivatePOS},
  ufrmBeginningBalancePOS in '..\module\cashier_supv\ufrmBeginningBalancePOS.pas' {frmBeginningBalancePOS},
  ufrmDialogBeginningBalancePOS in '..\module\cashier_supv\ufrmDialogBeginningBalancePOS.pas' {frmDialogBeginBalancePOS},
  ufrmMaintenancePassword in '..\module\cashier_supv\ufrmMaintenancePassword.pas' {frmMaintenancePassword},
  ufrmDialogMaintenancePassword in '..\module\cashier_supv\ufrmDialogMaintenancePassword.pas' {frmDialogMaintenancePassword},
  ufrmFinalPayment in '..\module\cashier_supv\ufrmFinalPayment.pas' {frmFinalPayment},
  ufrmDialogFinalPayment in '..\module\cashier_supv\ufrmDialogFinalPayment.pas' {frmDialogFinalPayment},
  ufrmPopupHistCDFP in '..\module\cashier_supv\ufrmPopupHistCDFP.pas' {frmPopupHistCDFP},
  ufrmAdjustmentCashier in '..\module\cashier_supv\ufrmAdjustmentCashier.pas' {frmAdjustmentCashier},
  ufrmDialogAdjustmentCashier in '..\module\cashier_supv\ufrmDialogAdjustmentCashier.pas' {frmDialogAdjustmentCashier},
  ufrmCreditCard in '..\module\cashier_supv\ufrmCreditCard.pas' {frmCreditCard},
  ufrmDialogCreditCard in '..\module\cashier_supv\ufrmDialogCreditCard.pas' {frmDialogCreditCard},
  ufrmCashDropping in '..\module\cashier_supv\ufrmCashDropping.pas' {frmCashDropping},
  ufrmDialogCashDropping in '..\module\cashier_supv\ufrmDialogCashDropping.pas' {frmDialogCashDropping},
  ufrmPopupHistCD in '..\module\cashier_supv\ufrmPopupHistCD.pas' {frmPopupHistCD},
  ufrmResetCashier in '..\module\cashier_supv\ufrmResetCashier.pas' {frmResetCashier},
  uModTipePembayaran in '..\model\uModTipePembayaran.pas',
  uModTipeKirimPO in '..\model\uModTipeKirimPO.pas',
  ufrmReturNota in '..\module\cashier_supv\ufrmReturNota.pas' {frmReturNota},
  ufrmDialogReturNota in '..\module\cashier_supv\ufrmDialogReturNota.pas' {frmDialogReturNota},
  ufraPaymentReturNota in '..\module\cashier_supv\ufraPaymentReturNota.pas' {fraPaymentNotaRetur: TFrame},
  ufrmDisplayPOSTransaction in '..\module\cashier_supv\ufrmDisplayPOSTransaction.pas' {frmDisplayPOSTransaction},
  ufrmPopupDetailTransaction in '..\module\cashier_supv\ufrmPopupDetailTransaction.pas' {frmPopupDetailTransaction},
  ufrmDisplayPOSMonitor in '..\module\cashier_supv\ufrmDisplayPOSMonitor.pas' {frmDisplayPOSMonitor},
  ufrmPopupDetailCashback in '..\module\cashier_supv\ufrmPopupDetailCashback.pas' {frmPopupDetailCashback},
  ufrmDisplayLastTransactionNo in '..\module\cashier_supv\ufrmDisplayLastTransactionNo.pas' {frmDisplayLastTransactionNo},
  ufrmDisplayCCAndCashback in '..\module\cashier_supv\ufrmDisplayCCAndCashback.pas' {frmDisplayCCAndCashback},
  ufrmAdjustmentCashback in '..\module\cashier_supv\ufrmAdjustmentCashback.pas' {frmAdjustmentCashback},
  ufrmDialogAdjustmentCashback in '..\module\cashier_supv\ufrmDialogAdjustmentCashback.pas' {frmDialogAdjustmentCashback},
  ufrmDialogDataCostumer in '..\module\customer_support\ufrmDialogDataCostumer.pas' {frmDialogDataCostumer},
  ufrmDataCostumer in '..\module\customer_support\ufrmDataCostumer.pas' {frmDataCostumer},
  ufrmMemberActivation in '..\module\customer_support\ufrmMemberActivation.pas' {frmMemberActivation},
  ufrmSearchCardNo in '..\module\customer_support\ufrmSearchCardNo.pas' {frmDialogSearchCardNo},
  ufrmCetakPO in '..\module\merchandise\ufrmCetakPO.pas' {frmCetakPO},
  ufrmSalesReportContrabon in '..\module\cashier_supv\ufrmSalesReportContrabon.pas' {frmSalesReportContrabon},
  ufrmShift in '..\module\cashier_supv\ufrmShift.pas' {frmShift},
  ufrmDialogShift in '..\module\cashier_supv\ufrmDialogShift.pas' {frmDialogShift},
  ufrmDailySalesReport in '..\module\cashier_supv\ufrmDailySalesReport.pas' {frmDailySalesReport},
  ufrmReprintNota in '..\module\cashier_supv\ufrmReprintNota.pas' {frmReprintNota},
  ufrmPurchaseOrder in '..\module\po\ufrmPurchaseOrder.pas' {frmPurchaseOrder},
  ufrmWorksheet in '..\module\cashier_supv\ufrmWorksheet.pas' {frmWorksheet},
  ufrmPopupGrid in '..\system\ufrmPopupGrid.pas' {frmPopupGrid},
  ufrmMaintenanceBarcode in '..\module\inventory\ufrmMaintenanceBarcode.pas' {frmMaintenanceBarcode},
  ufrmHistoryPO in '..\module\merchandise\ufrmHistoryPO.pas' {frmHistoryPO},
  ufrmSupplier in '..\module\merchandise\ufrmSupplier.pas' {frmSupplier},
  ufrmDialogSupplier in '..\module\merchandise\ufrmDialogSupplier.pas' {frmDialogSupplier},
  ufrmDayOfPO in '..\module\merchandise\ufrmDayOfPO.pas' {frmDayofPO},
  ufrmListMembership in '..\module\customer_support\ufrmListMembership.pas' {frmListMembership},
  ufrmDialogBarcodeRequest in '..\module\merchandise\ufrmDialogBarcodeRequest.pas' {frmDialogBarcodeRequest},
  ufrmBarcodeRequest in '..\module\merchandise\ufrmBarcodeRequest.pas' {frmBarcodeRequest},
  ufrmListPOCancel in '..\module\po\ufrmListPOCancel.pas' {frmListPOCancel},
  ufrmListDailyTransaction in '..\module\cashier_supv\ufrmListDailyTransaction.pas' {frmListDailyTransaction},
  ufrmDialogDetilPayment in '..\module\cashier_supv\ufrmDialogDetilPayment.pas' {frmDialogDetilPayment},
  ufrmDialogViewDetilTransaksi in '..\module\cashier_supv\ufrmDialogViewDetilTransaksi.pas' {frmDialogViewDetilTransaksi},
  ufrmUbahQTYPO in '..\module\po\ufrmUbahQTYPO.pas' {frmUbahQTYPO},
  ufrmInvMovementQTY in '..\module\inventory\ufrmInvMovementQTY.pas' {frmInvMovementQTY},
  ufrmLaporanRetur in '..\module\inventory\ufrmLaporanRetur.pas' {frmLaporanRetur},
  ufrmDiscountMember in '..\module\customer_support\ufrmDiscountMember.pas' {frmDiscountMember},
  ufrmDialogDiscountMember in '..\module\customer_support\ufrmDialogDiscountMember.pas' {frmDialogDiscountMember},
  ufrmListMemberTransaction in '..\module\cashier_supv\ufrmListMemberTransaction.pas' {frmListMemberTransaction},
  ufrmRafaksi in '..\module\inventory\ufrmRafaksi.pas' {frmRafaksi},
  ufrmDialogRafaksi in '..\module\inventory\ufrmDialogRafaksi.pas' {frmDialogRafaksi},
  ufrmReturTrader in '..\module\inventory\ufrmReturTrader.pas' {frmReturTrader},
  ufrmDialogReturTrader in '..\module\inventory\ufrmDialogReturTrader.pas' {frmDialogReturTrader},
  uModRefAgama in '..\model\uModRefAgama.pas',
  ufrmSO in '..\module\so\ufrmSO.pas' {frmSO},
  ufrmDialogSO in '..\module\so\ufrmDialogSO.pas' {frmDialogSO},
  uModSO in '..\model\uModSO.pas',
  uModSuplier in '..\model\uModSuplier.pas',
  ufrmPilihUnit in '..\module\references\ufrmPilihUnit.pas' {frmPilihCabang},
  ufrmDialogGeneratePO in '..\module\po\ufrmDialogGeneratePO.pas' {frmDialogDetailGeneratePO},
  uModPO in '..\model\uModPO.pas',
  ufrmMouselessMenu in '..\client\ui\ufrmMouselessMenu.pas' {frmMouselesMenu},
  ufrmCXLookup in '..\system\ufrmCXLookup.pas' {frmCXLookup},
  uModDO in '..\model\uModDO.pas',
  ufrmListingReceivingProduct in '..\module\inventory\ufrmListingReceivingProduct.pas' {frmListingReceivingProduct},
  ufrmSettingKoneksi in '..\system\ufrmSettingKoneksi.pas' {frmSettingKoneksi},
  ufrmPORevision in '..\module\po\ufrmPORevision.pas' {frmPORevision},
  uModelHelper in '..\model\uModelHelper.pas',
  uModCreditCard in '..\model\uModCreditCard.pas',
  uModDNRecv in '..\model\uModDNRecv.pas',
  uModCNRecv in '..\model\uModCNRecv.pas',
  uModSettingApp in '..\model\uModSettingApp.pas',
  ufrmDN in '..\module\inventory\ufrmDN.pas' {frmDN},
  ufrmDialogDN in '..\module\inventory\ufrmDialogDN.pas' {frmDialogDN},
  ufrmDialogCN in '..\module\inventory\ufrmDialogCN.pas' {frmDialogCN},
  ufrmCN in '..\module\inventory\ufrmCN.pas' {frmCN},
  ufrmSettingApp in '..\system\ufrmSettingApp.pas' {frmSettingApp},
  ufrmPreference in '..\system\ufrmPreference.pas' {frmPreference},
  ufrmKartuStock in '..\module\inventory\ufrmKartuStock.pas' {frmKartuStock},
  ufrmMasterReport in '..\system\ufrmMasterReport.pas' {frmMasterReport},
  ufrmStockProduct in '..\module\inventory\ufrmStockProduct.pas' {frmStockProduct},
  ufrmInventoryMovement in '..\module\inventory\ufrmInventoryMovement.pas' {frmInventoryMovement},
  ufrmSplash in 'ui\ufrmSplash.pas' {frmSplash},
  uClientClasses in '..\classes\uClientClasses.pas',
  uModQuotation in '..\model\uModQuotation.pas',
  ufrmUser in '..\module\management user\ufrmUser.pas' {frmUser},
  ufrmDialogUser in '..\module\management user\ufrmDialogUser.pas' {frmDialogUser},
  ufrmDailySalesAnalysis in '..\module\cashier_supv\ufrmDailySalesAnalysis.pas' {frmDailySalesAnalysis},
  uTSFastReportFunction in '..\lib\uTSFastReportFunction.pas',
  uModShift in '..\model\uModShift.pas',
  uModRekening in '..\model\uModRekening.pas',
  ufrmMasterBrowse in '..\system\ufrmMasterBrowse.pas' {frmMasterBrowse};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMClient, DMClient);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TDMReport, DMReport);
  Application.Run;
end.
