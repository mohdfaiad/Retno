unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, uFormProperty, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxStatusBar;

type
  TRole = (rNobody, rAdmin, rStoreManager, rSO, rPO, rIGRA, rSupvCashier);
  TfrmMain = class(TForm)
    mmMainMenu: TMainMenu;
    pnlHeader: TPanel;
    imgHeader: TImage;
    mmSistem1: TMenuItem;
    miLogin1: TMenuItem;
    miLogout1: TMenuItem;
    MenuItem1: TMenuItem;
    miExit1: TMenuItem;
    mmSetting1: TMenuItem;
    miConnectionDatabase: TMenuItem;
    MenuItem2: TMenuItem;
    miGlobalParameter1: TMenuItem;
    mmWindow: TMenuItem;
    miCascade1: TMenuItem;
    miTile1: TMenuItem;
    miArrange1: TMenuItem;
    MenuItem3: TMenuItem;
    miCloseAll1: TMenuItem;
    SysParam1: TMenuItem;
    mmAbout1: TMenuItem;
    miHeadOfficeHelp1: TMenuItem;
    MenuItem4: TMenuItem;
    miAbout1: TMenuItem;
    sbMain: TdxStatusBar;
    actlstMain: TActionList;
    actOnCreateForm: TAction;
    actOnLogout: TAction;
    actOnLogin: TAction;
    actOnExit: TAction;
    actCascade: TAction;
    actTile: TAction;
    actFinalPayment: TAction;
    actArrange: TAction;
    actCloseAll: TAction;
    actInputSupplierNotForSO: TAction;
    actInputProductNotForSO: TAction;
    actCreateSO: TAction;
    actGeneratePOForAll: TAction;
    actGeneratePOBySupplier: TAction;
    actCancellingPO: TAction;
    actChangeStatusPO: TAction;
    actApprovalPO: TAction;
    actDeliveryOrder: TAction;
    actServiceLevel: TAction;
    actCNDNGoodReceiving: TAction;
    actReturBarang: TAction;
    actDSI: TAction;
    actWastageObral: TAction;
    actWastageReal: TAction;
    actInputProductIGRA: TAction;
    actAdjustProductTurunan: TAction;
    actAdjustProductKemasan: TAction;
    actMutasiStok: TAction;
    actBonusForSales: TAction;
    actReprintNP: TAction;
    actCNReceiving: TAction;
    actDNReceiving: TAction;
    actReturReplace: TAction;
    actReturDamage: TAction;
    actGoodReceivingReplace: TAction;
    actActivatePOS: TAction;
    actBeginBalancePOS: TAction;
    actProductForSelling: TAction;
    actMaintenancePassword: TAction;
    actAdjustmentCashier: TAction;
    actCreditCard: TAction;
    actCashDropping: TAction;
    actResetCashier: TAction;
    actReturNota: TAction;
    actDisplayPOSTransaction: TAction;
    actDisplayPOSMonitor: TAction;
    actDisplayLastTransactionNo: TAction;
    actDisplayCCAndCashback: TAction;
    actAdjustmentCashback: TAction;
    actExportSync: TAction;
    actImportSync: TAction;
    actPOFromTrader: TAction;
    actTrader: TAction;
    actDOForAsgross: TAction;
    actMemberShip: TAction;
    actMemberActivation: TAction;
    actPrintPO: TAction;
    actCrazyPrice: TAction;
    actDataCostumer: TAction;
    actSalesReportContrabon: TAction;
    actVoucherBotol: TAction;
    actShift: TAction;
    actCustomerAgreement: TAction;
    actGenerateVoucher: TAction;
    actEODForPOS: TAction;
    actBroadcastDownload: TAction;
    actDOForTrader: TAction;
    actDailySalesReport: TAction;
    actReprintNota: TAction;
    actCashierCollectionReport: TAction;
    actDailySalesAnalysis: TAction;
    actRekapitulasiCN: TAction;
    actPrintPurchaseOrder: TAction;
    actPrintWorksheet: TAction;
    actListingPOByMerchandisingGroup: TAction;
    actPrintRecapitulationPO: TAction;
    actPrintHistoryPOBySupplier: TAction;
    actListRecapCreditDebetCard: TAction;
    actUnpackingStok: TAction;
    actStokOpnam: TAction;
    actStockAdjustment: TAction;
    actPeriodeStokOpnam: TAction;
    actFormStokOpnam: TAction;
    actKoordinatorStokOpnam: TAction;
    actTimStokOpnam: TAction;
    actMaintenanceBarcode: TAction;
    actLokasiStokOpnam: TAction;
    actSetupProductTurunan: TAction;
    actProduct: TAction;
    actSupplier: TAction;
    actHistoryPO: TAction;
    actListingReceivingProduct: TAction;
    actListOutstandingDOTrader: TAction;
    actAdjustmentProduct: TAction;
    actListCNMerchandisePerSuplier: TAction;
    actListPODOReceive: TAction;
    actListOmzet: TAction;
    actListingProductIGRA: TAction;
    actDisplayPO: TAction;
    actListMembership: TAction;
    actBarcodeRequest: TAction;
    actListWastage: TAction;
    actListPOCancel: TAction;
    actListingRankingCNWastage: TAction;
    actListingSupplierHaveCN: TAction;
    actPriceConfirmation: TAction;
    actListAdjustmentProduct: TAction;
    actPriceConfirmationKring33: TAction;
    actListDailyTransaction: TAction;
    actPOBonus: TAction;
    actSettingJurnal: TAction;
    actretursupplier: TAction;
    actGenerateJurnal: TAction;
    actTransferBarangBonus: TAction;
    actLaporanWastage: TAction;
    actUbahQtyPO: TAction;
    actStokBarang: TAction;
    actMutasiKeluar: TAction;
    actMutasiMasuk: TAction;
    actGudang: TAction;
    actListMutasiStok: TAction;
    actOmzet: TAction;
    actAdjustmentStock: TAction;
    actListBarcodeRequest: TAction;
    actAdjustmentStockList: TAction;
    actBarcodeRequestSlip: TAction;
    actWastageRealList: TAction;
    actDiscMember: TAction;
    actChangeStatusPOS: TAction;
    actStockBarang: TAction;
    actLapReturSup: TAction;
    actLaporanKonsinyasi: TAction;
    actLapInvMovement: TAction;
    actLapInvMovementQty: TAction;
    actShipmentAgent: TAction;
    actShipmentTransport: TAction;
    actShipmentDocument: TAction;
    actExportDataStore: TAction;
    actImportFromPOS: TAction;
    actListProduct: TAction;
    actLaporanMutasiKeluar: TAction;
    actLaporanMutasiMasuk: TAction;
    actReconcileBti: TAction;
    actLPKAll: TAction;
    actEodLpk: TAction;
    actUser: TAction;
    procedure actCloseAllExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actOnCreateFormExecute(Sender: TObject);
    procedure actOnLoginExecute(Sender: TObject);
    procedure actOnLogoutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
