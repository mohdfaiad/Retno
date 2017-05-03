CREATE TABLE [dbo].[POTONGAN_TAGIHAN]
(
[POTTGH_UNT_ID] [int] NOT NULL,
[POTTGH_SUPMG_SUB_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POTTGH_NO] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POTTGH_TOTAL] [numeric] (21, 3) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__POTONGAN___DATE___324172E1] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[POTTGH_SUP_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[POTTGH_DATE] [datetime] NULL,
[POTONGAN_TAGIHAN_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__POTONGAN___POTON__5105F123] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POTONGAN_TAGIHAN] ADD CONSTRAINT [PK__POTONGAN__0919EDDD52EE3995] PRIMARY KEY CLUSTERED  ([POTONGAN_TAGIHAN_ID]) ON [PRIMARY]
GO
