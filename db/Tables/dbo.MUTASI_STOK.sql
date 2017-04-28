CREATE TABLE [dbo].[MUTASI_STOK]
(
[MSTOK_UNT_ID] [int] NOT NULL,
[MSTOK_INV_NO] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSTOK_NO] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSTOK_DATE] [datetime] NULL,
[MSTOK_DESCRIPTION] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSTOK_FORM] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSTOK_TO] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL,
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[MSTOK_DES_GUD_UNT_ID] [int] NOT NULL,
[MSTOK_DES_GUD_ID] [int] NOT NULL,
[MSTOK_SRC_GUD_UNT_ID] [int] NOT NULL,
[MSTOK_SRC_GUD_ID] [int] NOT NULL,
[MSTOK_CLOSE] [int] NOT NULL,
[MSTOK_PO_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSTOK_PO_UNT_ID] [int] NULL,
[MUTASI_STOK_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__MUTASI_ST__MUTAS__7ECCBBD3] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MUTASI_STOK] ADD CONSTRAINT [PK__MUTASI_S__A7D4A3AB00B50445] PRIMARY KEY CLUSTERED  ([MUTASI_STOK_ID]) ON [PRIMARY]
GO