//    FNewUnit: TUnit;
    //FUnitName: string;
    FFormProperty: TFormProperty;
    FIsConnectedRefreshServer: boolean;
    FIsRegisteredUserToRefreshServer: boolean;
//    FIsStore: Integer;
    FIsTesting: Boolean;
    procedure EnableSubMenu(AMenu: TMenuItem; AValue: boolean);
    procedure SetAclstExim(aEnable : Boolean);
    procedure SetIsConnectedRefreshServer(const Value: boolean);
    procedure SetIsRegisteredUserToRefreshServer(const Value: boolean);
//    procedure SetLoginFullname(const Value: string);
//    procedure SetLoginRole(const Value: string);
    procedure SettingMainMenu(ARole: TRole);
    { Private declarations }
  public
    Host, IP: string;
    Port: integer;
//    property IsStore: Integer read FIsStore write FIsStore;
    property IsTesting: Boolean read FIsTesting write FIsTesting;
    { Public declarations }
  published
//    property LoginFullname: string read FLoginFullname write SetLoginFullname;
//    property LoginRole: string read FLoginRole write SetLoginRole;
//    property LoginUsername: string read FLoginUsername write SetLoginUsername;
//    property LoginId: Integer read FLoginId write SetLoginId;
//    property LoginUnitId: Integer read FUnitId write SetLoginUnitID;
//    property UnitId: Integer read FUnitId;
//    property LoginUnitName: string read FUnitName write SetUnitName;
//    property UnitName: string read FUnitName;
//
    property IsConnectedRefreshServer: boolean read FIsConnectedRefreshServer write
        SetIsConnectedRefreshServer;
    property IsRegisteredUserToRefreshServer: boolean read
        FIsRegisteredUserToRefreshServer write SetIsRegisteredUserToRefreshServer;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses udmMain, uNetUtils, uTSINIFile, uConstanta, uRetnoUnit, uTSCommonDlg,
  ufrmLogin;

