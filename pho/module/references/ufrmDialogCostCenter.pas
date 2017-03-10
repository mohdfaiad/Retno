unit ufrmDialogCostCenter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmMasterDialog, System.Actions,
  Vcl.ActnList, ufraFooterDialog3Button, Vcl.ExtCtrls, Vcl.StdCtrls,
  uInterface, uModCostCenter, uTSCommonDlg, uClientClasses;

type
  TfrmDialogCostCenter = class(TfrmMasterDialog, ICRUDAble)
    lblCode: TLabel;
    LblName: TLabel;
    edtCode: TEdit;
    edtName: TEdit;
    procedure actDeleteExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
  private
    FCostCenter: TModCostCenter;
    function GetCostCenter: TModCostCenter;
    { Private declarations }
  public
    procedure LoadData(AID : String); stdcall;
    property CostCenter: TModCostCenter read GetCostCenter write FCostCenter;
    { Public declarations }
  end;
var
  frmDialogCostCenter: TfrmDialogCostCenter;

implementation
uses
  uAppUtils, uDXUtils, System.DateUtils, uDBUtils, uDMClient;

{$R *.dfm}

procedure TfrmDialogCostCenter.actDeleteExecute(Sender: TObject);
begin
  inherited;
  if TAppUtils.ConfirmHapus then
  begin
    DMClient.CrudClient.DeleteFromDB(FCostCenter);
  end;
end;

procedure TfrmDialogCostCenter.actSaveExecute(Sender: TObject);
begin
  inherited;
  if edtCode.Text='' then
  begin
    CommonDlg.ShowErrorEmpty('CODE');
    edtCode.SetFocus;
    Exit;
  end;
  if edtName.Text='' then
  begin
    CommonDlg.ShowErrorEmpty('NAME');
    edtName.SetFocus;
    Exit;
  end;


  if TAppUtils.ConfirmSimpan then
  begin
    CostCenter.COCTER_CODE := edtCode.Text;
    CostCenter.COCTER_NAME := edtName.Text;

    DMClient.CrudClient.SaveToDB(FCostCenter);
  end;
end;

function TfrmDialogCostCenter.GetCostCenter: TModCostCenter;
begin
  if not Assigned(FCostCenter) then
    FCostCenter := TModCostCenter.Create;

  Result := FCostCenter;
end;

procedure TfrmDialogCostCenter.LoadData(AID : String);
begin
  FreeAndNil(FCostCenter);

  edtCode.Text := '';
  edtName.Text := '';

//  with TCrudClient.Create(DMClient.RestConn, False) do
//  begin
  FCostCenter  := DMClient.CrudClient.Retrieve(TModCostCenter.ClassName, AID) as TModCostCenter;
  if FCostCenter <> nil then
  begin
    edtCode.Text := FCostCenter.COCTER_CODE;
    edtName.Text := FCostCenter.COCTER_NAME;
  end;

end;

end.