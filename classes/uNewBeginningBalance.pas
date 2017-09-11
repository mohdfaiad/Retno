unit uNewBeginningBalance;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, StrUtils,
  uNewUnit, uTSBaseClass, uConstanta, uNewPOS, uNewShift;

type
  TBeginningBalance = class(TSBaseClass)
  private
    FDATE_CREATE: TDateTime;
    FDATE_MODIFY: TDateTime;
    FDescription: String;
    FID: string;
    FKasirID: string;
//    FKasirUnitID: Integer;
    FModal: Double;
    FNewUnit: TUnit;
    FNewUnitID: string;
//    FOPC_UNIT: TUnit;
//    FOPC_UNITID: Integer;
//    FOPM_UNIT: TUnit;
//    FOPM_UNITID: Integer;
    FOP_CREATE: string;
    FOP_MODIFY: string;
    FPOS: TPOS;
    FPOSID: string;
    FShift: TNewShift;
    FShiftDate: TDateTime;
    FShiftID: string;
    FStatus: string;
    function FLoadFromDB( aSQL : String ): Boolean;
    function GetNewUnit: TUnit;
//    function GetOPC_UNIT: TUnit;
//    function GetOPM_UNIT: TUnit;
    function GetPOS: TPOS;
    function GetShift: TNewShift;
    procedure SetNewUnit(Value: TUnit);
//    procedure SetOPC_UNIT(Value: TUnit);
//    procedure SetOPM_UNIT(Value: TUnit);
    procedure SetPOS(Value: TPOS);
    procedure SetShift(Value: TNewShift);
  public
    constructor Create(AOwner : TComponent); override;
    constructor CreateWithUser(AOwner: TComponent; AUserID: string);
    destructor Destroy; override;
    procedure ClearProperties;
    function CustomSQLTask: Tstrings;
    function CustomSQLTaskPrior: Tstrings;
    function CustomTableName: string;
    function GenerateInterbaseMetaData: TStrings;
    function GenerateSQL(ARepeatCount: Integer = 1): TStrings;
    function GetFieldNameFor_DATE_CREATE: string; dynamic;
    function GetFieldNameFor_DATE_MODIFY: string; dynamic;
    function GetFieldNameFor_Description: string; dynamic;
    function GetFieldNameFor_ID: string; dynamic;
    function GetFieldNameFor_KasirID: string; dynamic;
//    function GetFieldNameFor_KasirUnitID: string; dynamic;
    function GetFieldNameFor_Modal: string; dynamic;
    function GetFieldNameFor_NewUnit: string; dynamic;
//    function GetFieldNameFor_OPC_UNIT: string; dynamic;
//    function GetFieldNameFor_OPM_UNIT: string; dynamic;
    function GetFieldNameFor_OP_CREATE: string; dynamic;
    function GetFieldNameFor_OP_MODIFY: string; dynamic;
    function GetFieldNameFor_POS: string; dynamic;
//    function GetFieldNameFor_POSUnit: string; dynamic;
    function GetFieldNameFor_Shift: string; dynamic;
    function GetFieldNameFor_ShiftDate: string; dynamic;
//    function GetFieldNameFor_ShiftUnit: string; dynamic;
    function GetFieldNameFor_Status: string; dynamic;
    function GetFieldPrefix: string; dynamic;
    function GetGeneratorName: string; dynamic;
    function GetHeaderFlag: Integer;
    function GetPlannedID: string;
    function IsKasirIniSudahDisettingBBnya: Boolean;
    function IsKasirIniSudahDiShiftLain: Boolean;
    function IsPOSIniSudahDisettingBBnya: Boolean;
    function LoadByID(AID, AUnitID: string): Boolean;
    function RemoveFromDB: Boolean;
    function SaveToDB: Boolean;
    procedure UpdateData(ANewUnitID, ADescription, AID, AKasirID: string; AModal:
        Double; APOS_ID, AShift_ID: string; AShiftDate: TDateTime; AStatus: string);
    procedure UpdateStatus(AStatus: String);
    function UpdateStatusAndSaveToDB(AStatus: String): Boolean;
    property DATE_CREATE: TDateTime read FDATE_CREATE write FDATE_CREATE;
    property DATE_MODIFY: TDateTime read FDATE_MODIFY write FDATE_MODIFY;
    property Description: String read FDescription write FDescription;
    property ID: string read FID write FID;
    property KasirID: string read FKasirID write FKasirID;
