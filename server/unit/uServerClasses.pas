unit uServerClasses;

interface

uses
  System.Classes, uModApp, uDBUtils, Rtti, Data.DB, SysUtils, StrUtils, uModSO,
  uModSuplier, Datasnap.DBClient, uModUnit, uModBarang, uModDO, uModSettingApp,
  uModQuotation, uModBankCashOut, System.Generics.Collections, uModClaimFaktur,
  uModContrabonSales, System.DateUtils, System.JSON, uModAR, uModRekening,
  uModOrganization, System.JSON.Types, uModCustomerInvoice, uModPO,uModBankCashIn,
  uModSatuan, System.TypInfo, uModCrazyPrice, uModReturTrader, uModAuthUser;

type
  {$METHODINFO ON}
  TBaseServerClass = class(TComponent)
  public
    procedure AfterExecuteMethod;
  end;

  TTestMethod = class(TComponent)
  public
    function Hallo(aTanggal: TDateTime): String;
  end;

  TCrud = class(TBaseServerClass)
  private
    function StringToClass(ModClassName: string): TModAppClass;
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; virtual;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; virtual;
    function BeforeSaveToDB(AObject: TModApp): Boolean; virtual;
    function DeleteFromDBTrans(AObject: TModApp; DoCommit: Boolean): Boolean;
    function GenerateCustomNo(aTableName, aFieldName: string; aCountDigit: Integer
        = 11): String; virtual;
    function Retrieve(ModAppClass: TModAppClass; AID: String; LoadObjectList:
        Boolean = True): TModApp; overload;
    function SaveToDBTrans(AObject: TModApp; DoCommit: Boolean): Boolean;
    function ValidateCode(AOBject: TModApp): Boolean;
  public
    function CreateTableSQL(AModAPP : TModApp): string; overload;
    function CreateTableSQLByClassName(AClassName : String): string; overload;
    function DeleteFromDB(AObject: TModApp): Boolean;
    function GenerateNo(aClassName: string): String; overload;
    function OpenQuery(S: string): TDataSet;
    function Retrieve(ModClassName, AID: string): TModApp; overload;
    function RetrieveBatch(ModClassName, AIDs: string): TModApps; overload;
    function RetrieveByCode(ModClassName, aCode: string): TModApp; overload;
    function RetrieveSingle(ModClassName, AID: string): TModApp; overload;
    function SaveBatch(AObjectList: TObjectList<TModApp>): Boolean;
    function DeleteBatch(AObjectList: TObjectList<TModApp>): Boolean;
    function DoLogin(AUserName : String; APassword : String): Boolean;
	function SaveToDB(AObject: TModApp): Boolean;
    function SaveToDBID(AObject: TModApp): String;
    function SaveToDBLog(AObject: TModApp): Boolean;
    function TestGenerateSQL(AObject: TModApp): TStrings;
  end;

  TSuggestionOrder = class(TBaseServerClass)
  public
    function GenerateSO(aTanggal: TDatetime; aMerchan_ID: String;
        aSupplierMerchan_ID: String = ''): TDataSet;
    function RetrieveDetails(aID: String): TDataSet;
  end;

  TCrudPO = class(TCRud)
  private
  public
    function CancelPO(AID: String): Boolean;
    function GeneratePO(ASOID : String; ASupMGID : String): Boolean;
  end;

  TCrudSupplier = class(TCrud)
  private
    function ValidateCodeOnObject(AObject: TModApp): Boolean;
  public
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudDO = class(TCrud)
  private
    function GenerateNP(AModDO: TModDO): string;
    function IsPOSudahDO(ADO : TModDO): Boolean;
    function UpdateStatusPO(AObject: TModApp): Boolean;
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  public
    function RetrieveByPO(APONO : String): TModDO;
  end;

  TCrudCNRecv = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudDNRecv = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudSettingApp = class(TCrud)
  public
    function RetrieveByCabang(ACabang : TModUnit): TModSettingApp;
  end;

  TCrudQuotation = class(TCrud)
  private
    function GenerateActivateSQL(AModQuotation: TModQuotation): TStrings;
  public
    function ActivateQuotation(AModQuotation: TModQuotation): Boolean;
  end;

  TCrudClaimFaktur = class(TCrud)
  private
    function GenerateUpdateIsClaim(IsClaim: Integer; AClaim: TModClaimFaktur):
        TStrings;
    procedure UpdateIsClaim(IsClaim: Integer; aClaim: TModClaimFaktur);
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudBankCashOut = class(TCrud)
  private
    function UpdateAPTerbayar(AModBankCashOut : TModBankCashOut; AIsTambah :
        Boolean): Boolean;
    function UpdateARTerbayar(AModBankCashOut : TModBankCashOut; AIsTambah :
        Boolean): Boolean;
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudUpdatePOS = class(TCrud)
  private
    function SinkronToDB(AObject: TModApp): Boolean;
  public
    function RetreiveSyncronData(ModClassName, aFilter: string): TDataSet;
    function UpdateToDB(aDS: TDataSet; ModClassName: string): Boolean;
  end;

  TCrudAdjFaktur = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudContrabonSales = class(TCrud)
  public
    function IsTanggalSudahDiinput(AModContrabonSales : TModContrabonSales):
        Boolean;
  end;

  TJSONCRUD = class(TBaseServerClass)
  private
    FCRUD: TCrud;
  protected
    function GetCRUD: TCrud;
    function StringToClass(ModClassName: string): TModAppClass;
    property CRUD: TCrud read GetCRUD write FCRUD;
  public
    function TestGet: TJSONObject;
    function TestPost: TJSONObject;
    function TestDataset: TJSONArray;
    function Retrieve(AClassName, AID: String): TJSONObject;
    function SaveToDB(AJSON: TJSONObject): TJSONObject;
    function TestNativeGet: TModApp;
  end;

  TCrudCustomerInvoice = class(TCrud)
  protected
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

  TCrudPOTrader = class(TCrud)
  public
    function HasBarcode(aBarCode: string): Boolean;
  end;

  TCrudBarangHargaJual = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
  public
    function RetrieveByBarcode(aBarcode, aUoM: string): TModBarangHargaJual;
    function RetrieveByPLU(AModBarang : TModBarang; AModUOM : TModSatuan):
        TModBarangHargaJual;
  end;

  TCrudKuponBotol = class(TCrud)
  protected
    function GenerateCustomNo(aTableName, aFieldName: string; aCountDigit: Integer
        = 11): String; override;
  end;

  TCRUDJurnal = class(TCrud)
  protected
    function GenerateCustomNo(aTableName, aFieldName: string; aCountDigit: Integer
        = 11): String; override;
  public
  end;
  TCrudCrazyPrice = class(TCrud)
  public
    function RetrieveByBarcode(aBarcode: string): TModCrazyPrice;
    function RetrieveByPLU(aPLU: string): TModCrazyPrice;
  end;

  TCrudBarang = class(TCrud)
  public
    function RetrieveByCodeBHJUOM(ModClassName, aCode: string): TModBarang;
        overload;
    function RetrievePOS(sPLUBarCode: string): TModBarang;
  end;

  TCRUDObj = class
  private
  public
    class function Retrieve<T: class>(aID: string; LoadObjectList: Boolean =
        True): T;
    class function RetrieveCode<T: class>(aCode: string): T;
  end;

  TCrudKonversi = class(TCrud)
  public
    function RetrieveByBarcode(aBarcode: string): TModKonversi;
  end;

  TServerModAppHelper = class helper for TModApp
  private
  protected
  public
    procedure CopyFrom(aModApp : TModApp);
    procedure Reload(LoadObjectList: Boolean = False);
  end;

type
  TCRUDTransferBarang = class(TCrud)
  protected
    function GenerateCustomNo(aTableName, aFieldName: string; aCountDigit: Integer
        = 11): String; override;
  public
  end;

  TCRUDDOTrader = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  public
    function GenerateNoBukti: String;
  end;

type
  TCRUDBarcodeRequest = class(TCrud)
  protected
    function GenerateCustomNo(aTableName, aFieldName: string; aCountDigit: Integer
        = 11): String; override;
  public
  end;

type
  TCrudBankCashIN = class(TCrud)
  private
  protected
  public
    function GenerateNoBukti: String;
  end;

type
  TCRUDReturTrader = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  public
    function GenerateNoBukti: String;
  end;

  TCrudBarcodeUsage = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeDeleteFromDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  public
  published
  end;

  TCrudHistoryBarang = class(TCrud)
  protected
    function AfterSaveToDB(AObject: TModApp): Boolean; override;
    function BeforeSaveToDB(AObject: TModApp): Boolean; override;
  end;

{$METHODINFO OFF}

const
  CloseSession : Boolean = True;

implementation

uses
  Datasnap.DSSession, Data.DBXPlatform, uModCNRecv, uModDNRecv,
  uModAdjustmentFaktur, Variants, uModBank, uJSONUtils, FireDAC.Comp.Client,
  uModDOTrader, uModHistoryBarang, uModBarcodeUsage;

function TTestMethod.Hallo(aTanggal: TDateTime): String;
begin
  Result := 'Hello Word ' + DateToStr(aTanggal);
end;

function TCrud.AfterSaveToDB(AObject: TModApp): Boolean;
begin
  Result := True;
end;

function TCrud.BeforeDeleteFromDB(AObject: TModApp): Boolean;
begin
  Result := True;
end;

function TCrud.BeforeSaveToDB(AObject: TModApp): Boolean;
begin
  Result := True;
end;

function TCrud.CreateTableSQL(AModAPP : TModApp): string;
begin
  Result := TDBUtils.GetSQLCreate(AModAPP);
end;

function TCrud.CreateTableSQLByClassName(AClassName : String): string;
var
  AObject: TObject;
  C : TRttiContext;
begin
  AObject := (C.FindType(AClassName) as TRttiInstanceType).MetaClassType.Create;
  Result := CreateTableSQL(TModApp(AObject));
end;

function TCrud.DeleteBatch(AObjectList: TObjectList<TModApp>): Boolean;
var
  I: Integer;
begin
//  Result := False;

  try
    for I := 0 to AObjectList.Count - 1 do
    begin
      DeleteFromDBTrans(AObjectList[i], False);
    end;

    TDBUtils.Commit;
    Result := True;
  except
    raise;
  end;

end;

