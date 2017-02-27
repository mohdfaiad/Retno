unit uRetnoUnit;

interface
uses
  uConstanta, udmMain, Windows, Classes, SysUtils, Forms, uTSINIFile;

type
  TTag = set of byte;

  TTipeTransaksi = (TTSO, TTPO, TTDO, TTReturSupplier, TTPOS,
                    TTKring, TTStockAdj,TTWastage, TTransferBonus);

  TMutasiType = (TyOut, TyIn);

function getGlobalVar(aVarString : string): string;

function IsHODeveloperMode: Boolean;

function IsStoreDeveloperMode: Boolean;

function GetReportPath: string;

function cGetAppPath: String;

function GetIsStoreUnitID(aUnit_ID : Integer): Integer;

const
  _add = 5;
  _Div = 7;
  _DigitNoBukti = 6;
  _pertanyaanMaunDesign = 'Anda mempunyai authority untuk design report '
                        + #13 + #10 + 'Apakah anda akan melakukan design sekarang ? '
                        + #13 + #10 + 'Pilih NO kalau anda hanya akan melihat report ...';

var
  lCaption        : String;
  FMaxRowsAllowed : Integer;

  FWaitForm   : TForm;
  strUOM      : string;

  lUnitId     : Integer;
  aListMerID  : TStrings;
  iMaxGen     : Integer = 5;
  //Product  ig=integer global
  igProd_Code_Length : Integer = 6;  // max 9 ya. integer safe , def = 6
  //Precision Harga di Transaksi End user dan Kring , def = -2
  igPrice_Precision  : Integer = -2;
  //Precision Qty di Transaksi End user dan Kring , def = -3
  igQty_Precision    : Integer = -3;

implementation

function getGlobalVar(aVarString : string): string;
var
  sSQL: string;
begin
  Result := '';
//  sSQL := ' select PAR_VALUE '
//          + ' from SYS$PARAMETER '
//          + ' where PAR_NAME = ' + QuotedStr(aVarString) ;
//
//  with cOpenQuery(sSQL) do
//  begin
//    try
//    if not FieldByName('PAR_VALUE').IsNull then
//      Result := fieldbyname('PAR_VALUE').AsString;
//    finally
//      Free;
//    end;
//  end;
end;

function IsHODeveloperMode: Boolean;
begin
  Result := UpperCase(cGetAppPath) = UpperCase('D:\SharedProjects\Projects\RMS One SQLServer\bin\');
end;

function IsStoreDeveloperMode: Boolean;
begin
  Result := UpperCase(cGetAppPath) = UpperCase('D:\SharedProjects\Projects\RMS One SQLServer\bin\');
end;

function GetReportPath: string;
begin
  Result := _INIReadString(CONFIG_FILE, PATH_TEMPLATE, 'PathReport');;
end;

function cGetAppPath: String;
begin
     result := ExtractFilePath(application.ExeName);
end;

{function FormatedStringToFloat(aFormatedString : String): Double;
var
  tmp: string;
begin
  //Result := 0;
  if trim(aFormatedString) = '' then
  begin
    Result := 0;
  end else begin
    tmp := StringReplace(aFormatedString,ThousandSeparator, '',[rfReplaceAll]);
    Result := StrToFloat(tmp) ;
  end;
end;
}
{function FloatToFormatedString(aInputFloat : Double): string;
begin
  Result :='' ;
//  ThousandSeparator := '.';
//  DecimalSeparator := ',';
  Result := Format('%7.2n', [aInputFloat]);
end;
}

function GetIsStoreUnitID(aUnit_ID : Integer): Integer;
var
  sSQL: string;
begin
//  Result := 0;
//  sSQL := 'select UNT_IS_STORE, UNT_IS_HO from aut$unit'
//        + ' where UNT_ID = '+ IntToStr(aUnit_ID);
//  with cOpenQuery(sSQL) do
//  begin
//    try
//      if Fields[0].AsInteger <> 0 then
//        Result  := Fields[0].AsInteger;
//    finally
//      Free;
//    end;
//  end;
end;

end.