//    property KasirUnitID: Integer read FKasirUnitID write FKasirUnitID;
    property Modal: Double read FModal write FModal;
    property NewUnit: TUnit read GetNewUnit write SetNewUnit;
//    property OPC_UNIT: TUnit read GetOPC_UNIT write SetOPC_UNIT;
//    property OPM_UNIT: TUnit read GetOPM_UNIT write SetOPM_UNIT;
    property OP_CREATE: string read FOP_CREATE write FOP_CREATE;
    property OP_MODIFY: string read FOP_MODIFY write FOP_MODIFY;
    property POS: TPOS read GetPOS write SetPOS;
    property Shift: TNewShift read GetShift write SetShift;
    property ShiftDate: TDateTime read FShiftDate write FShiftDate;
    property Status: string read FStatus write FStatus;
  end;
  

implementation

uses udmMain, uAppUtils;

{
****************************** TBeginningBalance *******************************
}
constructor TBeginningBalance.Create(AOwner : TComponent);
begin
  inherited Create(AOwner);
end;

constructor TBeginningBalance.CreateWithUser(AOwner: TComponent; AUserID:
    string);
begin
  Create(AOwner);
  OP_MODIFY := AUserID;
//  FOPM_UNITID := AUnitID;
end;

destructor TBeginningBalance.Destroy;
begin
  ClearProperties;
  inherited Destroy;
end;

procedure TBeginningBalance.ClearProperties;
begin
  Status := '';
  Description := '';
  OP_MODIFY := '';
  OP_CREATE := '';
  Modal := 0;
//  KasirUnitID := 0;
  KasirID := '';
  ID := '';

  FreeAndNil(FNewUnit);
//  FreeAndNil(FOPC_UNIT);
//  FreeAndNil(FOPM_UNIT);
  FreeAndNil(FPOS);
  FreeAndNil(FShift);
end;

function TBeginningBalance.CustomSQLTask: Tstrings;
begin
  result := nil;
end;

function TBeginningBalance.CustomSQLTaskPrior: Tstrings;
begin
  result := nil;
end;

function TBeginningBalance.CustomTableName: string;
begin
  result := 'BEGINNING_BALANCE';
end;

function TBeginningBalance.FLoadFromDB( aSQL : String ): Boolean;
begin
  Result := False;
  State := csNone;
  ClearProperties;
  with cOpenQuery(aSQL) do
  begin
    try
      if not EOF then
      begin
        FDATE_CREATE := FieldByName(GetFieldNameFor_DATE_CREATE).AsDateTime;
        FDATE_MODIFY := FieldByName(GetFieldNameFor_DATE_MODIFY).AsDateTime;
        FDescription := FieldByName(GetFieldNameFor_Description).AsString;
        FID := FieldByName(GetFieldNameFor_ID).AsString;
        FKasirID := FieldByName(GetFieldNameFor_KasirID).AsString;
//        FKasirUnitID := FieldByName(GetFieldNameFor_KasirUnitID).AsInteger;
        FModal := FieldByName(GetFieldNameFor_Modal).AsFloat;
        FNewUnitID := FieldByName(GetFieldNameFor_NewUnit).AsString;
//        FOPC_UNITID := FieldByName(GetFieldNameFor_OPC_UNIT).AsInteger;
//        FOPM_UNITID := FieldByName(GetFieldNameFor_OPM_UNIT).AsInteger;
        FOP_CREATE := FieldByName(GetFieldNameFor_OP_CREATE).AsString;
        FOP_MODIFY := FieldByName(GetFieldNameFor_OP_MODIFY).AsString;
        FPOSID := FieldByName(GetFieldNameFor_POS).AsString;
        FShiftID := FieldByName(GetFieldNameFor_Shift).AsString;
        FShiftDate := FieldByName(GetFieldNameFor_ShiftDate).AsDateTime;
        FStatus := FieldByName(GetFieldNameFor_Status).AsString;
        Self.State := csLoaded;
        Result := True;
      end;
    finally
      Free;
    end;
  End;
end;

