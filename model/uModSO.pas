unit uModSO;

interface

uses
  uModApp, uModSatuan, uModUnit, uModBarang, uModSuplier,
  System.Generics.Collections;


type
  TModSODetil = class;
  TSODetils = class(TObjectList<TModSODetil>);
  TModSO = class(TModApp)
  private
    FAUTUNIT: TModUnit;
    FMERCHANDISE: TModMerchandise;
    FMerchandise2: TModMerchandise;
    FSODetils: Tobjectlist<TModSODetil>;
    FSODetils2: TSODetils;
    FSO_DATE: TDatetime;
    FSO_NO: string;
    FSUPPLIER: TModSuplier;
  public
    property Merchandise: TModMerchandise read FMerchandise2 write
        FMerchandise2;
    property SODetils: TSODetils read FSODetils2 write FSODetils2;
  published
    property AUTUNIT: TModUnit read FAUTUNIT write FAUTUNIT;
    property SO_DATE: TDatetime read FSO_DATE write FSO_DATE;
    property SO_NO: string read FSO_NO write FSO_NO;
    property SUPPLIER: TModSuplier read FSUPPLIER write FSUPPLIER;
  end;

  TSODetil = class(TModApp)
  private
    FBARANG: TModBarang;
    FBARANGSUPPLIER: TModBarangSupplier;
    FSO: TModSO;
    FSOD_DISC1: Double;
    FSOD_DISC2: Double;
    FSOD_DISC3: Double;
    FSOD_IS_BKP: Integer;
    FSOD_IS_ORDERED: Integer;
    FSOD_IS_REGULAR: Integer;
    FSOD_PRICE: Double;
    FSOD_QTY: Double;
    FSOD_QTY_ORDER: Integer;
    FSOD_TOTAL: Double;
    FSOD_TOTAL_DISC: Double;
    FSUPPLIER: TModSuplier;
    FUOM: TModSatuan;
  published
    property BARANG: TModBarang read FBARANG write FBARANG;
    property BARANGSUPPLIER: TModBarangSupplier read FBARANGSUPPLIER write
        FBARANGSUPPLIER;
    property SO: TModSO read FSO write FSO;
    property SOD_DISC1: Double read FSOD_DISC1 write FSOD_DISC1;
    property SOD_DISC2: Double read FSOD_DISC2 write FSOD_DISC2;
    property SOD_DISC3: Double read FSOD_DISC3 write FSOD_DISC3;
    property SOD_IS_BKP: Integer read FSOD_IS_BKP write FSOD_IS_BKP;
    property SOD_IS_ORDERED: Integer read FSOD_IS_ORDERED write FSOD_IS_ORDERED;
    property SOD_IS_REGULAR: Integer read FSOD_IS_REGULAR write FSOD_IS_REGULAR;
    property SOD_PRICE: Double read FSOD_PRICE write FSOD_PRICE;
    property SOD_QTY: Double read FSOD_QTY write FSOD_QTY;
    property SOD_QTY_ORDER: Integer read FSOD_QTY_ORDER write FSOD_QTY_ORDER;
    //1 soD_PRICE * SOD_QTY
    property SOD_TOTAL: Double read FSOD_TOTAL write FSOD_TOTAL;
    property SOD_TOTAL_DISC: Double read FSOD_TOTAL_DISC write FSOD_TOTAL_DISC;
    property SUPPLIER: TModSuplier read FSUPPLIER write FSUPPLIER;
    property UOM: TModSatuan read FUOM write FUOM;
  end;

  TSODetils = class(TObjectList<TModSODetil>)
  private
    function GetSODetil(Index: Integer): TSODetil;
    procedure SetSODetil(Index: Integer; Value: TSODetil);
  public
    property SODetil[Index: Integer]: TSODetil read GetSODetil write SetSODetil;
  end;

implementation

{
********************************** TSODetils ***********************************
}
function TSODetils.GetSODetil(Index: Integer): TSODetil;
begin
end;

procedure TSODetils.SetSODetil(Index: Integer; Value: TSODetil);
begin
end;

end.
