inherited frmDialogSysParm: TfrmDialogSysParm
  Left = 309
  Top = 174
  Caption = 'Sytem Parameter'
  ClientHeight = 232
  ClientWidth = 455
  Constraints.MinHeight = 32
  ExplicitWidth = 471
  ExplicitHeight = 271
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 455
    Height = 176
    ExplicitWidth = 455
    ExplicitHeight = 176
    object Label9: TLabel
      Left = 67
      Top = 18
      Width = 11
      Height = 16
      Alignment = taRightJustify
      Caption = 'ID'
    end
    object Label1: TLabel
      Left = 50
      Top = 42
      Width = 27
      Height = 16
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Name'
      ParentBiDiMode = False
    end
    object Label10: TLabel
      Left = 51
      Top = 67
      Width = 26
      Height = 16
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Value'
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 47
      Top = 92
      Width = 30
      Height = 16
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Group'
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 19
      Top = 117
      Width = 58
      Height = 16
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Description'
      ParentBiDiMode = False
    end
    object edtId: TEdit
      Left = 80
      Top = 14
      Width = 57
      Height = 22
      Hint = 'TEKAN F5  UNTUK LOOKUP'
      TabStop = False
      CharCase = ecUpperCase
      Color = 15198183
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object edtNm: TEdit
      Left = 80
      Top = 39
      Width = 177
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object edtValue: TEdit
      Left = 80
      Top = 64
      Width = 305
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object edtGroup: TEdit
      Left = 80
      Top = 89
      Width = 177
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
    end
    object edtDesc: TEdit
      Left = 80
      Top = 114
      Width = 305
      Height = 22
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  inherited footerDialogMaster: TfraFooterDialog3Button
    Top = 176
    Width = 455
    ExplicitTop = 176
    ExplicitWidth = 455
    inherited pnlFooter: TPanel
      Width = 455
      ExplicitWidth = 455
      inherited btnClose: TcxButton
        Left = 378
        ExplicitLeft = 378
      end
      inherited btnSave: TcxButton
        Left = 275
        Action = actSave
        OnClick = footerDialogMasterbtnSaveClick
        ExplicitLeft = 275
      end
      inherited btnDelete: TcxButton
        Action = actDelete
      end
    end
    inherited pnlSortCut: TPanel
      Width = 455
      ExplicitWidth = 455
      inherited lbl4: TLabel
        Left = 275
        Height = 15
        ExplicitLeft = 292
      end
      inherited lbl5: TLabel
        Left = 374
        Height = 15
        ExplicitLeft = 367
      end
      inherited lbl3: TLabel
        Height = 15
      end
    end
  end
  inherited actlstMasterDialog: TActionList
    inherited actDelete: TAction
      OnExecute = actDeleteExecute
    end
  end
end