function TBeginningBalance.GenerateInterbaseMetaData: TStrings;
begin
  Result := TStringList.Create;
  Result.Append( '' );
  Result.Append( 'Create Table ''+ CustomTableName +'' ( ' );
  Result.Append( 'TRMSBaseClass_ID Integer not null, ' );
  Result.Append( 'DATE_CREATE   Date Not Null , ' );
  Result.Append( 'DATE_MODIFY   Date Not Null , ' );
  Result.Append( 'Description   Date Not Null , ' );
  Result.Append( 'ID   Integer Not Null  Unique, ' );
  Result.Append( 'KasirID   Integer Not Null , ' );
  Result.Append( 'KasirUnitID   Integer Not Null , ' );
  Result.Append( 'Modal   double precision Not Null , ' );
  Result.Append( 'NewUnit_ID Integer Not Null, ' );
  Result.Append( 'OPC_UNIT_ID Integer Not Null, ' );
  Result.Append( 'OPM_UNIT_ID Integer Not Null, ' );
  Result.Append( 'OP_CREATE   Integer Not Null , ' );
  Result.Append( 'OP_MODIFY   Integer Not Null , ' );
  Result.Append( 'POS_ID Integer Not Null, ' );
  Result.Append( 'Shift_ID Integer Not Null, ' );
  Result.Append( 'ShiftDate   Date Not Null , ' );
  Result.Append( 'Status   Varchar(30) Not Null , ' );
  Result.Append( 'Stamp TimeStamp ' );
  Result.Append( ' ); ' );
end;

function TBeginningBalance.GenerateSQL(ARepeatCount: Integer = 1): TStrings;
var
  sSQL: string;
  //i: Integer;
  ssSQL: TStrings;
begin
//  DecimalSeparator := '.';
  Result := TStringList.Create;
  if State = csNone then
  begin
    raise Exception.create('Tidak bisa generate dalam Mode csNone')
  end;

  ssSQL := CustomSQLTaskPrior;
  if ssSQL <> nil then
  begin
    Result.AddStrings(ssSQL);
  end;
  ssSQL := nil;

  DATE_MODIFY := cGetServerDateTime;
//  FOPM_UNITID := FNewUnitID;

//  If FID <= 0 then
  If FID = '' then
  begin
    //Generate Insert SQL
    OP_CREATE := OP_MODIFY;
    DATE_CREATE := DATE_MODIFY;
//    FOPC_UNITID := FOPM_UNITID;
//    FID := cGetNextID(GetFieldNameFor_ID, CustomTableName);
    FID := cGetNextIDGUIDToString;
    sSQL := 'insert into ' + CustomTableName + ' ('
      + GetFieldNameFor_DATE_CREATE + ', '
      + GetFieldNameFor_DATE_MODIFY + ', '
      + GetFieldNameFor_Description + ', '
      + GetFieldNameFor_ID + ', '
      + GetFieldNameFor_KasirID + ', '
//      + GetFieldNameFor_KasirUnitID + ', '
      + GetFieldNameFor_Modal + ', '
      + GetFieldNameFor_NewUnit + ', '
//      + GetFieldNameFor_OPC_UNIT + ', '
//      + GetFieldNameFor_OPM_UNIT + ', '
      + GetFieldNameFor_OP_CREATE + ', '
      + GetFieldNameFor_OP_MODIFY + ', '
      + GetFieldNameFor_POS + ', '
//      + GetFieldNameFor_POSUnit + ', '
      + GetFieldNameFor_Shift + ', '
//      + GetFieldNameFor_ShiftUnit + ', '
      + GetFieldNameFor_ShiftDate + ', '
      + GetFieldNameFor_Status +') values ('
      + TAppUtils.QuotDT(FDATE_CREATE) + ', '
      + TAppUtils.QuotDT(FDATE_MODIFY) + ', '
      + QuotedStr(FDescription) + ', '
      + QuotedStr(FID) + ', '
      + QuotedStr(FKasirID) + ', '
//      + IntToStr(FKasirUnitID) + ', '
      + FormatFloat('0.00', FModal) + ', '
      + QuotedStr(FNewUnitID) + ', '
//      + InttoStr(FOPC_UNITID) + ', '
//      + InttoStr(FOPM_UNITID) + ', '
      + QuotedStr(FOP_CREATE) + ', '
      + QuotedStr(FOP_MODIFY) + ', '
      + QuotedStr(FPOSID) + ', '
