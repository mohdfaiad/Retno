unit ufrmDialogMasterCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmMasterDialog, StdCtrls, ufraFooterDialog2Button, ExtCtrls,
  uConn, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, System.Actions,
  Vcl.ActnList, ufraFooterDialog3Button, uDXUtils, uModCustomer, uModSuplier,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  uDMClient;

type
  TFormMode = (fmAdd, fmEdit);

  TfrmDialogMasterCustomer = class(TfrmMasterDialog)
    Panel1: TPanel;
    lbl5: TLabel;
    lbl1: TLabel;
    edtCustCode: TEdit;
    edtCustName: TEdit;
    lbl12: TLabel;
    edtContactPerson: TEdit;
    lbl8: TLabel;
    edtTitle: TEdit;
    Panel2: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl7: TLabel;
    lbl11: TLabel;
    edtAddress: TEdit;
    edtCity: TEdit;
    edtTelephone: TEdit;
    edtPostCode: TEdit;
    edtFaxNo: TEdit;
    Panel3: TPanel;
    lbl13: TLabel;
    edtTaxNo: TEdit;
    lbl16: TLabel;
    edtNPWP: TEdit;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl27: TLabel;
    edtTermOP: TEdit;
    Panel4: TPanel;
    lbl10: TLabel;
    edtCustDesc: TEdit;
    chkPrincipal: TCheckBox;
    lblSubCode: TLabel;
    edtSupName: TEdit;
    cxLookUpSupCode: TcxExtLookupComboBox;
    chkPKP: TCheckBox;
    chkPPH: TCheckBox;
    cxLookUpTipeBayar: TcxExtLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxLookUpSupCodePropertiesEditValueChanged(Sender: TObject);
  private
    FModCustomer: TModCustomer;
    function GetModCustomer: TModCustomer;
    procedure InitLookup;
    procedure SimpanData;
    property ModCustomer: TModCustomer read GetModCustomer write FModCustomer;
  public
    { Public declarations }
  published
  end;

var
  frmDialogMasterCustomer: TfrmDialogMasterCustomer;

implementation

uses uTSCommonDlg, uRetnoUnit, ufrmSearchRekening;

{$R *.dfm}    

procedure TfrmDialogMasterCustomer.cxLookUpSupCodePropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  edtSupName.Text := cxLookUpSupCode.DS.FieldByName('SUP_NAME').AsString;
end;

procedure TfrmDialogMasterCustomer.FormCreate(Sender: TObject);
begin
  inherited;
  InitLookup;
end;

function TfrmDialogMasterCustomer.GetModCustomer: TModCustomer;
begin
  if not Assigned(FModCustomer) then
    FModCustomer := TModCustomer.Create;
  Result := FModCustomer;
end;

procedure TfrmDialogMasterCustomer.InitLookup;
begin
  cxLookUpTipeBayar.LoadFromDS(
    DMClient.DSProviderClient.TipePembayaran_GetDSLookUp,
    'REF$TIPE_PEMBAYARAN_ID','TPBYR_NAME',
    ['REF$TIPE_PEMBAYARAN_ID','REF$TIPE_PEMBAYARAN_ID'],self
  );

  cxLookUpSupCode.LoadFromDS(
    DMClient.DSProviderClient.Suplier_GetDSLookup,
      'SUPLIER_ID','SUP_CODE',
      ['SUPLIER_ID','SUPLIER_MERCHAN_GRUP_ID'],self
    );
  cxLookUpSupCode.SetMultiPurposeLookup;

end;

procedure TfrmDialogMasterCustomer.SimpanData;
begin
  if not ValidateEmptyCtrl([1], True) then exit;

  // 1
  ModCustomer.CUST_CODE           := edtCustCode.Text;
  ModCustomer.CUST_NAME           := edtCustName.Text;
  ModCustomer.CUST_CONTACT_PERSON := edtContactPerson.Text;
  ModCustomer.CUST_TITLE          := edtTitle.Text;

  //2
  ModCustomer.CUST_ADDRESS    := edtAddress.Text;
  ModCustomer.CUST_CITY       :=  edtCity.Text;
  ModCustomer.CUST_POST_CODE  := edtPostCode.Text;
  ModCustomer.CUST_TELP       :=  edtTelephone.Text;
  ModCustomer.CUST_FAX        := edtFaxNo.Text;

  //3
//  ModCustomer.CUST_IS_PKP   :=
  ModCustomer.CUST_LR_TAX   := edtTaxNo.Text;
//  ModCustomer.CUST_IS_PPH23 :=
  ModCustomer.CUST_NPWP     := edtNPWP.Text;
//  ModCustomer.CUST_TOP      :=
//  isih kurang 1 ngkas

  //4
  ModCustomer.CUST_DESCRIPTION := edtCustDesc.Text;
//  ModCustomer.CUST_IS_PRINCIPAL := chkPrincipal;   isih rung bener yaa...
//  if not VarIsNull(cxLookUpSupCode.EditValue) then
//    ModCustomer.SUPLIER_MERCHAN_GRUP_ID :=

end;

end.
