unit ufrmSupplierType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmMaster, ufraFooter5Button, StdCtrls, ExtCtrls, ActnList,
  uConn, uRetnoUnit, DB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.Actions, dxSkinsCore, ufrmMasterBrowse, dxBarBuiltInMenu,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, ufraFooter4Button,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxPC,
  Datasnap.DBClient, uDMClient;

type
  TfrmSupplierType = class(TfrmMasterBrowse)
  private
    FCDSBrowse: TClientDataset;
    procedure RefreshData;
    property CDSBrowse: TClientDataset read FCDSBrowse write FCDSBrowse;
  public
    { Public declarations }
  end;

var
  frmSupplierType: TfrmSupplierType;

implementation

uses uTSCommonDlg, ufrmDialogSupplierType, Math,  uConstanta, uDXUtils, uDBUtils;

{$R *.dfm}

procedure TfrmSupplierType.RefreshData;
begin
  CDSBrowse := TDBUtils.DSToCDS(
    DMClient.DSProviderClient.TipeSuplier_GetDSOverview(),self);
  cxGridView.LoadFromCDS(CDSBrowse);
  // TODO -cMM: TfrmSupplierType.RefreshData default body inserted
end;

end.