//      + QuotedStr(FNewUnitID) + ', '
      + QuotedStr(FShiftID) + ', '
//      + QuotedStr(FNewUnitID) + ', '
      + TAppUtils.QuotDT(FShiftDate) + ', '
      + QuotedStr(FStatus) + ');'
  end
  else
  begin
    //generate Update SQL
    sSQL := 'update ' + CustomTableName + ' set '
      + GetFieldNameFor_DATE_MODIFY + ' = ' + TAppUtils.QuotDT(FDATE_MODIFY)
      + ', ' + GetFieldNameFor_Description + ' = ' + QuotedStr(FDescription)
      + ', ' + GetFieldNameFor_KasirID + ' = ' + QuotedStr(FKasirID)
//      + ', ' + GetFieldNameFor_KasirUnitID + ' = ' + IntToStr(FKasirUnitID)
      + ', ' + GetFieldNameFor_Modal + ' = ' + FormatFloat('0.00', FModal)
      + ', ' + GetFieldNameFor_NewUnit + ' = ' + QuotedStr(FNewUnitID)
//      + ', ' + GetFieldNameFor_OPM_UNIT + ' = ' + IntToStr(FOPM_UNITID)
      + ', ' + GetFieldNameFor_OP_MODIFY + ' = ' + QuotedStr(FOP_MODIFY)
      + ', ' + GetFieldNameFor_POS + ' = ' + QuotedStr(FPOSID)
      + ', ' + GetFieldNameFor_Shift + ' = ' + QuotedStr(FShiftID)
      + ', ' + GetFieldNameFor_ShiftDate + ' = ' + TAppUtils.QuotDT(FShiftDate)
      + ', ' + GetFieldNameFor_Status + ' = ' + QuotedStr(FStatus)
      + ' where ' + GetFieldNameFor_ID + ' = ' + QuotedStr(FID)
      + ' and ' + GetFieldNameFor_NewUnit + ' = ' + QuotedStr(FNewUnitID) + ';';
  end;
  Result.Append(sSQL);
  //generating Collections SQL

  ssSQL := CustomSQLTask;
  if ssSQL <> nil then
  begin
    Result.AddStrings(ssSQL);
  end;

  FreeAndNil(ssSQL)
end;

function TBeginningBalance.GetFieldNameFor_DATE_CREATE: string;
begin
  Result := 'DATE_CREATE';
end;

function TBeginningBalance.GetFieldNameFor_DATE_MODIFY: string;
begin
  Result := 'DATE_MODIFY';
end;

function TBeginningBalance.GetFieldNameFor_Description: string;
begin
  Result := GetFieldPrefix + 'Description';
end;

function TBeginningBalance.GetFieldNameFor_ID: string;
begin
//  Result := GetFieldPrefix + 'ID';
  Result := 'BEGINNING_BALANCE_ID';
end;

function TBeginningBalance.GetFieldNameFor_KasirID: string;
begin
//  Result := GetFieldPrefix + 'USR_ID';
  Result := 'AUT$USER_ID';
end;

//function TBeginningBalance.GetFieldNameFor_KasirUnitID: string;
//begin
//  Result := GetFieldPrefix + 'USR_UNT_ID';
//end;

function TBeginningBalance.GetFieldNameFor_Modal: string;
begin
  Result := GetFieldPrefix + 'Modal';
end;

function TBeginningBalance.GetFieldNameFor_NewUnit: string;
begin
//  Result := GetFieldPrefix + 'UNT_ID';
  Result := 'AUT$UNIT_ID';
end;

//function TBeginningBalance.GetFieldNameFor_OPC_UNIT: string;
//begin
//  Result := 'OPC_UNIT';
//end;

//function TBeginningBalance.GetFieldNameFor_OPM_UNIT: string;
//begin
//  Result := 'OPM_UNIT';
//end;

function TBeginningBalance.GetFieldNameFor_OP_CREATE: string;
begin
  Result := 'OP_CREATE';
end;

function TBeginningBalance.GetFieldNameFor_OP_MODIFY: string;
begin
  Result := 'OP_MODIFY';
end;

function TBeginningBalance.GetFieldNameFor_POS: string;
begin
//  Result := GetFieldPrefix + 'SETUPPOS_ID';
  Result := 'SETUPPOS_ID';