function TCrud.DeleteFromDB(AObject: TModApp): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  if not BeforeDeleteFromDB(AObject) then exit;
  lSS := TDBUtils.GenerateSQLDelete(AObject);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);
      TDBUtils.Commit;
      Result := True;
    except
      TDBUtils.RollBack;
      raise;
    End;
  Finally
    lSS.Free;
    AfterExecuteMethod;
  End;
end;

function TCrud.DeleteFromDBTrans(AObject: TModApp; DoCommit: Boolean): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  if not BeforeDeleteFromDB(AObject) then exit;
  lSS := TDBUtils.GenerateSQLDelete(AObject);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);
      if DoCommit then TDBUtils.Commit;
      Result := True;
    except
      TDBUtils.RollBack;
      raise;
    End;
  Finally
    lSS.Free;
    AfterExecuteMethod;
  End;
end;

function TCrud.DoLogin(AUserName : String; APassword : String): Boolean;
begin
  Result := False;

  with TModAuthUser(RetrieveByCode(TModAuthUser.ClassName, AUserName)) do
  begin
    if USR_PASSWD = APassword then
    begin
      Result := True;
    end;
  end;
end;

function TCrud.GenerateCustomNo(aTableName, aFieldName: string; aCountDigit:
    Integer = 11): String;
var
  i: Integer;
  lNum: Integer;
  S: string;
begin
  lNum := 0;
  S := 'select max(' + aFieldName + ') from ' + aTableName;
  with TDBUtils.OpenQuery(S) do
  begin
    Try
      if not eof then
        TryStrToInt( RightStr(Fields[0].AsString, aCountDigit), lNum);
    Finally
      free;
    End;
  end;
  inc(lNum);
  Result := IntToStr(lNum);
  for i := 0 to aCountDigit-1 do Result := '0' + Result;
  Result := RightStr(Result, aCountDigit);

  AfterExecuteMethod;
end;

function TCrud.GenerateNo(aClassName: string): String;
var
  lClass: TModAppClass;
  lObj: TModApp;
begin
  lClass := Self.StringToClass(aClassName);
  lObj := lClass.Create;
  Try
    Result := GenerateCustomNo(lObj.GetTableName, lObj.GetCodeField);
  Finally
    AfterExecuteMethod;
    lObj.Free;
  End;
end;

function TCrud.OpenQuery(S: string): TDataSet;
begin
  Result := TDBUtils.OpenQuery(S);
  AfterExecuteMethod;
end;

function TCrud.Retrieve(ModClassName, AID: string): TModApp;
var
  lClass: TModAppClass;
begin
  lClass := Self.StringToClass(ModClassName);
  If not Assigned(lClass) then
    Raise Exception.Create('Class ' + ModClassName + ' not found');
  Result := Self.Retrieve(lClass, AID);

  AfterExecuteMethod;
end;

function TCrud.Retrieve(ModAppClass: TModAppClass; AID: String; LoadObjectList:
    Boolean = True): TModApp;
begin
  Result := ModAppClass.Create;
  TDBUtils.LoadFromDB(Result, AID, LoadObjectList);
end;

function TCrud.RetrieveBatch(ModClassName, AIDs: string): TModApps;
var
  IDs: TStrings;
//  lClass: TModAppClass;
  I: Integer;
  lModApp: TModApp;
begin
  Result := TModApps.Create;

  IDs := TStringList.Create;
  try
    IDs.CommaText := AIDs;

    for I := 0 to IDs.Count - 1 do
    begin
      lModApp := Retrieve(ModClassName, IDs[i]);
      if lModApp.ID <> '' then
        Result.APPs.Add(lModApp);
    end;
  finally
    IDs.Free;
  end;
end;

function TCrud.RetrieveByCode(ModClassName, aCode: string): TModApp;
var
  lClass: TModAppClass;
begin
  lClass := Self.StringToClass(ModClassName);
  If not Assigned(lClass) then
    Raise Exception.Create('Class ' + ModClassName + ' not found');
  Result := lClass.Create;
  if aCode <> '' then
    TDBUtils.LoadByCode(Result, aCode);
  AfterExecuteMethod;
end;

function TCrud.RetrieveSingle(ModClassName, AID: string): TModApp;
var
  lClass: TModAppClass;
begin
  lClass := Self.StringToClass(ModClassName);
  If not Assigned(lClass) then
    Raise Exception.Create('Class ' + ModClassName + ' not found');
  Result := Self.Retrieve(lClass, AID, False);

  AfterExecuteMethod;
end;

function TCrud.SaveBatch(AObjectList: TObjectList<TModApp>): Boolean;
var
  I: Integer;
begin
  Result := False;

  try
    for I := 0 to AObjectList.Count - 1 do
    begin
      if not SaveToDBTrans(AObjectList[i], False) then
        Exit;
    end;

    TDBUtils.Commit;
    Result := True;
  except
    TDBUtils.RollBack;
    raise;
  end;
end;

function TCrud.SaveToDB(AObject: TModApp): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  if not ValidateCode(AObject) then exit;
  if not BeforeSaveToDB(AObject) then exit;
  lSS := TDBUtils.GenerateSQL(AObject);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);
      if not AfterSaveToDB(AObject) then exit;

      TDBUtils.Commit;
      Result := True;
    except
      lSS.SaveToFile(AObject.ClassName + '_ErrorSQL.log');
      TDBUtils.RollBack;
      raise;
    End;
  Finally
//    AObject.Free;
    lSS.Free;
    AfterExecuteMethod;
  End;
end;

function TCrud.SaveToDBID(AObject: TModApp): String;
//  Result := '';
//  If SaveToDB(AObject) then Result := AObject.ID;
var
  lSS: TStrings;
begin
  Result := '';
  if not ValidateCode(AObject) then exit;
  if not BeforeSaveToDB(AObject) then exit;
  lSS := TDBUtils.GenerateSQL(AObject);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);
      if not AfterSaveToDB(AObject) then exit;

      TDBUtils.Commit;
      Result := AObject.ID;
    except
      TDBUtils.RollBack;
      raise;
    End;

  Finally
//    AObject.Free;
    lSS.Free;
    AfterExecuteMethod;
  End;
end;

function TCrud.SaveToDBLog(AObject: TModApp): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  if not ValidateCode(AObject) then exit;
  lSS := TDBUtils.GenerateSQL(AObject);
  Try
    Try
      lSS.SaveToFile(ExtractFilePath(ParamStr(0)) + '\SaveToDB.log');
      TDBUtils.ExecuteSQL(lSS, False);
      TDBUtils.Commit;
      Result := True;
    except
      TDBUtils.RollBack;
      raise;
    End;
  Finally
    lSS.Free;
  End;
end;

function TCrud.SaveToDBTrans(AObject: TModApp; DoCommit: Boolean): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  if not ValidateCode(AObject) then exit;
  if not BeforeSaveToDB(AObject) then exit;
  lSS := TDBUtils.GenerateSQL(AObject);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);
      if not AfterSaveToDB(AObject) then exit;
      if DoCommit then
        TDBUtils.Commit;
      Result := True
    except
      TDBUtils.RollBack;
      raise;
    End;
  Finally
    lSS.Free;
    AfterExecuteMethod;
  End;
end;

function TCrud.StringToClass(ModClassName: string): TModAppClass;
var
  ctx: TRttiContext;
  typ: TRttiType;
  list: TArray<TRttiType>;
begin
  Result := nil;
  ctx := TRttiContext.Create;
  list := ctx.GetTypes;
  for typ in list do
  begin
    if typ.IsInstance and (EndsText(ModClassName, typ.Name)) then
    begin
      Result := TModAppClass(typ.AsInstance.MetaClassType);
      break;
    end;
  end;
  ctx.Free;
end;

function TCrud.TestGenerateSQL(AObject: TModApp): TStrings;
begin
  Result := TDBUtils.GenerateSQL(AObject);
end;

function TCrud.ValidateCode(AOBject: TModApp): Boolean;
var
  S: string;
  sFilter: string;
begin
  Result  := True;
  if AObject.PropFromAttr(AttributeOfCode, False) = nil then exit;
  sFilter := AOBject.GetCodeField + ' = ' + QuotedStr(AObject.GetCodeValue);
  if AOBject.ID <> '' then
    sFilter := sFilter + ' And ' + AOBject.GetPrimaryField + ' <> ' + QuotedStr(AOBject.ID);
  S := Format(SQL_Select,['*', AOBject.GetTableName, sFilter]);
  with TDBUtils.OpenQuery(S) do
  begin
    Try
      Result := EOF;
    Finally
      Free;
    End;
  end;
  if not Result then
    raise Exception.Create(AOBject.GetTableName + '.' + AOBject.GetCodeField
      + ' : ' + AOBject.GetCodeValue + ' sudah ada di Database'
    );
end;

function TSuggestionOrder.GenerateSO(aTanggal: TDatetime; aMerchan_ID: String;
    aSupplierMerchan_ID: String = ''): TDataSet;
var
  S: string;
begin
  S := 'select * from FN_GENERATESO(' + QuotedStr(aMerchan_ID) + ','
    + TDBUtils.QuotD(aTanggal)  +')';
  if aSupplierMerchan_ID <> '' then
    S := S + ' where SUPLIER_MERCHAN_ID = ' + QuotedStr(aSupplierMerchan_ID);
  Result := TDBUtils.OpenQuery(S);
end;

function TSuggestionOrder.RetrieveDetails(aID: String): TDataSet;
var
  S: string;
begin
  S := 'select * from V_SO_DETAIL where SO_ID = ' + QuotedStr(Aid);
  Result := TDBUtils.OpenQuery(S);
end;

function TCrudPO.CancelPO(AID: String): Boolean;
var
  S: string;
begin
  S := 'UPDATE PO SET REF$STATUS_PO_ID = '
      +' (select DISTINCT REF$STATUS_PO_ID from REF$STATUS_PO where STAPO_CODE = ''003'')'
      +' WHERE PO_ID =' + QuotedStr(aID);
  TDBUtils.ExecuteSQL(S);
  Result := True;
end;

function TCrudPO.GeneratePO(ASOID : String; ASupMGID : String): Boolean;
var
  sSOID: string;
  sSQL: string;
  sSUPMMID: string;
begin
  Result := False;

  sSOID := 'null';
  if ASOID <> '' then
    sSOID := QuotedStr(ASOID);

  sSUPMMID := 'null';
  if ASupMGID <> '' then
    sSUPMMID := QuotedStr(ASupMGID);

  sSQL   := 'exec dbo.SP_GENERATE_PO ' + sSOID + ',' + sSUPMMID;
  try
    TDBUtils.ExecuteSQL(sSQL, False);
    TDBUtils.Commit;
    Result := False;
  except
    TDBUtils.RollBack;
  end;
