CREATE TABLE [dbo].[PAYMENT_ASSGROS_DETIL]
(
[PAYASD_UNT_ID] [int] NOT NULL,
[PAYASD_PAYAS_ID] [int] NOT NULL,
[PAYASD_PAYAS_UNT_ID] [int] NOT NULL,
[PAYASD_DOAS_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYASD_DOAS_UNT_ID] [int] NOT NULL,
[PAYASD_INVAS_ID] [int] NOT NULL,
[PAYASD_INVAS_UNT_ID] [int] NOT NULL,
[PAYASD_TOTAL] [numeric] (21, 3) NOT NULL CONSTRAINT [DF__PAYMENT_A__PAYAS__13BCEBC1] DEFAULT ((0)),
[PAYASD_DESCRIPTION] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__PAYMENT_A__DATE___14B10FFA] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[PAYMENT_ASSGROS_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__PAYMENT_A__PAYME__3FA65AF7] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PAYMENT_ASSGROS_DETIL] ADD CONSTRAINT [PK__PAYMENT___C4156154418EA369] PRIMARY KEY CLUSTERED  ([PAYMENT_ASSGROS_DETIL_ID]) ON [PRIMARY]
GO