end;

//function TBeginningBalance.GetFieldNameFor_POSUnit: string;
//begin
//  Result := GetFieldPrefix + 'SETUPPOS_UNT_ID';
//end;

function TBeginningBalance.GetFieldNameFor_Shift: string;
begin
//  Result := GetFieldPrefix + 'Shift_ID';
  Result := 'SHIFT_ID';
end;

function TBeginningBalance.GetFieldNameFor_ShiftDate: string;
begin
  Result := GetFieldPrefix + 'Shift_Date';
end;

//function TBeginningBalance.GetFieldNameFor_ShiftUnit: string;
//begin
//  Result := GetFieldPrefix + 'Shift_UNT_ID';
//end;

function TBeginningBalance.GetFieldNameFor_Status: string;
begin
  Result := GetFieldPrefix + 'Status';
end;

function TBeginningBalance.GetFieldPrefix: string;
begin
  Result := 'BALANCE_';
end;

function TBeginningBalance.GetGeneratorName: string;
begin
  Result := 'GEN_' + CustomTableName + '_ID';
end;

function TBeginningBalance.GetHeaderFlag: Integer;
begin
  result := 4705;
end;

function TBeginningBalance.GetNewUnit: TUnit;
begin
  //Result := nil;
  if FNewUnit = nil then
  begin
    FNewUnit := TUnit.Create(Self);
    FNewUnit.LoadByID(FNewUnitID);
  end;
  Result := FNewUnit;
end;

//function TBeginningBalance.GetOPC_UNIT: TUnit;
//begin
//  //Result := nil;
//  if FOPC_UNIT = nil then
//  begin
//    FOPC_UNIT := TUnit.Create(Self);
//    FOPC_UNIT.LoadByID(FOPC_UNITID);
//  end;
//  Result := FOPC_UNIT;
//end;

//function TBeginningBalance.GetOPM_UNIT: TUnit;
//begin
//  //Result := nil;
//  if FOPM_UNIT = nil then
//  begin
//    FOPM_UNIT := TUnit.Create(Self);
//    FOPM_UNIT.LoadByID(FOPM_UNITID);
//  end;
//  Result := FOPM_UNIT;
//end;

function TBeginningBalance.GetPlannedID: string;
begin
//  result := -1;
  Result := '';
  if State = csNone then
  begin
     Raise exception.create('Tidak bisa GetPlannedID di Mode csNone');
     exit;
  end
  else if state = csCreated then
  begin
//     Result := cGetNextID(GetFieldNameFor_ID, CustomTableName);
     Result := cGetNextIDGUIDToString;
  end
  else if State = csLoaded then
  begin
     Result := FID;
  end;
end;

function TBeginningBalance.GetPOS: TPOS;
begin
  //Result := nil;
  if FPOS = nil then
  begin
    FPOS := TPOS.Create(Self);
    FPOS.LoadByID(FPOSID,FNewUnitID);
  end;
  Result := FPOS;
end;

function TBeginningBalance.GetShift: TNewShift;
begin
  //Result := nil;
  if FShift = nil then
  begin
    FShift := TNewShift.Create(Self);
    FShift.LoadByID(FShiftID);
  end;
  Result := FShift;
end;

function TBeginningBalance.IsKasirIniSudahDisettingBBnya: Boolean;
var
  sSQL: string;
begin
  Result := False;
  sSQL := 'select count(1)'
          + ' from ' + CustomTableName
//          + ' where balance_unt_id = ' + IntToStr(FNewUnitID)
          + ' where ' + GetFieldNameFor_KasirID + ' = ' + QuotedStr(FKasirID)
          + ' and ' + GetFieldNameFor_Shift + ' = '+ QuotedStr(FShiftID)
          + ' AND BALANCE_SHIFT_DATE = ' + TAppUtils.Quotd(ShiftDate);

  with cOpenQuery(sSQL) do
  begin
    try
      if Fields[0].AsInteger > 0 then
        Result := True;
    finally
      Free;
    end;
  end;

end;

function TBeginningBalance.IsKasirIniSudahDiShiftLain: Boolean;
var
  sSQL: string;
begin
  Result := False;
  sSQL := 'select count(1)'
          + ' from ' + CustomTableName
