CREATE TABLE [dbo].[SUPLIER]
(
[SUP_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUP_NAME] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUP_ADDRESS] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUP_CITY] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_POST_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_TELP] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_FAX] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_CONTACT_PERSON] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_TITLE] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_IS_PKP] [int] NULL,
[SUP_LR_TAX] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_NPWP] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_BANK_ACCOUNT_NO] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_BANK_ACCOUNT_NAME] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_SERVICE_LEVEL] [numeric] (7, 2) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__SUPLIER__DATE_CR__284DF453] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[SUP_HO_AUTHORIZE] [int] NULL CONSTRAINT [DF__SUPLIER__SUP_HO___2942188C] DEFAULT ((0)),
[SUP_BANK_BRANCH] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_BANK_ADDRESS] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUP_IS_ACTIVE] [int] NULL CONSTRAINT [DF__SUPLIER__SUP_IS___2A363CC5] DEFAULT ((1)),
[SUP_NPWP_ALAMAT] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SUPLIER_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__SUPLIER__SUPLIER__263B8EAF] DEFAULT (newid()),
[SUPLIER_GROUP_ID] [uniqueidentifier] NULL,
[REF$TIPE_PERUSAHAAN_ID] [uniqueidentifier] NULL,
[BANK_ID] [uniqueidentifier] NULL,
[REF$TIPE_SUPLIER_ID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SUPLIER] ADD CONSTRAINT [PK__SUPLIER__7DAC86812823D721] PRIMARY KEY CLUSTERED  ([SUPLIER_ID]) ON [PRIMARY]
GO