end;

function TCrudSupplier.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  lModSupplier: TModSuplier;
  I: Integer;
begin
  Result := False;

  if not ValidateCodeOnObject(AObject) then
    Exit;

  lModSupplier := TModSuplier(AObject);
  for I := 0 to lModSupplier.SuplierMerchanGroups.Count - 1 do
  begin
    if not ValidateCode(lModSupplier.SuplierMerchanGroups[i]) then
    Exit;

    if lModSupplier.SuplierMerchanGroups[i].SUPMG_IS_DIF_CONTACT = 0 then
    begin
      lModSupplier.SuplierMerchanGroups[i].SUPMG_ADDRESS := lModSupplier.SUP_ADDRESS;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_CITY := lModSupplier.SUP_CITY;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_TELP := lModSupplier.SUP_TELP;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_FAX := lModSupplier.SUP_FAX;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_POST_CODE := lModSupplier.SUP_POST_CODE;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_CONTACT_PERSON := lModSupplier.SUP_CONTACT_PERSON;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_EMAIL := lModSupplier.SUP_EMAIL;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_TITLE := lModSupplier.SUP_TITLE;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_BANK_ACCOUNT_NO := lModSupplier.SUP_BANK_ACCOUNT_NO;
      lModSupplier.SuplierMerchanGroups[i].BANK := lModSupplier.BANK;
      lModSupplier.SuplierMerchanGroups[i].SUPMG_BANK_ACCOUNT_NAME := lModSupplier.SUP_BANK_ACCOUNT_NAME;
    end;

    Result := True;

  end;

end;

function TCrudSupplier.ValidateCodeOnObject(AObject: TModApp): Boolean;
var
  lModSupplier: TModSuplier;
  I: Integer;
  j: Integer;
begin
  lModSupplier := TModSuplier(AObject);
  for I := 0 to lModSupplier.SuplierMerchanGroups.Count - 1 do
  begin
    for j := i + 1 to lModSupplier.SuplierMerchanGroups.Count - 1 do
    begin
      if lModSupplier.SuplierMerchanGroups[i].SUPMG_SUB_CODE = lModSupplier.SuplierMerchanGroups[j].SUPMG_SUB_CODE then
      begin
        raise Exception.Create('Kode Supplier Merchandise Group Double : ' + lModSupplier.SuplierMerchanGroups[i].SUPMG_SUB_CODE);
      end;
    end;
  end;

  Result := True;
end;

procedure TBaseServerClass.AfterExecuteMethod;
begin
  if CloseSession then
    GetInvocationMetaData.CloseSession := True;
end;

function TCrudDO.AfterSaveToDB(AObject: TModApp): Boolean;
begin
  inherited;

  Result := False;

  if UpdateStatusPO(AObject) then
    Result := True;

end;

function TCrudDO.BeforeSaveToDB(AObject: TModApp): Boolean;
begin
  Result := False;

  if IsPOSudahDO(TModDO(AObject)) then
  begin
    raise Exception.Create('PO Sudah diterima dengan DO yang lain');
  end;


  with AObject as TModDO do
  begin
    if (AObject.ID = '') then
    begin
      DO_NP := GenerateNP(TModDO(AObject));
      if DO_NP = '' then
        Exit;
    end;
  end;

  Result := True;
end;

function TCrudDO.GenerateNP(AModDO: TModDO): string;
var
  iCounter: Integer;
  sSQL: string;
begin
  Result := 'M' + FormatDateTime('YYMMDD', AModDO.DO_DATE);

  sSQL   := 'select right(MAX(DO_NP),3) as NP from DO ' +
            ' where DO_NP like ' + QuotedStr(Result + '%');

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      if Fields[0].IsNull then
        iCounter := 0
      else
        iCounter := StrToIntDef(Fields[0].AsString,0);

      iCounter := iCounter + 1;
      Result   := Result + RightStr('000' + IntToStr(iCounter),3);
    finally
      Free;
    end;
  end;
end;

function TCrudDO.IsPOSudahDO(ADO : TModDO): Boolean;
var
  sSQL: string;
begin
  Result := False;

  sSQL   := 'select COUNT(a.PO_ID) from PO a ' +
            ' inner join DO b on a.PO_ID = b.PO_ID ' +
            ' where a.PO_ID = ' + QuotedStr(ADO.PO.ID);

  if ADO.ID <> '' then
    sSQL := sSQL + ' and b.DO_ID <> ' + QuotedStr(ADO.ID);

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      if Fields[0].AsInteger > 0 then
        Result := True;
    finally
      Free;
    end;
  end;



end;

function TCrudDO.RetrieveByPO(APONO : String): TModDO;
var
  sIDDO: string;
  sSQL: string;
begin
  Result := nil;

  sSQL   := 'select a.DO_ID from DO a ' +
            ' inner join PO b on a.PO_ID = b.PO_ID' +
            ' where b.PO_NO = ' + QuotedStr(APONO);

  sIDDO := '';
  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      while not Eof do
      begin
        sIDDO := FieldByName('DO_ID').AsString;
        Next;
      end;
    finally
      Free;
    end;
  end;

  if sIDDO = '' then
    Exit;

  Result := TModDO(Retrieve(TModDO.ClassName, sIDDO));
end;

function TCrudDO.UpdateStatusPO(AObject: TModApp): Boolean;
var
  sSQL: string;
begin
  try
    sSQL := 'update a set a.REF$STATUS_PO_ID = (select REF$STATUS_PO_ID from REF$STATUS_PO' +
            ' where STAPO_NAME = ''GENERATED'') from PO a' +
            ' left join DO b on a.PO_ID = b.PO_ID' +
            ' left join REF$STATUS_PO c on a.REF$STATUS_PO_ID = c.REF$STATUS_PO_ID' +
            ' where b.PO_ID is null' +
            ' and c.STAPO_NAME not in (''CANCEL'',''CLOSE'')';

    TDBUtils.ExecuteSQL(sSQL, False);

    sSQL := 'update a set a.REF$STATUS_PO_ID = (select REF$STATUS_PO_ID from REF$STATUS_PO' +
            ' where STAPO_NAME = ''RECEIVED'') from PO a' +
            ' inner join DO b on a.PO_ID = b.PO_ID' +
            ' where b.do_id = ' + QuotedStr(AObject.ID);

    TDBUtils.ExecuteSQL(sSQL, False);
    Result := True;
  except
    Result := False;
  end;


end;

function TCrudCNRecv.AfterSaveToDB(AObject: TModApp): Boolean;
var
  i: Integer;
  lCN: TModCNRecv;
  lSS: TStrings;
begin
  lCN := TModCNRecv(AObject);
  lSS := TStringList.Create;
  Try
    for i := 0 to lCN.CNR_CNRDITEMS.Count-1 do
    begin
      lSS.Append(
        'Update ' + TModDOItem.GetTableName
        + ' Set DOD_QTY_ORDER_RECV_CN = DOD_QTY_ORDER_RECV_CN + '
        + FloatToStr(lCN.CNR_CNRDITEMS[i].CNRD_QTY)
        + ' Where PO_DETAIL_ID = ' + QuotedStr(lCN.CNR_CNRDITEMS[i].PO_DETAIL.ID) + ';'
      );
    end;
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
  Result := True;
end;

function TCrudCNRecv.BeforeDeleteFromDB(AObject: TModApp): Boolean;
begin
  Result := self.BeforeSaveToDB(AObject);
end;

function TCrudCNRecv.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  i: Integer;
  lAppClass: TModAppClass;
  lOldCN: TModCNRecv;
  lSS: TStrings;
begin
  if AObject.ID = '' then
  begin
    Result := True;
    exit;
  end;
  lAppClass := TModAppClass(AObject.ClassType);

  lOldCN := Self.Retrieve(lAppClass, TModCNRecv(AObject).ID) as TModCNRecv;
  lSS := TStringList.Create;

  Try
    for i := 0 to lOldCN.CNR_CNRDITEMS.Count-1 do
    begin
      lSS.Append(
        'Update ' + TModDOItem.GetTableName
        + ' Set DOD_QTY_ORDER_RECV_CN = DOD_QTY_ORDER_RECV_CN - '
        + FloatToStr( lOldCN.CNR_CNRDITEMS[i].CNRD_QTY)
        + ' Where PO_DETAIL_ID = ' + QuotedStr(lOldCN.CNR_CNRDITEMS[i].PO_DETAIL.ID) + ';'
      );
    end;
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
  Result := True;
end;

function TCrudDNRecv.AfterSaveToDB(AObject: TModApp): Boolean;
var
  i: Integer;
  lDN: TModDNRecv;
  lSS: TStrings;
begin
  lDN := TModDNRecv(AObject);
  lSS := TStringList.Create;
  Try
    for i := 0 to lDN.DNR_DNRDITEMS.Count-1 do
    begin
      lSS.Append(
        'Update ' + TModDOItem.GetTableName
        + ' Set DOD_QTY_ORDER_RECV_DN = DOD_QTY_ORDER_RECV_DN + '
        + FloatToStr(lDN.DNR_DNRDITEMS[i].DNRD_QTY)
        + ' Where PO_DETAIL_ID = ' + QuotedStr(lDN.DNR_DNRDITEMS[i].PO_DETAIL.ID) + ';'
      );
    end;
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
  Result := True;
end;

function TCrudDNRecv.BeforeDeleteFromDB(AObject: TModApp): Boolean;
begin
  Result := self.BeforeSaveToDB(AObject);
end;

function TCrudDNRecv.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  i: Integer;
  lAppClass: TModAppClass;
  lOldDN: TModDNRecv;
  lSS: TStrings;
begin
  if AObject.ID = '' then
  begin
    Result := True;
    exit;
  end;
  lAppClass := TModAppClass(AObject.ClassType);

  lOldDN := Self.Retrieve(lAppClass, TModDNRecv(AObject).ID) as TModDNRecv;
  lSS := TStringList.Create;

  Try
    for i := 0 to lOldDN.DNR_DNRDITEMS.Count-1 do
    begin
      lSS.Append(
        'Update ' + TModDOItem.GetTableName
        + ' Set DOD_QTY_ORDER_RECV_DN = DOD_QTY_ORDER_RECV_DN - '
        + FloatToStr( lOldDN.DNR_DNRDITEMS[i].DNRD_QTY)
        + ' Where PO_DETAIL_ID = ' + QuotedStr(lOldDN.DNR_DNRDITEMS[i].PO_DETAIL.ID) + ';'
      );
    end;
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
  Result := True;
