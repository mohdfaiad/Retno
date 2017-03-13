program ho;

uses
  Vcl.Forms,
  ufrmMain in 'ui\ufrmMain.pas' {frmMain},
  ufrmLogin in 'module\login\ufrmLogin.pas' {frmLogin},
  uConstanta in 'unit\uConstanta.pas',
  ufraFooter1Button in '..\system\ufraFooter1Button.pas' {fraFooter1Button: TFrame},
  ufraFooter5Button in '..\system\ufraFooter5Button.pas' {fraFooter5Button: TFrame},
  ufraLoading in '..\system\ufraLoading.pas' {fraLoading: TFrame},
  ufraProgressBar in '..\system\ufraProgressBar.pas' {fraProgressBar: TFrame},
  ufrmSplash in 'ui\ufrmSplash.pas' {frmSplash},
  ufraFooterDialog2Button in '..\system\ufraFooterDialog2Button.pas' {fraFooterDialog2Button: TFrame},
  ufrmMasterDialog in '..\system\ufrmMasterDialog.pas' {frmMasterDialog},
  ufrmMaster in '..\system\ufrmMaster.pas' {frmMaster},
  udmMain in 'ui\udmMain.pas' {dmMain: TDataModule},
  ufrmAbout in 'ui\ufrmAbout.pas' {frmAbout},
  uMenuManagement in '..\system\uMenuManagement.pas',
  uFormProperty in '..\system\uFormProperty.pas',
  uGlobalProperty in '..\system\uGlobalProperty.pas',
  uRetnoUnit in '..\system\uRetnoUnit.pas',
  ufrmPajak in 'module\references\ufrmPajak.pas' {frmPajak},
  ufrmDialogPajak in 'module\references\ufrmDialogPajak.pas' {frmDialogPajak},
  uTSCommonDlg in '..\system\uTSCommonDlg.pas',
  uCompany in '..\classes\uCompany.pas',
  uTSBaseClass in '..\classes\uTSBaseClass.pas',
  uUnit in '..\classes\uUnit.pas',
  ufrmBank in 'module\references\ufrmBank.pas' {frmBank},
  ufrmDialogBank in 'module\references\ufrmDialogBank.pas' {frmDialogBank},
  ufrmDialogHariLibur in 'module\references\ufrmDialogHariLibur.pas' {frmDialogHariLibur},
  ufrmHariLibur in 'module\references\ufrmHariLibur.pas' {frmHariLibur},
  ufrmDialogLokasi in 'module\references\ufrmDialogLokasi.pas' {frmDialogLokasi},
  ufrmLokasi in 'module\references\ufrmLokasi.pas' {frmLokasi},
  ufrmSatuan in 'module\references\ufrmSatuan.pas' {frmSatuan},
  ufrmDialogSatuan in 'module\references\ufrmDialogSatuan.pas' {frmDialogSatuan},
  ufrmDialogSysParm in 'module\references\ufrmDialogSysParm.pas' {frmDialogSysParm},
  ufrmDialogSysParmCompTemp in 'module\references\ufrmDialogSysParmCompTemp.pas' {frmDialogSysParmCompTemp},
  ufrmSysParm in 'module\references\ufrmSysParm.pas' {frmSysParm},
  ufrmSysParmCompTemp1 in 'module\references\ufrmSysParmCompTemp1.pas' {frmSysParmCompTemp1},
  ufrmTipePerusahaan in 'module\references\ufrmTipePerusahaan.pas' {frmTipePerusahaan},
  ufrmDialogTipePerusahaan in 'module\references\ufrmDialogTipePerusahaan.pas' {frmDialogTipePerusahaan},
  ufrmDialogTipePembayaran in 'module\references\ufrmDialogTipePembayaran.pas' {frmDialogTipePembayaran},
  ufrmTipePembayaran in 'module\references\ufrmTipePembayaran.pas' {frmTipePembayaran},
  ufrmTipePengirimanPO in 'module\references\ufrmTipePengirimanPO.pas' {frmTipePengirimanPO},
  ufrmDialogTipePengirimanPO in 'module\references\ufrmDialogTipePengirimanPO.pas' {frmDialogTipePengirimanPO},
  ufrmDialogProductType in 'module\references\ufrmDialogProductType.pas' {frmDialogProductType},
  ufrmDialogSupplierType in 'module\references\ufrmDialogSupplierType.pas' {frmDialogSupplierType},
  ufrmProductType in 'module\references\ufrmProductType.pas' {frmProductType},
  ufrmSupplierType in 'module\references\ufrmSupplierType.pas' {frmSupplierType},
  ufrmSearchRekening in 'module\references\ufrmSearchRekening.pas' {frmDialogSearchRekening},
  uDMClient in '..\system\uDMClient.pas' {DMClient: TDataModule},
  uClientClasses in '..\classes\uClientClasses.pas',
  ufrmTest in 'ui\ufrmTest.pas' {frmTest},
  ufrmDialogRekening in 'module\accounting\ufrmDialogRekening.pas' {frmDialogRekening},
  ufrmRekening in 'module\accounting\ufrmRekening.pas' {frmRekening},
  ufrmUser in 'module\management user\ufrmUser.pas' {frmUser},
  ufrmUserGroup in 'module\management user\ufrmUserGroup.pas' {frmUserGroup},
  ufrmDialogUser in 'module\management user\ufrmDialogUser.pas' {frmDialogUser},
  ufrmDialogUserGroup in 'module\management user\ufrmDialogUserGroup.pas' {frmDialogUserGroup},
  ufrmAddNewMenu in 'module\management user\ufrmAddNewMenu.pas' {frmAddNewMenu},
  ufrmDialogMenu in 'module\management user\ufrmDialogMenu.pas' {frmDialogMenu},
  ufrmModule in 'module\management user\ufrmModule.pas' {frmModule},
  ufrmDialogModule in 'module\management user\ufrmDialogModule.pas' {frmDialogModule},
  ufrmDialogAddNewMenu in 'module\management user\ufrmDialogAddNewMenu.pas' {frmDialogAddNewMenu},
  ufrmMasterCustomer in 'module\references\ufrmMasterCustomer.pas' {frmMasterCustomer},
  ufrmDialogMasterCustomer in 'module\references\ufrmDialogMasterCustomer.pas' {frmDialogMasterCustomer},
  ufraAlokasiStock in 'module\product\ufraAlokasiStock.pas' {fraAlokasiStock: TFrame},
  ufraBonusProduct in 'module\product\ufraBonusProduct.pas' {fraBonusProduct: TFrame},
  ufraProductSupplier in 'module\product\ufraProductSupplier.pas' {fraProductSupplier: TFrame},
  ufraProductTurunan in 'module\product\ufraProductTurunan.pas' {fraProductTurunan: TFrame},
  ufraSellingPrice in 'module\product\ufraSellingPrice.pas' {fraSellingPrice: TFrame},
  ufraStockCard in 'module\product\ufraStockCard.pas' {fraStockCard: TFrame},
  ufraUOMConvertion in 'module\product\ufraUOMConvertion.pas' {fraUOMConvertion: TFrame},
  ufrmDialogProdSupplier in 'module\product\ufrmDialogProdSupplier.pas' {frmDialogProdSupplier},
  ufrmDialogProduct in 'module\product\ufrmDialogProduct.pas' {frmDialogProduct},
  ufrmProduct in 'module\product\ufrmProduct.pas' {frmProduct},
  uSpecialKey in '..\classes\uSpecialKey.pas',
  ufrmSearchProduct in 'module\product\ufrmSearchProduct.pas' {frmDialogSearchProduct},
  ufrmSearchSupplier in 'module\merchandise\ufrmSearchSupplier.pas' {frmDialogSearchSupplier},
  uAppUtils in '..\lib\uAppUtils.pas',
  uConn in '..\lib\uConn.pas',
  uDBUtils in '..\lib\uDBUtils.pas',
  uDSUtils in '..\lib\uDSUtils.pas',
  uDXUtils in '..\lib\uDXUtils.pas',
  uNetUtils in '..\lib\uNetUtils.pas',
  uTSINIFile in '..\lib\uTSINIFile.pas',
  ufraHistoriPOByProduct in 'module\merchandise\ufraHistoriPOByProduct.pas' {fraHistoriPOByProduct: TFrame},
  ufrmMasterBrowse in '..\system\ufrmMasterBrowse.pas' {frmMasterBrowse},
  ufraFooter4Button in '..\system\ufraFooter4Button.pas' {fraFooter4Button: TFrame},
  uModAccount in '..\model\uModAccount.pas',
  uModApp in '..\model\uModApp.pas',
  uModAuthApp in '..\model\uModAuthApp.pas',
  uModBank in '..\model\uModBank.pas',
  uModCompany in '..\model\uModCompany.pas',
  uModOutlet in '..\model\uModOutlet.pas',
  uModRefPajak in '..\model\uModRefPajak.pas',
  uModRekening in '..\model\uModRekening.pas',
  uModTest in '..\model\uModTest.pas',
  uModTipeKupon in '..\model\uModTipeKupon.pas',
  uModTipePembeli in '..\model\uModTipePembeli.pas',
  ufraFooterDialog3Button in '..\system\ufraFooterDialog3Button.pas' {fraFooterDialog3Button: TFrame},
  ufrmProductTypeNBD in 'module\references\ufrmProductTypeNBD.pas' {frmProductTypeNBD},
  ufrmDialogProductTypeNBD in 'module\references\ufrmDialogProductTypeNBD.pas' {frmDialogProductTypeNBD},
  ufrmMasterProductNBD in 'module\references\ufrmMasterProductNBD.pas' {frmMasterProductNBD},
  ufrmDialogMasterProductNBD in 'module\references\ufrmDialogMasterProductNBD.pas' {frmDialogMasterProductNBD},
  ufrmDialogSatuan_NBD in 'module\references\ufrmDialogSatuan_NBD.pas' {frmDialogSatuan_NBD},
  ufrmSatuan_NBD in 'module\references\ufrmSatuan_NBD.pas' {frmSatuan_NBD},
  uModTipePerusahaan in '..\model\uModTipePerusahaan.pas',
  uModSatuan in '..\model\uModSatuan.pas',
  uModTipePembayaran in '..\model\uModTipePembayaran.pas',
  uModCostCenter in '..\model\uModCostCenter.pas',
  ufrmCostCenter in 'module\references\ufrmCostCenter.pas' {frmCostCenter},
  ufrmDialogCostCenter in 'module\references\ufrmDialogCostCenter.pas' {frmDialogCostCenter},
  uInterface in '..\system\uInterface.pas',
  ufrmSupplier in 'module\merchandise\ufrmSupplier.pas' {frmSupplier},
  ufrmDialogSupplier in 'module\merchandise\ufrmDialogSupplier.pas' {frmDialogSupplier},
  ufrmOutstandingPO in 'module\merchandise\ufrmOutstandingPO.pas' {frmOutstandingPO},
  ufrmDayOfPO in 'module\merchandise\ufrmDayOfPO.pas' {frmDayofPO},
  ufrmDisplayPO in '..\pstore\module\merchandise\ufrmDisplayPO.pas' {frmDisplayPO},
  ufrmSearchPO in '..\pstore\module\merchandise\ufrmSearchPO.pas' {frmDialogSearchPO},
  ufrmMasterDialogBrowse in '..\system\ufrmMasterDialogBrowse.pas' {frmMasterDialogBrowse},
  ufrmReprintNP in '..\pstore\module\merchandise\ufrmReprintNP.pas' {frmReprintNP},
  uModSuplier in '..\model\uModSuplier.pas',
  uModBarang in '..\model\uModBarang.pas',
  ufrmDialogKategori in 'module\product\ufrmDialogKategori.pas' {frmDialogKategori},
  ufrmDialogMerchandise in 'module\product\ufrmDialogMerchandise.pas' {frmDialogMerchandise},
  ufrmDialogMerchandiseGroup in 'module\product\ufrmDialogMerchandiseGroup.pas' {frmDialogMerchandiseGroup},
  ufrmDialogMerk in 'module\product\ufrmDialogMerk.pas' {frmDialogMerk},
  ufrmDialogSubGroup in 'module\product\ufrmDialogSubGroup.pas' {frmDialogSubGroup},
  ufrmKategori in 'module\product\ufrmKategori.pas' {frmKategori},
  ufrmMerchandise in 'module\product\ufrmMerchandise.pas' {frmMerchandise},
  ufrmMerchandiseGroup in 'module\product\ufrmMerchandiseGroup.pas' {frmMerchandiseGroup},
  ufrmMerk in 'module\product\ufrmMerk.pas' {frmMerk},
  ufrmSubGroup in 'module\product\ufrmSubGroup.pas' {frmSubGroup},
  ufrmQuotation in 'module\merchandise\ufrmQuotation.pas' {frmQuotation},
  ufrmDialogQuotation in 'module\merchandise\ufrmDialogQuotation.pas' {frmDialogQuotation};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TDMClient, DMClient);
  Application.Run;
end.