procedure TfrmMain.actCloseAllExecute(Sender: TObject);
var i: integer;
begin
  for i := Self.MDIChildCount-1 downto 0 do
    MDIChildren[i].Close;
end;

procedure TfrmMain.actOnCreateFormExecute(Sender: TObject);
var
  iTemp: Integer;
  erMsg: string;
begin
  IsTesting := False;

  //ShowMessage(ParamStr(1));
  if ParamStr(1) = 'TESTING' then
  begin
    IsTesting := True;
  end;

  FFormProperty := TFormProperty.Create;
//  FDbEventListener := TDbEventListener.Create;
//  FDbEventListener.OnEvent := DbEventListenerOnEvent;

  IsConnectedRefreshServer := false;
  IsRegisteredUserToRefreshServer := false;

  // Init locale settings
  with FormatSettings do
  begin
    DateSeparator := '-';
    DecimalSeparator := '.';
    ThousandSeparator := ',';
    CurrencyString := 'Rp';
    CurrencyFormat := 2;
    CurrencyDecimals := 2;
    ShortDateFormat := 'dd-MM-yyyy';
    LongDateFormat := 'd MMMM yyyy';
  end;

  frmMain.Height := 600;
  frmMain.Width := 800;

  // set menu on user nobody
  actOnLogin.Enabled := true;
  actOnLogout.Enabled := false;
  SettingMainMenu(rNobody);

  // setting store - refresh server
  GetIPFromHost(Host,IP,erMsg);
  _INIWriteString(CONFIG_FILE, LOCAL_CLIENT, 'Localhost', IP);
  Port := _INIReadInteger(CONFIG_FILE, LOCAL_CLIENT, 'LocalPort'); // must: 49516

  {dmMain.tcpServerStore.Active := false;
  dmMain.tcpServerStore.Bindings.Clear;
  with dmMain.tcpServerStore.Bindings.Add do
  begin
    IP := _INIReadString(CONFIG_FILE, LOCAL_CLIENT, 'LocalHost');
    Port := _INIReadInteger(CONFIG_FILE, LOCAL_CLIENT, 'LocalPort');
  end;
  dmMain.tcpServerStore.Active := true;

  with dmMain.tcpClientStore do
  begin
    Host := _INIReadString(CONFIG_FILE, REFRESH_SERVER, 'RemoteHost');
    Port := _INIReadInteger(CONFIG_FILE, REFRESH_SERVER, 'RemotePort');
  end;
  }

  //Get global Variable
  if TryStrToInt(getGlobalVar('PROD_CODE_LENGTH'), iTemp) then
     igProd_Code_Length := iTemp;
  if TryStrToInt(getGlobalVar('PRICEPRECISION'), iTemp) then
     igPrice_Precision := iTemp;
end;

procedure TfrmMain.actOnLoginExecute(Sender: TObject);
var
  FdefUnitId: Integer;