end;

function TCrudSettingApp.RetrieveByCabang(ACabang : TModUnit): TModSettingApp;
var
  sSQL: string;
begin
  Result := TModSettingApp.Create;

  if ACabang = nil then
    Exit;

  sSQL   := 'select SETTINGAPP_ID from SETTINGAPP' +
            ' where AUT$UNIT_ID = ' + QuotedStr(ACabang.ID);

  with TDBUtils.OpenQuery(sSQL) do
  begin
    try
      if Fields[0].AsString <> '' then
      begin
        FreeAndNil(Result);
        Result := TModSettingApp(Retrieve(TModSettingApp.ClassName, Fields[0].AsString));
      end;
    finally
      Free;
    end;
  end;
end;

function TCrudQuotation.ActivateQuotation(AModQuotation: TModQuotation): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  lSS := Self.GenerateActivateSQL(AModQuotation);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);
      TDBUtils.Commit;
      Result := True;
      AfterExecuteMethod;
    except
      lSS.SaveToFile(AModQuotation.ClassName + '_ErrorSQL.log');
      TDBUtils.RollBack;
      raise;
    End;
  Finally
    lSS.Free;
  End;
end;

function TCrudQuotation.GenerateActivateSQL(AModQuotation: TModQuotation): TStrings;
var
  i: Integer;
  lBHJ: TModBarangHargaJual;
  lBS: TModBarangSupplier;
  lDetail: TModQuotationDetail;
begin
  Result := TStringList.Create;

  //harga beli - header
  for i := 0 to AModQuotation.Details.Count-1 do
  begin
    lDetail := AModQuotation.Details[i];
    if lDetail.IsSellingPrice = 1 then continue;
    lBS := Self.Retrieve(TModBarangSupplier, lDetail.BarangSupplier.ID) as TModBarangSupplier;
    lBHJ := TModBarangHargaJual.Create;
    Try
      lDetail.SetBarangSupplier(lBS);
      Result.Add('Update '+lBS.GetTableName + ' set BRGSUP_IS_PRIMARY = 0 where barang_id = ' + QuotedStr(lDetail.Barang.ID));
      Result.Add(TDBUtils.GetSQLUpdate(lBS));
      Result.Add(Format(SQL_Delete,[lBHJ.GetTableName, lBHJ.GetHeaderField + '=' + QuotedStr(lDetail.Barang.ID)]) );

      //PR

    Finally
      FreeAndNil(lBS);
      FreeAndNil(lBHJ);
    End;
  end;


  for i := 0 to AModQuotation.Details.Count-1 do
  begin
    lDetail := AModQuotation.Details[i];
    if lDetail.IsSellingPrice <> 1 then continue;
    lBHJ := TModBarangHargaJual.Create;
    Try
      lDetail.SetBarangHargaJual(lBHJ);
      Result.Add(TDBUtils.GetSQLInsert(lBHJ));
    Finally
      FreeAndNil(lBHJ);
    End;
  end;
  AModQuotation.IsProcessed := 1;
  Result.Add(TDBUtils.GetSQLUpdate(AModQuotation));

end;

function TCrudClaimFaktur.AfterSaveToDB(AObject: TModApp): Boolean;
begin
  UpdateIsClaim(1, TModClaimFaktur(AObject));
  Result := True;
end;

function TCrudClaimFaktur.BeforeDeleteFromDB(AObject: TModApp): Boolean;
var
  lClaim: TModClaimFaktur;
  lCrud: TCrud;
begin
  lClaim := TModClaimFaktur(AObject);
  if not Assigned(lClaim.CLM_AP) then
  begin
    Result := True;
    exit;
  end;
  lCrud := TCrud.Create(Self);
  Try
    UpdateIsClaim(0, lClaim);
    Result := lCrud.DeleteFromDBTrans(lClaim.CLM_AP, False);
  Finally
    lCrud.Free;
  End;
end;

function TCrudClaimFaktur.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  lClaim: TModClaimFaktur;
  lCrud: TCrud;
begin
  lClaim := TModClaimFaktur(AObject);
  lClaim.UpdateAP; //lCLAIM.CLM_AP.ID set here
  //avoid recalling BeforeSaveToDB

  lCrud := TCrud.Create(Self);
  Try
    UpdateIsClaim(0, lClaim);
    Result := lCrud.SaveToDBTrans(lClaim.CLM_AP, False);
  Finally
    lCrud.Free;
  End;
end;

function TCrudClaimFaktur.GenerateUpdateIsClaim(IsClaim: Integer; AClaim:
    TModClaimFaktur): TStrings;
var
  lStatusPO: string;
begin
  Result := TStringList.Create;

  Result.Append(
    'UPDATE C SET C.DO_IS_CLAIM = ' + IntToStr(IsClaim)
    + ' FROM CLAIMFAKTUR A'
    + ' INNER JOIN CLAIMFAKTURITEMDO B ON A.CLAIMFAKTUR_ID = B.CLMD_DO_CLAIMFAKTUR_ID'
    + ' INNER JOIN DO C ON B.CLMD_DO_ID = C.DO_ID'
    + ' WHERE A.CLAIMFAKTUR_ID=' + QuotedStr(AClaim.ID)
  );

  if (IsClaim = 1) then
    lStatusPO := PO_STATUS_CODE_CLAIM
  else
    lStatusPO := PO_STATUS_CODE_RECV;

  Result.Append(
    'UPDATE C SET C.REF$STATUS_PO_ID = '
    + ' (SELECT TOP 1 REF$STATUS_PO_ID FROM REF$STATUS_PO WHERE STAPO_CODE = '
    + QuotedStr(lStatusPO) + ')'
    + ' FROM CLAIMFAKTUR A'
    + ' INNER JOIN CLAIMFAKTURITEMDO B ON A.CLAIMFAKTUR_ID = B.CLMD_DO_CLAIMFAKTUR_ID'
    + ' INNER JOIN PO C ON B.CLMD_DO_PO_ID = C.PO_ID'
    + ' WHERE A.CLAIMFAKTUR_ID=' + QuotedStr(AClaim.ID)
  );

  Result.Append(
    'UPDATE C SET C.CNR_IS_CLAIM = ' + IntToStr(IsClaim)
    + ' FROM CLAIMFAKTUR A'
    + ' INNER JOIN CLAIMFAKTURITEMCN B ON A.CLAIMFAKTUR_ID = B.CLMD_CN_CLAIMFAKTUR_ID'
    + ' INNER JOIN CN_RECV C ON B.CLMD_CN_CNRECV_ID = C.CN_RECV_ID'
    + ' WHERE A.CLAIMFAKTUR_ID=' + QuotedStr(AClaim.ID)
  );

  Result.Append(
    'UPDATE C SET C.DNR_IS_CLAIM = ' + IntToStr(IsClaim)
    + ' FROM CLAIMFAKTUR A'
    + ' INNER JOIN CLAIMFAKTURITEMDN B ON A.CLAIMFAKTUR_ID = B.CLMD_DN_CLAIMFAKTUR_ID'
    + ' INNER JOIN DN_RECV C ON B.CLMD_DN_DNRECV_ID = C.DN_RECV_ID'
    + ' WHERE A.CLAIMFAKTUR_ID=' + QuotedStr(AClaim.ID)
  );


  Result.Append(
    'UPDATE C SET C.CONT_IS_CLAIM = ' + IntToStr(IsClaim)
    + ' FROM CLAIMFAKTUR A'
    + ' INNER JOIN CLAIMFAKTURITEMCS B ON A.CLAIMFAKTUR_ID = B.CLMD_CS_CLAIMFAKTUR_ID'
    + ' INNER JOIN CONTRABON_SALES C ON B.CLMD_CS_CONTRABON_ID = C.CONTRABON_SALES_ID'
    + ' WHERE A.CLAIMFAKTUR_ID=' + QuotedStr(AClaim.ID)
  );
end;

procedure TCrudClaimFaktur.UpdateIsClaim(IsClaim: Integer; aClaim:
    TModClaimFaktur);
var
  lSS: TStrings;
begin
  if (aClaim.ID = '') then exit;
  lSS := GenerateUpdateIsClaim(IsClaim, aClaim);
  Try
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
end;

function TCrudBankCashOut.AfterSaveToDB(AObject: TModApp): Boolean;
begin
  Result := UpdateAPTerbayar(TModBankCashOut(AObject), True);
  if Result then
    Result := UpdateARTerbayar(TModBankCashOut(AObject), True);
end;

function TCrudBankCashOut.BeforeDeleteFromDB(AObject: TModApp): Boolean;
begin
  Result := UpdateAPTerbayar(TModBankCashOut(AObject), False);
  if Result then
    Result := UpdateARTerbayar(TModBankCashOut(AObject), False);
end;

function TCrudBankCashOut.BeforeSaveToDB(AObject: TModApp): Boolean;
begin
  if AObject.ID = '' then
    TModBankCashOut(AObject).BCO_NoBukti := 'BKK-' + GenerateNo(TModBankCashOut.ClassName);

  Result := UpdateAPTerbayar(TModBankCashOut(AObject), False);

  if Result then
    Result := UpdateARTerbayar(TModBankCashOut(AObject), False);
end;

function TCrudBankCashOut.UpdateAPTerbayar(AModBankCashOut : TModBankCashOut;
    AIsTambah : Boolean): Boolean;
var
  sFilterID: string;
  sOperator: string;
  sSQL: string;
begin
  if AModBankCashOut.ID = '' then
    sFilterID := 'newid()'
  else
    sFilterID := QuotedStr(AModBankCashOut.ID);

  if AIsTambah then
    sOperator := ' + '
  else
    sOperator := ' - ';


  sSQL := ' update a set a.AP_PAID = a.AP_PAID ' + sOperator + ' b.BCOAP_Nominal ' +
          ' from ap a' +
          ' INNER JOIN BankCashOutAPItem b on b.BCOAP_AP_ID = a.AP_ID ' +
          ' where b.BCOAP_BankCashOut_ID = ' + sFilterID;

  try
    TDBUtils.ExecuteSQL(sSQL);
    Result := True;
  except
    raise
  end;


