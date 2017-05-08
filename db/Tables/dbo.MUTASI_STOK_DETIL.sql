CREATE TABLE [dbo].[MUTASI_STOK_DETIL]
(
[MSD_UNT_ID] [int] NOT NULL,
[MSD_MSTOK_ID] [int] NOT NULL,
[MSD_MSTOK_UNT_ID] [int] NOT NULL,
[MSD_BRG_CODE] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSD_QTY] [numeric] (18, 3) NULL,
[MSD_QTY_COMMON] [numeric] (18, 3) NULL,
[MSD_QTY_TRADER] [numeric] (18, 3) NULL,
[MSD_QTY_ASSGROS] [numeric] (18, 3) NULL,
[MSD_SAT_CODE] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL,
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[MSD_LAST_COGS] [float] NOT NULL,
[MSD_SELL_PRICE_DISC] [numeric] (21, 3) NOT NULL,
[MSD_DISC_NOMINAL] [numeric] (21, 3) NOT NULL,
[MSD_DISC_PERSEN] [numeric] (21, 3) NOT NULL,
[MSD_SELL_PRICE] [numeric] (21, 3) NOT NULL,
[MSD_NO_URUT] [int] NOT NULL,
[MSD_DOD_DO_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MSD_DOD_DO_UNT_ID] [int] NULL,
[MSD_DOD_ID] [int] NULL,
[MUTASI_STOK_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__MUTASI_ST__MUTAS__7AFC2AEF] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MUTASI_STOK_DETIL] ADD CONSTRAINT [PK__MUTASI_S__B771B0767CE47361] PRIMARY KEY CLUSTERED  ([MUTASI_STOK_DETIL_ID]) ON [PRIMARY]
GO