CREATE TABLE [dbo].[MUTASI_GUDANG_DETIL]
(
[MGD_UNT_ID] [int] NOT NULL,
[MGD_MUTGUD_ID] [int] NOT NULL,
[MGD_MUTGUD_UNT_ID] [int] NOT NULL,
[MGD_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MGD_QTY] [numeric] (18, 3) NULL CONSTRAINT [DF__MUTASI_GU__MGD_Q__056ECC6A] DEFAULT ((0)),
[MGD_QTY_COMMON] [numeric] (18, 3) NULL CONSTRAINT [DF__MUTASI_GU__MGD_Q__0662F0A3] DEFAULT ((0)),
[MGD_QTY_TRADER] [numeric] (18, 3) NULL CONSTRAINT [DF__MUTASI_GU__MGD_Q__075714DC] DEFAULT ((0)),
[MGD_QTY_ASSGROS] [numeric] (18, 3) NULL CONSTRAINT [DF__MUTASI_GU__MGD_Q__084B3915] DEFAULT ((0)),
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__MUTASI_GU__DATE___093F5D4E] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[MGD_GUDBRG_ID] [int] NULL,
[MGD_GUDBRG_UNT_ID] [int] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[MUTASI_GUDANG_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__MUTASI_GU__MUTAS__029D4CB7] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MUTASI_GUDANG_DETIL] ADD CONSTRAINT [PK__MUTASI_G__7708457B04859529] PRIMARY KEY CLUSTERED  ([MUTASI_GUDANG_DETIL_ID]) ON [PRIMARY]
GO