end;

function TCrudBankCashOut.UpdateARTerbayar(AModBankCashOut : TModBankCashOut;
    AIsTambah : Boolean): Boolean;
var
  sFilterID: string;
  sOperator: string;
  sSQL: string;
begin
  if AModBankCashOut.ID = '' then
  begin
    Result := True;
    exit;
  end;

  sFilterID := QuotedStr(AModBankCashOut.ID);

  if AIsTambah then
    sOperator := ' + '
  else
    sOperator := ' - ';


  sSQL := ' update a set a.AR_PAID = a.AR_PAID ' + sOperator + ' b.BCOAR_Nominal ' +
          ' from aR a' +
          ' INNER JOIN BankCashOutARItem b on b.BCOAR_AR_ID = a.AR_ID ' +
          ' where b.BCOAR_BankCashOut_ID = ' + sFilterID;

  try
    TDBUtils.ExecuteSQL(sSQL);
    Result := True;
  except
    raise
  end;


end;

function TCrudAdjFaktur.AfterSaveToDB(AObject: TModApp): Boolean;
var
  lAdj: TModAdjustmentFaktur;
  lSS: TStrings;
begin
  lAdj := TModAdjustmentFaktur(AObject);
  lSS := TStringList.Create;
  Try
    lSS.Append(
        'Update ' + TModDO.GetTableName
        + ' Set DO_ADJUSTMENT = ' + FloatToStr(lAdj.ADJFAK_TOTAL_ADJ)
        + ' , DO_ADJUSTMENT_PPN = ' + FloatToStr(lAdj.ADJFAK_PPN_ADJ)
        + ' , DO_ADJUSTMENT_DISC = ' + FloatToStr(lAdj.ADJFAK_DISC_ADJ)
        + ' Where DO_ID = ' + QuotedStr(lAdj.ADJFAK_DO.ID) + ';'
      );
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
  Result := True;
end;

function TCrudAdjFaktur.BeforeDeleteFromDB(AObject: TModApp): Boolean;
var
  lAdj: TModAdjustmentFaktur;
  lSS: TStrings;
begin
  if AObject.ID = '' then
  begin
    Result := True;
    exit;
  end;

  lAdj := TModAdjustmentFaktur(AObject);
  lSS := TStringList.Create;
  Try
    lSS.Append(
        'Update B Set B.DO_ADJUSTMENT = 0'
        + ' , B.DO_ADJUSTMENT_PPN = 0'
        + ' , B.DO_ADJUSTMENT_DISC = 0'
        + ' FROM ADJUSTMENT_FAKTUR A'
        + ' INNER JOIN DO B ON A.DO_ID=B.DO_ID'
        + ' Where A.ADJUSTMENT_FAKTUR_ID = ' + QuotedStr(lAdj.ID) + ';'
      );
    TDBUtils.ExecuteSQL(lSS, False);
  Finally
    lSS.Free;
  End;
  Result := True;
end;

function TCrudAdjFaktur.BeforeSaveToDB(AObject: TModApp): Boolean;
begin
  Result := BeforeDeleteFromDB(AObject);
end;

function TCrudUpdatePOS.RetreiveSyncronData(ModClassName, aFilter: string):
    TDataSet;
var
  lClass: TModAppClass;
  sSQL: string;
begin
  lClass := Self.StringToClass(ModClassName);
  If not Assigned(lClass) then
    Raise Exception.Create('Class ' + ModClassName + ' not found');

  sSQL := ' select * from ' + lClass.GetTableName;
  if aFilter <> '' then
    sSQL := sSQL + ' where ' + aFilter;

  Result := TDBUtils.OpenQuery(sSQL);
  AfterExecuteMethod;
end;

function TCrudUpdatePOS.SinkronToDB(AObject: TModApp): Boolean;
var
  lSS: TStrings;
begin
  Result := False;
  if not ValidateCode(AObject) then exit;
  lSS := TDBUtils.GenerateSQL(AObject, True);
  Try
    Try
      TDBUtils.ExecuteSQL(lSS, False);

      TDBUtils.Commit;
      Result := True;
    except
      lSS.SaveToFile(AObject.ClassName + '_ErrorSQL.log');
      TDBUtils.RollBack;
      raise;
    End;
  Finally
//    AObject.Free;
    lSS.Free;
    AfterExecuteMethod;
  End;
end;

function TCrudUpdatePOS.UpdateToDB(aDS: TDataSet; ModClassName: string):
    Boolean;
var
  lMod: TModApp;
begin
  Result := False;
  lMod   := Retrieve(ModClassName, '00000000-0000-0000-0000-000000000000');

  try
    while not aDS.Eof do
    begin
      TDBUtils.LoadFromDataset(lMod, aDS, False);
      if not SinkronToDB(lMod) then
        Exit;

      aDS.Next
    end;
    Result := True;
  finally
    lMod.Free;
    AfterExecuteMethod;
  end;
end;

function TCrudContrabonSales.IsTanggalSudahDiinput(AModContrabonSales :
    TModContrabonSales): Boolean;
var
  sID: string;
  sSQL: string;
begin
  Result := False;

  if AModContrabonSales = nil then
    Exit;

  if AModContrabonSales.ID = '' then
    sID := 'newid()'
  else
    sID := QuotedStr(AModContrabonSales.ID);

  sSQL := 'select count(CONTRABON_SALES_ID) ' +
          ' from CONTRABON_SALES ' +
          ' where CONT_ORGANIZATION_ID = ' + QuotedStr(AModContrabonSales.CONT_ORGANIZATION.ID) +
          ' and CONTRABON_SALES_ID <> ' + sID +
          ' and CONT_DATE_SALES between ' + TDBUtils.QuotDt(StartOfTheDay(AModContrabonSales.CONT_DATE_SALES))  +
          ' and ' + TDBUtils.QuotDt(EndOfTheDay(AModContrabonSales.CONT_DATE_SALES));

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      if Fields[0].AsInteger > 0 then
        Result := True;
    finally
      Free;
    end;
  end;
end;

function TJSONCRUD.GetCRUD: TCrud;
begin
  if not Assigned(FCRUD) then
    FCRUD := TCrud.Create(Self);
  Result := FCRUD;
end;

function TJSONCRUD.TestGet: TJSONObject;
var
  lModCNR : TModCNRecv;
  sID: string;
begin
  sID := 'D21144E2-31DF-4995-BECC-4D0E5DD1DB48';
  lModCNR := Self.CRUD.Retrieve(TModCNRecv.ClassName, sID) as TModCNRecv;
  try
    Result := TJSONUtils.ModelToJSON(lModCNR);
  finally
    lModCNR.Free;
  end;
end;

function TJSONCRUD.TestPost: TJSONObject;
var
  lJSO: TJSONObject;
  lModCNR : TModCNRecv;
  lModCNRConvert: TModCNRecv;
  sID: string;
begin
  sID := 'D21144E2-31DF-4995-BECC-4D0E5DD1DB48';
  lModCNR := Self.CRUD.Retrieve(TModCNRecv.ClassName, sID) as TModCNRecv;
  lModCNRConvert := nil;
  try
    lJSO := TJSONUtils.ModelToJSON(lModCNR);
    //convert back to Object
    lModCNRConvert := TJSONUtils.JSONToModel(lJSO, TModCNRecv) as TModCNRecv;
    Result := TJSONUtils.ModelToJSON(lModCNRConvert);
  finally
    FreeAndNil(lModCNRConvert);
    lModCNR.Free;
  end;
end;

function TJSONCRUD.TestDataset: TJSONArray;
var
  lDS: TDataSet;
  S: string;
begin
  S := 'select REF$AGAMA_ID, AGAMA_NAME from REF$AGAMA';
  lDS := TDBUtils.OpenQuery(S);
  Result := TJSONUtils.DataSetToJSON(lDS);
end;

function TJSONCRUD.Retrieve(AClassName, AID: String): TJSONObject;
var
  lModApp: TModApp;
begin
  lModApp := Self.CRUD.Retrieve(AClassName, AID);
  try
    Result := TJSONUtils.ModelToJSON(lModApp);
  finally
    lModApp.Free;
  end;
end;

function TJSONCRUD.SaveToDB(AJSON: TJSONObject): TJSONObject;
var
  AClassName: string;
  lClass: TModAppClass;
  LJSVal: TJSONValue;
  lModApp: TModApp;
begin
//  LJSVal  := AJSON.GetValue('ClassName');
  lJSVal := TJSONUtils.GetValue(AJSON, 'ClassName');
  if LJSVal = nil then
    Raise Exception.Create('ClassName can''t be found in JSON Body');
  AClassName := LJSVal.Value;
  lClass  := StringToClass(AClassName);
  lModApp := TJSONUtils.JSONToModel(AJSON, lClass);
  Self.CRUD.SaveToDB(lModApp);
  try
    Result := TJSONUtils.ModelToJSON(lModApp);
  finally
    lModApp.Free;
  end;
end;

function TJSONCRUD.StringToClass(ModClassName: string): TModAppClass;
var
  ctx: TRttiContext;
  typ: TRttiType;
  list: TArray<TRttiType>;
begin
  Result := nil;
  ctx := TRttiContext.Create;
  list := ctx.GetTypes;
  for typ in list do
  begin
    if typ.IsInstance and (EndsText(ModClassName, typ.Name)) then
    begin
      Result := TModAppClass(typ.AsInstance.MetaClassType);
      break;
    end;
  end;
  ctx.Free;
end;

function TJSONCRUD.TestNativeGet: TModApp;
var
  sID: string;
begin
  sID := 'D21144E2-31DF-4995-BECC-4D0E5DD1DB48';
  Result := Self.CRUD.Retrieve(TModCNRecv.ClassName, sID);
end;

function TCrudCustomerInvoice.BeforeDeleteFromDB(AObject: TModApp): Boolean;
var
  lCI: TModCustomerInvoice;
  lcrud: TCrud;
begin
  Result := False;

  if AObject = nil then
    Exit;

  lCI := TModCustomerInvoice(AObject);

  lcrud := TCrud.Create(nil);
  try
    if not lcrud.DeleteFromDBTrans(lCI.CI_AR, False) then
      Exit;
  finally
    lcrud.Free;
  end;

  Result := True;
end;

function TCrudCustomerInvoice.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  lCI: TModCustomerInvoice;
  lcrud: TCrud;
