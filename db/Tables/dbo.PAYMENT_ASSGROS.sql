CREATE TABLE [dbo].[PAYMENT_ASSGROS]
(
[PAYAS_UNT_ID] [int] NOT NULL,
[PAYAS_NO] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYAS_TRD_ID] [int] NOT NULL,
[PAYAS_TRD_UNT_ID] [int] NOT NULL,
[PAYAS_KDJUR_ID] [int] NOT NULL,
[PAYAS_KDJUR_COMP_ID] [int] NOT NULL,
[PAYAS_REK_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYAS_REK_COMP_ID] [int] NOT NULL,
[PAYAS_REK_CODE_PERKIRAAN] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYAS_REK_PERKIRAAN_COMP_ID] [int] NOT NULL,
[PAYAS_REF_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAYAS_DATE] [datetime] NULL CONSTRAINT [DF__PAYMENT_A__PAYAS__0FEC5ADD] DEFAULT (getdate()),
[PAYAS_TOTAL] [numeric] (21, 3) NOT NULL CONSTRAINT [DF__PAYMENT_A__PAYAS__10E07F16] DEFAULT ((0)),
[PAYAS_DESCRIPTION] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__PAYMENT_A__DATE___11D4A34F] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[ISRECEIPT] [int] NULL,
[PAYAS_REF_ID] [int] NULL,
[PAYAS_SISA] [float] NULL,
[PAYMENT_ASSGROS_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__PAYMENT_A__PAYME__19EAC663] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PAYMENT_ASSGROS] ADD CONSTRAINT [PK__PAYMENT___720192351BD30ED5] PRIMARY KEY CLUSTERED  ([PAYMENT_ASSGROS_ID]) ON [PRIMARY]
GO