//          + ' where balance_unt_id = ' + IntToStr(FNewUnitID)
          + ' where ' + GetFieldNameFor_KasirID + ' = ' + QuotedStr(FKasirID)
          + ' AND BALANCE_SHIFT_DATE = ' + TAppUtils.Quotd(ShiftDate);

  with cOpenQuery(sSQL) do
  begin
    try
      if Fields[0].AsInteger > 0 then
        Result := True;
    finally
      Free;
    end;
  end;

end;

function TBeginningBalance.IsPOSIniSudahDisettingBBnya: Boolean;
var
  sSQL: string;
begin
  Result := False;
  sSQL := 'select count(1)'
          + ' from ' + CustomTableName
//          + ' where balance_unt_id = ' + IntToStr(FNewUnitID)
          + ' where ' + GetFieldNameFor_POS + ' = ' + QuotedStr(FPOSID)
          + ' and ' + GetFieldNameFor_Shift + ' = '+ QuotedStr(FShiftID)
          + ' AND BALANCE_SHIFT_DATE = ' + TAppUtils.Quotd(ShiftDate);

  with cOpenQuery(sSQL) do
  begin
    try
      if Fields[0].AsInteger > 0 then
        Result := True;
    finally
      Free;
    end;
  end;

end;

function TBeginningBalance.LoadByID(AID, AUnitID: string): Boolean;
var
  sSQL: string;
begin
  sSQL := 'select * from ' + CustomTableName
        + ' where ' + GetFieldNameFor_ID + ' = ' + QuotedStr(AID)
        + ' and ' + GetFieldNameFor_NewUnit + ' = ' + QuotedStr(AUnitID);
  Result := FloadFromDB(sSQL);
end;

function TBeginningBalance.RemoveFromDB: Boolean;
var
  sSQL: string;
begin
  Result := False;
  sSQL := 'delete from ' + CustomTableName
        + ' where ' + GetFieldNameFor_ID + ' = ' + QuotedStr(FID)
        + ' and ' + GetFieldNameFor_NewUnit + ' = ' + QuotedStr(FNewUnitID);
  if cExecSQL(sSQL, dbtPOS, false) then
    Result := True; //SimpanBlob(sSQL, GetHeaderFlag);
end;

function TBeginningBalance.SaveToDB: Boolean;
var
  ssSQL: TStrings;
begin
  Result := False;
  try
    ssSQL := GenerateSQL();
    try
      if cExecSQL(ssSQL) then
//        if SimpanBlob(ssSQL,GetHeaderFlag) then
          Result := True;
    except
    end;
  finally
    FreeAndNil(ssSQL);
  end;
end;

procedure TBeginningBalance.SetNewUnit(Value: TUnit);
begin
  FNewUnitID := Value.ID;
end;

//procedure TBeginningBalance.SetOPC_UNIT(Value: TUnit);
//begin
//  FOPC_UNITID := Value.ID;
//end;

//procedure TBeginningBalance.SetOPM_UNIT(Value: TUnit);
//begin
//  FOPM_UNITID := Value.ID;
//end;

procedure TBeginningBalance.SetPOS(Value: TPOS);
begin
  FPOSID := Value.ID;
end;

procedure TBeginningBalance.SetShift(Value: TNewShift);
begin
  FShiftID := Value.ID;
end;

procedure TBeginningBalance.UpdateData(ANewUnitID, ADescription, AID, AKasirID:
    string; AModal: Double; APOS_ID, AShift_ID: string; AShiftDate: TDateTime;
    AStatus: string);
begin
  FNewUnitID := ANewUnitID;
  FDescription := ADescription;
  FID := AID;
  FKasirID := AKasirID;
//  FKasirUnitID :=  AKasirUnitID;
  FModal := AModal;
  FPOSID := APOS_ID;
  FShiftID := AShift_ID;
  FShiftDate := AShiftDate;
  FStatus := Trim(AStatus);

  State := csCreated;
end;

procedure TBeginningBalance.UpdateStatus(AStatus: String);
begin
  Status := AStatus;
end;

function TBeginningBalance.UpdateStatusAndSaveToDB(AStatus: String): Boolean;
begin
  //Result := False;
  UpdateStatus(AStatus);
  Result := SaveToDB;
end;

end.