begin

  Result := False;

  if AObject = nil then
    Exit;

  lCI := TModCustomerInvoice(AObject);

  if lCI.ID = '' then
    lCI.CI_NOBUKTI := 'CI-' + GenerateNo(TModCustomerInvoice.ClassName);

  if lCI.CI_AR = nil then
  begin
    lCI.CI_AR := TModAR.Create;
  end;

  lCI.CI_AR.AR_ClassRef     := TModCustomerInvoice.ClassName;
  lCI.CI_AR.AR_Description  := lCI.CI_Description;
  lCI.CI_AR.AR_DueDate      := lCI.CI_TRANSDATE + 7;
  lCI.CI_AR.AR_ORGANIZATION := TModOrganization.CreateID(lCI.CI_ORGANIZATION.ID);
  lCI.CI_AR.AR_REFNUM       := lCI.CI_NOBUKTI;
  lCI.CI_AR.AR_REKENING     := TModRekening.CreateID(lCI.CI_REKENING.ID);
  lCI.CI_AR.AR_TRANSDATE    := lCI.CI_TRANSDATE;
  lCI.CI_AR.AR_TOTAL        := lCI.CI_TOTAL;

  if lCI.CI_AR.AR_PAID > 0then
    raise Exception.Create('Invoice Sudah Terbayar, Tidak Bisa Diedit');


  lcrud := TCrud.Create(nil);
  try
    if lcrud.SaveToDBTrans(lCI.CI_AR, False) then
      Result := True;
  finally
    lcrud.Free;
  end;
end;

function TCrudBarangHargaJual.AfterSaveToDB(AObject: TModApp): Boolean;
var
  sSQL: string;
begin
  sSQL := ' update BHJ set BHJ.BHJ_BRG_ID = B.BRG_ID '+
          ' from ' + TModBarangHargaJual.GetTableName + ' BHJ ' +
          ' INNER JOIN ' + TModBarang.GetTableName + ' B on B.BARANG_ID = BHJ.BARANG_ID ' +
          ' where BHJ.BARANG_HARGA_JUAL_ID = ' + TModBarangHargaJual(AObject).ID;
  try
    TDBUtils.ExecuteSQL(sSQL);
    Result := True;
  except
    raise
  end;
end;

function TCrudBarangHargaJual.RetrieveByBarcode(aBarcode, aUoM: string):
    TModBarangHargaJual;
var
  sSQL: string;
begin
  Result := TModBarangHargaJual.Create;

  if aUoM = '' then
  begin
    sSQL := 'select A.BARANG_HARGA_JUAL_ID ID ' +
            ' from BARANG_HARGA_JUAL A INNER JOIN REF$KONVERSI_SATUAN B ' +
            ' on A.BARANG_ID = B.BARANG_ID AND A.REF$SATUAN_ID = B.REF$SATUAN_ID ' +
            ' where B.KONVSAT_BARCODE = ' + QuotedStr(aBarcode);
  end else
  begin
    sSQL := 'select A.BARANG_HARGA_JUAL_ID ID ' +
            ' from BARANG_HARGA_JUAL A INNER JOIN BARANG B' +
            ' on A.BARANG_ID = B.BARANG_ID' +
            ' where B.BRG_CODE = ' + QuotedStr(aBarcode) +
            ' and A.REF$SATUAN_ID =  ' + QuotedStr(aUoM);
  end;

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      while not Eof do
      begin
        Result.Free;

        Result := TModBarangHargaJual(Retrieve(TModBarangHargaJual, FieldByName('ID').AsString));
        Next;
      end;
    finally
      Free;
    end;
  end;
end;

function TCrudBarangHargaJual.RetrieveByPLU(AModBarang : TModBarang; AModUOM :
    TModSatuan): TModBarangHargaJual;
var
  sSQL: string;
begin
  Result := TModBarangHargaJual.Create;

  if (AModUOM = nil) or (AModBarang = nil) then
    Exit;

  if (AModUOM.ID = '') or (AModBarang.ID = '') then
    Exit;

  sSQL := 'select BARANG_HARGA_JUAL_ID from BARANG_HARGA_JUAL  ' +
          ' where BARANG_ID = ' + QuotedStr(AModBarang.ID) +
          ' and REF$SATUAN_ID =  ' + QuotedStr(AModUOM.ID);

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      while not Eof do
      begin
        Result.Free;

        Result := TModBarangHargaJual(Retrieve(TModBarangHargaJual, FieldByName('BARANG_HARGA_JUAL_ID').AsString));
        Next;
      end;
    finally
      Free;
    end;
  end;
end;

function TCrudKuponBotol.GenerateCustomNo(aTableName, aFieldName: string;
    aCountDigit: Integer = 11): String;
var
  i: Integer;
  lNum: Integer;
  S: string;
begin
  aCountDigit := 3;
  lNum := 0;
  S := 'select max(' + aFieldName + ') from ' + aTableName
    + ' where dbo.DateOnly(TKB_DATE) = dbo.DateOnly(GETDATE())';
  with TDBUtils.OpenQuery(S) do
  begin
    Try
      if not eof then
        TryStrToInt(RightStr(Fields[0].AsString, aCountDigit), lNum);
    Finally
      Free;
    End;
  end;
  inc(lNum);
  Result := IntToStr(lNum);
  for i := 0 to aCountDigit-1 do Result := '0' + Result;
  Result := 'RB' + FormatDateTime('yyMMdd',Now) + RightStr(Result, aCountDigit);

  AfterExecuteMethod;
end;

function TCRUDJurnal.GenerateCustomNo(aTableName, aFieldName: string;
    aCountDigit: Integer = 11): String;
var
  i: Integer;
  lMonth: string;
  lNum: Integer;
  lPrefix: string;
  lTahun: string;
  S: string;
begin
  aCountDigit := 4;
  lNum := 0;
  lTahun := FormatDateTime('YYYY', Now());
  lMonth := FormatDateTime('MM', Now());
  lPrefix := 'JM.' + lTahun + '.' + lMonth + '.' ;

  S := 'select max(' + aFieldName + ') from ' + aTableName
      + ' where ' + aFieldName + ' like '+  QuotedStr(lPrefix + '%');

  with TDBUtils.OpenQuery(S) do
  begin
    Try
      if not eof then
        TryStrToInt( RightStr(Fields[0].AsString, aCountDigit), lNum);
    Finally
      free;
    End;
  end;
  inc(lNum);

  Result := IntToStr(lNum);
  for i := 0 to aCountDigit-1 do Result := '0' + Result;
  Result := lPrefix +  RightStr(Result, aCountDigit);

  AfterExecuteMethod;
end;

function TCrudBarang.RetrieveByCodeBHJUOM(ModClassName, aCode: string):
    TModBarang;
var
  Q: TClientDataset;
  sSQL: string;
begin
  Result := inherited RetrieveByCode(ModClassName, aCode) as TModBarang;

  sSQL   := 'select distinct SAT_CODE from V_BARANG_HARGA_JUAL ' +
            ' where BRG_CODE = ' + QuotedStr(aCode);

  Result.UntaianUOMBHJ := '';

  Q := TDBUtils.OpenDataset(sSQL);
  try
    while not Q.Eof do
    begin
      if Result.UntaianUOMBHJ = '' then
        Result.UntaianUOMBHJ := Q.FieldByName('SAT_CODE').AsString
      else
        Result.UntaianUOMBHJ := Result.UntaianUOMBHJ + ',' + Q.FieldByName('SAT_CODE').AsString;

      Q.Next;
    end;
  finally
    Q.Free;
  end;


end;

function TCrudBarang.RetrievePOS(sPLUBarCode: string): TModBarang;
var
  Q: TFDQuery;
  S: string;
begin
  S := 'select A.* from BARANG A '
      +' INNER JOIN REF$KONVERSI_SATUAN B ON A.BARANG_ID = B.BARANG_ID'
      +' WHERE B.KONVSAT_BARCODE = ' + QuotedStr(sPLUBarCode);
  Q := TDBUtils.OpenQuery(S);
  Try
    if Q.Eof then
      Result := inherited RetrieveByCode(TModBarang.ClassName, sPLUBarCode) as TModBarang
    else
    begin
      Result := TModBarang.Create;
      TDBUtils.LoadFromDataset(Result, Q);
    end;
  Finally
    Q.Free;
  End;
end;

class function TCRUDObj.Retrieve<T>(aID: string; LoadObjectList: Boolean =
    True): T;
var
  lCRUD: TCrud;
  sClass: string;
begin
  lCRUD := TCRUD.Create(nil);
  Try
    if (T = nil) then
      Raise Exception.Create('Type can''t be nil')
    else if not TClass(T).InheritsFrom(TModApp) then
      Raise Exception.Create('Type must inherti from TObjectModel')
    else
    begin
      sClass := T.ClassName;
      if LoadObjectList then
        Result := T(lCRUD.Retrieve(sClass, aID))
      else
        Result := T(lCRUD.RetrieveSingle(sClass, aID));
    end;
  Finally
    FreeAndNil(lCRUD);
  End;
end;

class function TCRUDObj.RetrieveCode<T>(aCode: string): T;
var
  lCRUD: TCRUD;
  sClass: string;
begin
  lCRUD := TCRUD.Create(nil);
  Try
    if (T = nil) then
      Raise Exception.Create('Type can''t be nil')
    else if not TClass(T).InheritsFrom(TModApp) then
      Raise Exception.Create('Type must inherti from TObjectModel')
    else
    begin
      sClass := T.ClassName;
      Result := T(lCRUD.RetrieveByCode(sClass, aCode))
    end;
  Finally
    FreeAndNil(lCRUD);
  End;
end;

procedure TServerModAppHelper.CopyFrom(aModApp : TModApp);
var
  ctx: TRttiContext;
  i: Integer;
  lAppClass: TModAppClass;
  lNewItem: TModApp;
  lNewObjList: TObject;
  lSrcItem: TModApp;
  lSrcObjList: TObject;
  meth: TRttiMethod;
  RttiType: TRttiType;
  Prop: TRttiProperty;
  rtItem: TRttiType;
  sGenericItemClassName: string;
  value: TValue;

  function SetPropertyFrom(AProp: TRttiProperty; ASource: TModApp): TModApp;
  var
    lSrcObj: TObject;
  begin
    Result := nil;
    lSrcObj := Prop.GetValue(ASource).AsObject;
    if not prop.PropertyType.AsInstance.MetaclassType.InheritsFrom(TModApp) then exit;;
    meth    := prop.PropertyType.GetMethod('Create');
    Result  := TModApp(meth.Invoke(prop.PropertyType.AsInstance.MetaclassType, []).AsObject);
    if lSrcObj <> nil then
      TModApp(Result).CopyFrom(TModApp(lSrcObj));
  end;

