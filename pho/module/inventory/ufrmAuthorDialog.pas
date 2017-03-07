unit ufrmAuthorDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmMasterDialog, StdCtrls, ufraFooterDialog2Button, ExtCtrls,
  SUIForm, uNewAuthor;

type
  TfrmAuthorDialog = class(TfrmMasterDialog)
    lblCode: TLabel;
    edtKode: TEdit;
    edtNama: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtTptLhr: TEdit;
    edtAlamat: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtTlp: TEdit;
    edtHp: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    edtKota: TEdit;
    Label1: TLabel;
    chkIsActive: TCheckBox;
    edtEmail: TEdit;
    edtKeahlian: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtLhrD: TEdit;
    edtKodePos: TEdit;
    edtAlamatKantor: TEdit;
    edtMerk: TEdit;
    edtBankNm: TEdit;
    edtBankCab: TEdit;
    edtNoRek: TEdit;
    Label12: TLabel;
    edtBankId: TEdit;
    edtLhrM: TEdit;
    edtLhrY: TEdit;
    Label13: TLabel;
    edtNamaPena: TEdit;
    edtRemark: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure footerDialogMasterbtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FId   : string;
    FAuth : TAuthor;
    procedure SetDataAuth;
    procedure ClearData;
  public
    { Public declarations }
    procedure ShowWithAuthId(aId: string = '');
  end;

var
  frmAuthorDialog: TfrmAuthorDialog;

implementation

{$R *.dfm}
uses uGTSUICommonDlg, uRMSUnit;

procedure TfrmAuthorDialog.ClearData;
begin
  edtKode.Text          := '';
  edtNama.Text          := '';
  edtTptLhr.Text        := '';
  edtLhrD.Text          := '';
  edtLhrM.Text          := '';
  edtLhrY.Text          := '';
  edtAlamat.Text        := '';
  edtTlp.Text           := '';
  edtHp.Text            := '';
  edtKodePos.Text       := '';
  edtKota.Text          := '';
  edtEmail.Text         := '';
  edtKeahlian.Text      := '';
  edtAlamatKantor.Text  := '';
  edtMerk.Text          := '';
  edtNamaPena.Text      := '';
  edtRemark.Text        := '';
  chkIsActive.Checked   := False;

end;


procedure TfrmAuthorDialog.SetDataAuth;
begin
  if Fid <> '' then
  begin
    if FAuth.LoadByID(Fid) then
    begin
      edtKode.Text          := FAuth.ID;
      edtNama.Text          := FAuth.Nama;
      edtTptLhr.Text        := FAuth.TptLhr;
      edtLhrD.Text          := FormatDateTime('DD', FAuth.TglLhr);
      edtLhrM.Text          := FormatDateTime('MM', FAuth.TglLhr);
      edtLhrY.Text          := FormatDateTime('YYYY', FAuth.TglLhr);
      edtAlamat.Text        := FAuth.Alamat;
      edtTlp.Text           := FAuth.NoTelp;
      edtHp.Text            := FAuth.NoHp;
      edtKodePos.Text       := FAuth.KodePos;
      edtKota.Text          := FAuth.Kota;
      edtEmail.Text         := FAuth.Email;
      edtKeahlian.Text      := FAuth.Keahlian;
      edtAlamatKantor.Text  := FAuth.AlamatKantor;
      edtMerk.Text          := FAuth.AtasMerk;
      edtNamaPena.Text      := FAuth.NamaPena;
      edtRemark.Text        := FAuth.Remark;
      chkIsActive.Checked   := FAuth.Status;
    end;
  end
  else
  begin
      ClearData;
  end;


end;

procedure TfrmAuthorDialog.ShowWithAuthId(aId: string = '');
begin
  FId := aId;
  Self.ShowModal;
end;  


procedure TfrmAuthorDialog.footerDialogMasterbtnSaveClick(Sender: TObject);
var
  dtTglLhr  : TDateTime;
begin
  inherited;
  if not TryEncodeDate(StrToInt(edtLhrY.Text), StrToInt(edtLhrM.Text),
            StrToInt(edtLhrD.Text), dtTglLhr) then
  begin
    CommonDlg.ShowError('Input tanggal salah.');
    Exit;
  end;

  try
    with FAuth do
    begin

      UpdateData(edtAlamat.Text, edtAlamatKantor.Text, edtMerk.Text,
                0, edtEmail.Text, edtKode.Text, edtKeahlian.Text,
                edtKodePos.Text, edtKota.Text, edtNama.Text,
                edtNamaPena.Text, 0, edtHp.Text, edtTlp.Text,
                edtRemark.Text, 0 , chkIsActive.Checked, edtTptLhr.Text,
                dtTglLhr);


      if not SaveToDB then
      begin
        cRollbackTrans;
        CommonDlg.ShowError('Gagal Simpan Data Lokasi Stok Opnam.');
      end
      else
      begin
        cCommitTrans;
        CommonDlg.ShowMessage('Data Lokasi Stok Opnam telah disimpan.');
        Close;
      end;

    end;
  finally

    cRollbackTrans;
  end;

end;

procedure TfrmAuthorDialog.FormCreate(Sender: TObject);
begin
  inherited;
  FAuth := TAuthor.Create(nil);
end;

procedure TfrmAuthorDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FAuth.Free;
  inherited;

end;

end.