begin
  frmLogin := TfrmLogin.Create(Application);
  frmLogin.ShowFormLogin(LOGIN_PAGE);

  if (LoginSuccessfull) then
  begin

           FdefUnitId  := StrToInt(getGlobalVar('UNITID')); //unit dan db untuk wh dan ho dijadikan 1

    FFormProperty.FMasterIsStore := GetIsStoreUnitID(FdefUnitId);

//    FGlobalProperty.LIstMerID     := GetListMerchanID(frmLogin.LoginID, frmLogin.LoginUntID);
//    aListMerID                    := FGlobalProperty.LIstMerID;
    FFormProperty.FLoginId        := frmLogin.LoginID;
    FFormProperty.FLoginUnitId    := frmLogin.LoginUntID;
    FFormProperty.FLoginRole      := frmLogin.LoginUserName;
    FFormProperty.FLoginUsername  := frmLogin.LoginUserName;
//    FFormProperty.FFilePathReport := GetFilePathReport;
    FFormProperty.FSelfUnitId     := FdefUnitId;
    FFormProperty.FIpClient       := IP;
    FFormProperty.FHostClient     := Host;
    FFormProperty.FTipeApp        := THO;
    {
    with cOpenQuery(GetSQLisHOisStore(frmLogin.LoginUntID)) do
    begin
      try
        FFormProperty.FLoginIsStore   := FieldByName('UNT_IS_STORE').AsInteger;
      finally
        Free;
      end;
    end;
    }
//    SetStatusHOSTORE;

    lUnitId := FFormProperty.FSelfUnitId;

//    OpenLoading(USER_LOGIN_LOADING);
//    LoginExecute;
//    CloseLoading;
  end; // end if

  frmLogin := nil;
  frmLogin.Free;
end;

procedure TfrmMain.actOnLogoutExecute(Sender: TObject);
begin
  actCloseAllExecute(self);

  actOnLogin.Enabled := true;
  actOnLogout.Enabled := false;

  //drop menu user
  try
//    if not assigned(MenuManagement) then
//      MenuManagement := TMenuManagement.Create;
//    MenuManagement.dropMenuUser;
  except
  end;

  SettingMainMenu(rNobody);
  SetAclstExim(True);
  with sbMain do
  begin
    Panels[0].Text := 'User Login: ';
    Panels[1].Text := 'Role: ';
    Panels[2].Text := 'Database: ';
    Panels[3].Text := 'EOD : ' + FormatDateTime('DD/MM/YYYY', GetLastEODDate(FFormProperty.FSelfUnitId));
  end; // end with
end;

procedure TfrmMain.EnableSubMenu(AMenu: TMenuItem; AValue: boolean);
var
  i: integer;
begin
  for i:=0 to AMenu.Count-1 do
    AMenu.Items[i].Enabled := AValue;

  // set invisible to menu
  AMenu.Visible := AValue;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (CommonDlg.Confirm('Are you sure you wish to quit ' + Application.Title +' ?') = mrYes) then
  begin
    if (actOnLogout.Enabled) then
      actOnLogoutExecute(self);
    CanClose := true;
  end
  else
    CanClose := false;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  CommonDlg.ShowInformationAlert('Aplikasi Store', 'test Selamat Datang', mtCustom);
end;

procedure TfrmMain.SetAclstExim(aEnable : Boolean);
begin
  actImportSync.Enabled       := aEnable;
  actExportSync.Enabled       := aEnable;
  actExportDataStore.Enabled  := aEnable;
  actImportFromPOS.Enabled    := aEnable;
end;

procedure TfrmMain.SetIsConnectedRefreshServer(const Value: boolean);
begin
  FIsConnectedRefreshServer := Value;
end;

procedure TfrmMain.SetIsRegisteredUserToRefreshServer(const Value: boolean);
begin
  FIsRegisteredUserToRefreshServer := Value;
end;

procedure TfrmMain.SettingMainMenu(ARole: TRole);
begin
  EnableSubMenu(mmWindow, false);
  EnableSubMenu(miConnectionDatabase, true);

end;

end.