begin
  RttiType := ctx.GetType(Self.ClassType);
  Try
    for Prop in RttiType.GetProperties do
    begin
      if not (Prop.IsReadable and Prop.IsWritable) then continue;
//      if prop.Visibility <> mvPublished then continue;

      If prop.PropertyType.TypeKind = tkClass then
      begin
        meth := prop.PropertyType.GetMethod('ToArray');
        if Assigned(meth) then  //object list
        begin
          lSrcObjList := prop.GetValue(aModApp).AsObject;
          lNewObjList := prop.GetValue(Self).AsObject;
          if lSrcObjList = nil then continue;

          value  := meth.Invoke(prop.GetValue(aModApp), []);
          Assert(value.IsArray);
          sGenericItemClassName := StringReplace(lSrcObjList.ClassName, 'TOBJECTLIST<','', [rfIgnoreCase]);
          sGenericItemClassName := StringReplace(sGenericItemClassName, '>','', [rfIgnoreCase]);
          rtItem := ctx.FindType(sGenericItemClassName);

          meth := prop.PropertyType.GetMethod('Add');
          if Assigned(meth) and Assigned(rtItem) then
          begin
            if not rtItem.AsInstance.MetaclassType.InheritsFrom(TModApp) then continue;
            lAppClass := TModAppClass( rtItem.AsInstance.MetaclassType );
            for i := 0 to value.GetArrayLength - 1 do
            begin
              lSrcItem := TModApp(value.GetArrayElement(i).AsObject);
              lNewItem := lAppClass.Create;
              lNewItem.CopyFrom(lSrcItem);
              meth.Invoke(lNewObjList,[lNewItem]);
            end;
          end;
          prop.SetValue(Self, lNewObjList);
        end
        else
        begin
          prop.SetValue(Self, SetPropertyFrom(prop, aModApp));
        end;
      end else
        Prop.SetValue(Self, Prop.GetValue(aModApp));
    end;
  except
    raise;
  End;
end;

procedure TServerModAppHelper.Reload(LoadObjectList: Boolean = False);
var
  lCRUD: TCRUD;
  lModApp: TModApp;
begin
  If Self.ID = '' then exit;
  lCRUD := TCRUD.Create(nil);
  try
    if LoadObjectList then
      lModApp := lCRUD.Retrieve(Self.ClassName, Self.ID)
    else
      lModApp := lCRUD.RetrieveSingle(Self.ClassName, Self.ID);

    Try
      Self.CopyFrom(lModApp);
    Finally
      lModApp.Free;
    End;
  finally
    FreeAndNil(lCRUD);
  end;
end;

function TCrudPOTrader.HasBarcode(aBarCode: string): Boolean;
var
  s: string;
begin
  s := 'select * from REF$KONVERSI_SATUAN '
      +' WHERE KONVSAT_BARCODE = ' + QuotedStr(aBarCode);
  with TDBUtils.OpenQuery(s) do
  begin
    try
      if not eof then
        Result := True
      else
        Result := False;
    finally
      Free;
    end;
  end;
end;

function TCrudCrazyPrice.RetrieveByBarcode(aBarcode: string): TModCrazyPrice;
var
  sSQL: string;
begin
  Result := TModCrazyPrice.Create;

  sSQL := 'select A.CRAZYPRICE_ID ID ' +
          ' from CRAZYPRICE A INNER JOIN REF$KONVERSI_SATUAN B ' +
          ' on A.CRAZY_BARANG_ID = B.BARANG_ID AND A.CRAZY_SATUAN_ID = B.REF$SATUAN_ID ' +
          ' where B.KONVSAT_BARCODE = ' + QuotedStr(aBarcode);

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      while not Eof do
      begin
        Result.Free;

        Result := TModCrazyPrice(Retrieve(TModCrazyPrice, FieldByName('ID').AsString));
        Next;
      end;
    finally
      Free;
    end;
  end;
end;

function TCrudCrazyPrice.RetrieveByPLU(aPLU: string): TModCrazyPrice;
var
  sSQL: string;
begin
  Result := TModCrazyPrice.Create;

  sSQL := 'select A.CRAZYPRICE_ID ID ' +
          ' from CRAZYPRICE A INNER JOIN REF$KONVERSI_SATUAN B ' +
          ' on A.CRAZY_BARANG_ID = B.BARANG_ID AND A.CRAZY_SATUAN_ID = B.REF$SATUAN_ID ' +
          ' where B.BARANG_ID = ' + QuotedStr(aPLU);

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      while not Eof do
      begin
        Result.Free;

        Result := TModCrazyPrice(Retrieve(TModCrazyPrice, FieldByName('ID').AsString));
        Next;
      end;
    finally
      Free;
    end;
  end;
end;

function TCrudKonversi.RetrieveByBarcode(aBarcode: string): TModKonversi;
var
  sSQL: string;
begin
  Result := TModKonversi.Create;

  sSQL := 'select REF$KONVERSI_SATUAN_ID from REF$KONVERSI_SATUAN ' +
          ' where KONVSAT_BARCODE = ' + QuotedStr(aBarcode);

  with TDBUtils.OpenDataset(sSQL) do
  begin
    try
      if not Eof then
      begin
        Result.Free;
        Result := TModKonversi(Retrieve(TModKonversi, FieldByName('REF$KONVERSI_SATUAN_ID').AsString));
      end;
    finally
      Free;
    end;
  end;
end;

function TCRUDTransferBarang.GenerateCustomNo(aTableName, aFieldName: string;
    aCountDigit: Integer = 11): String;
var
  i: Integer;
  lMonth: string;
  lNum: Integer;
  lPrefix: string;
  lTahun: string;
  S: string;
begin
  aCountDigit := 4;
  lNum := 0;
  lTahun := FormatDateTime('YYYY', Now());
  lMonth := FormatDateTime('MM', Now());
  lPrefix := 'TB.' + lTahun + '.' + lMonth + '.' ;

  S := 'select max(' + aFieldName + ') from ' + aTableName
      + ' where ' + aFieldName + ' like '+  QuotedStr(lPrefix + '%');

  with TDBUtils.OpenQuery(S) do
  begin
    Try
      if not eof then
        TryStrToInt( RightStr(Fields[0].AsString, aCountDigit), lNum);
    Finally
      free;
    End;
  end;
  inc(lNum);

  Result := IntToStr(lNum);
  for i := 0 to aCountDigit-1 do Result := '0' + Result;
  Result := lPrefix +  RightStr(Result, aCountDigit);

  AfterExecuteMethod;
end;

function TCRUDDOTrader.AfterSaveToDB(AObject: TModApp): Boolean;
var
  lDOTrader: TModDOTrader;
  S: string;
begin
  lDOTrader := TModDOTrader(AObject);
  if lDOTrader.DOT_POTrader = nil then
    Raise Exception.Create('lDOTrader.DOT_POTrader = nil');
  S := TDBUtils.GetSQLUpdate(lDOTrader.DOT_POTrader, 'POT_STATUS = ''DELIVERED'' ');
  TDBUtils.ExecuteSQL(S, False);
  Result := True;
end;

function TCRUDDOTrader.BeforeDeleteFromDB(AObject: TModApp): Boolean;
var
  lCRUD: TCrud;
  lDOTrader: TModDOTrader;
  S: string;
