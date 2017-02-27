unit ufrmPajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmMaster, ActnList, Grids, BaseGrid, AdvGrid,
  ufraFooter5Button, StdCtrls, ExtCtrls, AdvUtil, System.Actions, AdvObj;

type
  TfrmPajak = class(TfrmMaster)
    fraFooter5Button1: TfraFooter5Button;
    strgGrid: TAdvStringGrid;
    actlstPajak: TActionList;
    actAddPajak: TAction;
    actEditPajak: TAction;
    actDeletePajak: TAction;
    actRefreshPajak: TAction;
    procedure actAddPajakExecute(Sender: TObject);
    procedure actEditPajakExecute(Sender: TObject);
    procedure actDeletePajakExecute(Sender: TObject);
    procedure actRefreshPajakExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure strgGridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    intIdPajak: Integer;
    strNama: string;
//    FPajak : TNewPajak;
  public
    { Public declarations }
  end;

var
  frmPajak: TfrmPajak;

implementation

uses ufrmDialogPajak, uConn, DB, uConstanta, uTSCommonDlg;

{$R *.dfm}

procedure TfrmPajak.actAddPajakExecute(Sender: TObject);
begin
//  if MasterNewUnit.ID=0 then
  begin
    CommonDlg.ShowError(ER_UNIT_NOT_SPECIFIC);
    //frmMain.cbbUnit.SetFocus;
    Exit;
  end;
  if not Assigned(frmDialogPajak) then
    Application.CreateForm(TfrmDialogPajak, frmDialogPajak);
  frmDialogPajak.Caption := 'Add Tax (Pajak)';
  frmDialogPajak.FormMode := fmAdd;

//  SetFormPropertyAndShowDialog(frmDialogPajak);
  if (frmDialogPajak.IsProcessSuccessfull) then
  begin
    actRefreshPajakExecute(Self);
    CommonDlg.ShowConfirm(atAdd);
  end;
    
  frmDialogPajak.Free;
end;

procedure TfrmPajak.actEditPajakExecute(Sender: TObject);
begin
  if strgGrid.Cells[6,strgGrid.row]='0' then Exit;
//  if MasterNewUnit.ID=0 then
  begin
    CommonDlg.ShowError(ER_UNIT_NOT_SPECIFIC);
    //frmMain.cbbUnit.SetFocus;
    Exit;
  end;
  if not Assigned(frmDialogPajak) then
    Application.CreateForm(TfrmDialogPajak, frmDialogPajak);
  frmDialogPajak.Caption := 'Edit Tax (Pajak)';
  frmDialogPajak.FormMode := fmEdit;
  frmDialogPajak.PajakId := StrToInt(strgGrid.Cells[6,strgGrid.row]);

//  SetFormPropertyAndShowDialog(frmDialogPajak);
  if (frmDialogPajak.IsProcessSuccessfull) then
  begin
    actRefreshPajakExecute(Self);
    CommonDlg.ShowConfirm(atEdit);
  end;

  frmDialogPajak.Free;
end;

procedure TfrmPajak.actDeletePajakExecute(Sender: TObject);
//var
 // KodeLama: string;
begin
  if strgGrid.Cells[6,strgGrid.row]='0' then Exit;
//  if MasterNewUnit.ID=0 then
  begin
    CommonDlg.ShowError(ER_UNIT_NOT_SPECIFIC);
    //frmMain.cbbUnit.SetFocus;
    Exit;
  end;

  if (CommonDlg.Confirm('Are you sure you wish to delete Tax (Name: '+strgGrid.Cells[1,strgGrid.row]+')?') = mrYes) then
  begin
   { if not assigned(Pajak) then
      Pajak := TPajak.Create;

    if Pajak.DeleteDataPajak(StrToInt(strgGrid.Cells[6,strgGrid.row])) then
    begin
      actRefreshPajakExecute(Self);
      CommonDlg.ShowConfirm(atDelete);
    end; }
  // try
     IDLama  := StrToInt(strgGrid.Cells[6,strgGrid.Row]);
{     if FPajak.LoadByID(IDLama) then
     begin
        if FPajak.RemoveFromDB then
        begin
          cCommitTrans;
          CommonDlg.ShowMessage('Berhasil Menghapus Data');
          actRefreshPajakExecute(Self);
          Exit;
        end else
        begin
          cRollbackTrans;
          CommonDlg.ShowError('Gagal Menghapus Data');
          Exit;
        end;
     end;
}
  // finally;
  //  cRollbackTrans;
 //  end;
   end;
end;

procedure TfrmPajak.actRefreshPajakExecute(Sender: TObject);
var data:TDataSet;
    i:Integer;
begin
{  if not assigned(Pajak) then
    Pajak := TPajak.Create;

  data := Pajak.GetDataPajak();
}
  with strgGrid do
  begin
    Clear;
    RowCount := data.RecordCount+1;
    ColCount := 4;

    Cells[0, 0] := 'CODE';
    Cells[1, 0] := 'NAME';
    Cells[2, 0] := 'PPN  (%)';
    Cells[3, 0] := 'PPN BM  (%)';

    i:=1;
    if RowCount>1 then
    with data do
    while not Eof do
    begin
      Cells[0, i] := FieldByName('PJK_CODE').AsString;
      Cells[1, i] := FieldByName('PJK_NAME').AsString;
      Cells[2, i] := FormatFloat('#,##0.00',FieldByName('PJK_PPN').AsFloat);
      Cells[3, i] := FormatFloat('#,##0.00',FieldByName('PJK_PPNBM').AsFloat);
      Cells[4, i] := FloatToStr(FieldByName('PJK_PPN').AsFloat);
      Cells[5, i] := FloatToStr(FieldByName('PJK_PPNBM').AsFloat);
      Cells[6, i] := IntToStr(FieldByName('PJK_ID').AsInteger);
      i:=i+1;
      Next;
    end
    else
    begin
      RowCount:=2;
      Cells[0, 1] := ' ';
      Cells[1, 1] := ' ';
      Cells[2, 1] := ' ';
      Cells[3, 1] := ' ';
      Cells[4, 1] := '0';
      Cells[5, 1] := '0';
      Cells[6, 1] := '0';
    end;
    FixedRows := 1;
    AutoSize := true;
  end;
end;

procedure TfrmPajak.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPajak := nil;
end;

procedure TfrmPajak.FormShow(Sender: TObject);
begin
  inherited;
  lblHeader.Caption := 'TAX (PAJAK)';
  actRefreshPajakExecute(Self);
end;

procedure TfrmPajak.strgGridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  inherited;
  intIdPajak:= StrToInt(strgGrid.Cells[6,arow]);
  strNama:= strgGrid.Cells[1,arow];
end;

procedure TfrmPajak.FormActivate(Sender: TObject);
begin
  inherited;
  //frmMain.CreateMenu((sender as TForm));
end;

procedure TfrmPajak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //frmMain.DestroyMenu((sender as TForm));
end;

procedure TfrmPajak.FormCreate(Sender: TObject);
begin
  inherited;
//  FPajak := TNewPajak.Create(Self);
end;

end.