begin
  Result := False;
  lDOTrader := TModDOTrader(AObject);

  if lDOTrader.DOT_AR <> nil then
  begin
    lDOTrader.DOT_AR.Reload();
    if lDOTrader.DOT_AR.AR_PAID <> 0 then
      Raise Exception.Create('AR sudah dibayar , DO Trader tidak bisa dihapus');
  end;

  if lDOTrader.DOT_POTrader = nil then
    Raise Exception.Create('lDOTrader.DOT_POTrader = nil');
  S := TDBUtils.GetSQLUpdate(lDOTrader.DOT_POTrader, 'POT_STATUS = '''' ');
  TDBUtils.ExecuteSQL(S, False);

  lCRUD := TCrud.Create(nil);
  try
    if not lCRUD.DeleteFromDBTrans(lDOTrader.DOT_AR, False) then
      Exit;
  finally
    lCRUD.Free;
  end;

  Result := True;
end;

function TCRUDDOTrader.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  lcrud: TCrud;
  lDOTrader: TModDOTrader;
  lOrg: TModOrganization;
begin
  Result := False;
  lDOTrader := TModDOTrader(AObject);

  if lDOTrader = nil then
    Raise Exception.Create('DoTrader = nil at AfterSaveToDB ');
  if lDOTrader.DOT_Organization = nil then
    Raise Exception.Create('DO Trader Organization not definend');

  if lDOTrader.DOT_AR = nil then
    lDOTrader.DOT_AR := TModAR.Create;

  lcrud := TCrud.Create(nil);
  lOrg  := TModOrganization.CreateID(lDOTrader.DOT_Organization.ID);
  try

    lDOTrader.DOT_AR.AR_ClassRef     := lDOTrader.ClassName;
    lDOTrader.DOT_AR.AR_Description  := lDOTrader.DOT_DESCRIPTION;
    lDOTrader.DOT_AR.AR_DueDate      := lDOTrader.DOT_DATE + 7;   //???
    lDOTrader.DOT_AR.AR_ORGANIZATION := TModOrganization.CreateID(lOrg.ID);
    lDOTrader.DOT_AR.AR_REFNUM       := lDOTrader.DOT_NO;
    lDOTrader.DOT_AR.AR_TRANSDATE    := lDOTrader.DOT_DATE;
    lDOTrader.DOT_AR.AR_TOTAL        := lDOTrader.DOT_TOTAL;

    lOrg.Reload(False);

    lDOTrader.DOT_AR.AR_REKENING     := TModRekening.CreateID(lOrg.GetARAccount(False).ID);

    if lDOTrader.DOT_AR.AR_PAID > 0then
      raise Exception.Create('AR Sudah Terbayar, Tidak Bisa Diedit');

    if lcrud.SaveToDBTrans(lDOTrader.DOT_AR, False) then
      Result := True;
  finally
    lOrg.Free;
    lcrud.Free;
  end;
end;

function TCRUDDOTrader.GenerateNoBukti: String;
begin
  Result  := 'DT-' + Self.GenerateNo(TModDOTrader.ClassName);
end;

function TCRUDBarcodeRequest.GenerateCustomNo(aTableName, aFieldName: string;
    aCountDigit: Integer = 11): String;
var
  i: Integer;
  lMonth: string;
  lNum: Integer;
  lPrefix: string;
  lTahun: string;
  S: string;
begin
  aCountDigit := 4;
  lNum := 0;
  lTahun := FormatDateTime('YYYY', Now());
  lMonth := FormatDateTime('MM', Now());
  lPrefix := 'BR.' + lTahun + '.' + lMonth + '.' ;

  S := 'select max(' + aFieldName + ') from ' + aTableName
      + ' where ' + aFieldName + ' like '+  QuotedStr(lPrefix + '%');

  with TDBUtils.OpenQuery(S) do
  begin
    Try
      if not eof then
        TryStrToInt( RightStr(Fields[0].AsString, aCountDigit), lNum);
    Finally
      free;
    End;
  end;
  inc(lNum);

  Result := IntToStr(lNum);
  for i := 0 to aCountDigit-1 do Result := '0' + Result;
  Result := lPrefix +  RightStr(Result, aCountDigit);

  AfterExecuteMethod;
end;

function TCrudBankCashIN.GenerateNoBukti: String;
begin
  Result := 'BKM' + Self.GenerateNo(TModBankCashIn.ClassName);
end;

function TCRUDReturTrader.AfterSaveToDB(AObject: TModApp): Boolean;
var
  lRetTrader: TModReturTrader;
  S: string;
begin
  lRetTrader := TModReturTrader(AObject);
  if lRetTrader.RET_DOTrader = nil then
    Raise Exception.Create('lRetTrader.RET_DOTrader = nil');
  S := TDBUtils.GetSQLUpdate(lRetTrader.RET_DOTrader, 'DOT_STATUS = ''RETURNED'' ');
  TDBUtils.ExecuteSQL(S, False);
  Result := True;
end;

function TCRUDReturTrader.BeforeDeleteFromDB(AObject: TModApp): Boolean;
var
  lCRUD: TCrud;
  lRetTrader: TModReturTrader;
  S: string;
begin
  Result := False;
  lRetTrader := TModReturTrader(AObject);

  if lRetTrader.RET_AR <> nil then
  begin
    lRetTrader.RET_AR.Reload();
    if lRetTrader.RET_AR.AR_PAID <> 0 then
      Raise Exception.Create('AR sudah dibayar , DO Trader tidak bisa dihapus');
  end;

  if lRetTrader.RET_DOTrader = nil then
    Raise Exception.Create('lRetTrader.RET_DOTrader = nil');
  S := TDBUtils.GetSQLUpdate(lRetTrader.RET_DOTrader, 'DOT_STATUS = '''' ');
  TDBUtils.ExecuteSQL(S, False);

  lCRUD := TCrud.Create(nil);
  try
    if not lCRUD.DeleteFromDBTrans(lRetTrader.RET_AR, False) then
      Exit;
  finally
    lCRUD.Free;
  end;

  Result := True;
end;

function TCRUDReturTrader.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  lcrud: TCrud;
  lRetTrader: TModReturTrader;
  lOrg: TModOrganization;
begin
  Result := False;
  lRetTrader := TModReturTrader(AObject);

  if lRetTrader = nil then
    Raise Exception.Create('DoTrader = nil at AfterSaveToDB ');
  if lRetTrader.RET_Organization = nil then
    Raise Exception.Create('DO Trader Organization not definend');

  if lRetTrader.RET_AR = nil then
    lRetTrader.RET_AR := TModAR.Create;

  lcrud := TCrud.Create(nil);
  lOrg  := TModOrganization.CreateID(lRetTrader.RET_Organization.ID);
  try

    lRetTrader.RET_AR.AR_ClassRef     := lRetTrader.ClassName;
    lRetTrader.RET_AR.AR_Description  := lRetTrader.RET_DESCRIPTION;
    lRetTrader.RET_AR.AR_DueDate      := lRetTrader.RET_DATE + 7;   //???
    lRetTrader.RET_AR.AR_ORGANIZATION := TModOrganization.CreateID(lOrg.ID);
    lRetTrader.RET_AR.AR_REFNUM       := lRetTrader.RET_NO;
    lRetTrader.RET_AR.AR_TRANSDATE    := lRetTrader.RET_DATE;
    lRetTrader.RET_AR.AR_TOTAL        := -1 * lRetTrader.RET_TOTAL;

    lOrg.Reload(False);

    lRetTrader.RET_AR.AR_REKENING     := TModRekening.CreateID(lOrg.GetARAccount(False).ID);

    if lRetTrader.RET_AR.AR_PAID > 0then
      raise Exception.Create('AR Sudah Terbayar, Tidak Bisa Diedit');

    if lcrud.SaveToDBTrans(lRetTrader.RET_AR, False) then
      Result := True;
  finally
    lOrg.Free;
    lcrud.Free;
  end;
end;

function TCRUDReturTrader.GenerateNoBukti: String;
begin
  Result := 'RT-' + Self.GenerateNo(TModReturTrader.ClassName);
end;

function TCrudBarcodeUsage.AfterSaveToDB(AObject: TModApp): Boolean;
var
  i: Integer;
  lModBU: TModBarcodeUsage;
  lSS: TStrings;
//  S: string;
begin
//  Result := False;
  lModBU := TModBarcodeUsage(AObject);

  lSS := TStringList.Create;
  Try
    for i := 0 to lModBU.BarcodeUsageItems.Count-1 do
    begin
      lSS.Append(
        TDBUtils.GetSQLUpdate(lModBU.BarcodeUsageItems[i].BUI_BarcodeRequest, ' BR_IS_INVOICED = 1 ')
      );
    end;
    TDBUtils.ExecuteSQL(lSS, False);
    Result := True;
  Finally
    lSS.Free;
  End;
end;

function TCrudBarcodeUsage.BeforeDeleteFromDB(AObject: TModApp): Boolean;
var
  i: Integer;
  lCRUD: TCrud;
  lModBU: TModBarcodeUsage;
  lSS: TStrings;
begin
  Result := False;
  lModBU := TModBarcodeUsage(AObject);

  if lModBU.BU_AR <> nil then
  begin
    lModBU.BU_AR.Reload();
    if lModBU.BU_AR.AR_PAID <> 0 then
      Raise Exception.Create('AR telah dibayar, transaksi tidak bisa dihapus');

    lSS := TStringList.Create;
    Try
      for i := 0 to lModBU.BarcodeUsageItems.Count-1 do
      begin
        lSS.Append(
          TDBUtils.GetSQLUpdate(lModBU.BarcodeUsageItems[i].BUI_BarcodeRequest, ' BR_IS_INVOICED = 0 ')
        );
      end;
      TDBUtils.ExecuteSQL(lSS, False);
    Finally
      lSS.Free;
    End;

    lCRUD := TCrud.Create(nil);
    try
      if not lCRUD.DeleteFromDBTrans(lModBU.BU_AR, False) then
        Exit;
    finally
      lCRUD.Free;
    end;
  end;

  Result := True;
end;

function TCrudBarcodeUsage.BeforeSaveToDB(AObject: TModApp): Boolean;
var
  lModBU: TModBarcodeUsage;
  lCRUD: TCrud;
  lCRUDSetApp: TCrudSettingApp;
  lModRek: TModRekening;
  lModSetApp: TModSettingApp;
begin
  Result := False;
  lModBU := TModBarcodeUsage(AObject);

  if lModBU.BU_NO = '' then
    lModBU.BU_NO := 'BU-' + GenerateNo(TModBarcodeUsage.ClassName);

  if lModBU.BU_SUPMG = nil then
    Raise Exception.Create('Organization not definend');

  if lModBU.BU_AR = nil then
    lModBU.BU_AR := TModAR.Create;

  lCRUD       := TCrud.Create(nil);
  lCRUDSetApp := TCrudSettingApp.Create(nil);
  lModSetApp  := lCRUDSetApp.RetrieveByCabang(lModBU.BU_UNIT);
  lModRek     := TModRekening.Create;
  try
    lModBU.BU_AR.AR_ClassRef     := lModBU.ClassName;
    lModBU.BU_AR.AR_Description  := lModBU.BU_KETERANGAN;
    lModBU.BU_AR.AR_DueDate      := lModBU.BU_TANGGAL + 7;
    lModBU.BU_AR.AR_ORGANIZATION := lModBU.BU_SUPMG;
    lModBU.BU_AR.AR_REFNUM       := lModBU.BU_NO;
    lModBU.BU_AR.AR_TOTAL        := lModBU.BU_TOTAL;
    lModBU.BU_AR.AR_TRANSDATE    := lModBU.BU_TANGGAL;

    lModRek := lCRUD.RetrieveByCode(TModRekening.ClassName, lModSetApp.REKENING_PIUTANG_LABEL) as TModRekening;
    lModBU.BU_AR.AR_REKENING     := lModRek;

    if lModBU.BU_AR.AR_PAID > 0then
      raise Exception.Create('AR Sudah Terbayar, Tidak Bisa Diedit');

    if lCRUD.SaveToDBTrans(lModBU.BU_AR, False) then
      Result := True;
  finally
    lModRek.Free;
    lModSetApp.Free;
    lCRUDSetApp.Free;
    lCRUD.Free;
  end;
end;

function TCrudHistoryBarang.AfterSaveToDB(AObject: TModApp): Boolean;
var
  lHB: TModHistoryBarang;
  sSQL: string;
begin
  Result := False;
  if AObject = nil then
    Exit;

  lHB := TModHistoryBarang(AObject);
  sSQL := 'UPDATE REF$KONVERSI_SATUAN set KONVSAT_BARCODE = ' + QuotedStr(lHB.HB_NEW_CATALOG) +
          ' WHERE BARANG_ID = ' + QuotedStr(lHB.HB_BARANG.ID) +
          ' and [REF$SATUAN_ID] = ' + QuotedStr(lHB.HB_UOM.ID);

  try
    TDBUtils.ExecuteSQL(sSQL,False)
  except
    raise Exception.Create('Update Catalog Gagal');
  end;


end;

function TCrudHistoryBarang.BeforeSaveToDB(AObject: TModApp): Boolean;
begin
  Result := True;
end;

end.
