CREATE TABLE [dbo].[STOCK_OPNAME_DETIL]
(
[SOPD_UNT_ID] [int] NOT NULL,
[SOPD_SOP_ID] [int] NOT NULL,
[SOPD_SOP_UNT_ID] [int] NOT NULL,
[SOPD_DATE] [datetime] NOT NULL,
[SOPD_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPD_STOCK_COMMON] [numeric] (18, 3) NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___1EC48A19] DEFAULT ((0)),
[SOPD_STOCK_TRADER] [numeric] (18, 3) NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___1FB8AE52] DEFAULT ((0)),
[SOPD_STOCK_ASSGROS] [numeric] (18, 3) NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___20ACD28B] DEFAULT ((0)),
[SOPD_STOCK] [bigint] NULL,
[SOPD_STOCK_DATA_COMMON] [numeric] (18, 3) NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___21A0F6C4] DEFAULT ((0)),
[SOPD_STOCK_DATA_TRADER] [numeric] (18, 3) NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___22951AFD] DEFAULT ((0)),
[SOPD_STOCK_DATA_ASSGROS] [numeric] (18, 3) NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___23893F36] DEFAULT ((0)),
[SOPD_STOCK_DATA] [bigint] NULL,
[SOPD_SELISIH_STOCK_COMMON] [bigint] NULL,
[SOPD_SELISIH_STOCK_TRADER] [bigint] NULL,
[SOPD_SELISIH_STOCK_ASSGROS] [bigint] NULL,
[SOPD_SELISIH_STOCK] [bigint] NULL,
[OP_CREATE] [int] NULL,
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[SOPD_UOM] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPD_NOURUT] [int] NULL,
[DATE_CREATE] [datetime] NULL,
[SOPD_UOM_UNIT] [int] NOT NULL,
[SOPD_TRANSFER] [int] NOT NULL CONSTRAINT [DF__STOCK_OPN__SOPD___247D636F] DEFAULT ((0)),
[STOCK_OPNAME_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__STOCK_OPN__STOCK__1466F737] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STOCK_OPNAME_DETIL] ADD CONSTRAINT [PK__STOCK_OP__94C574A7164F3FA9] PRIMARY KEY CLUSTERED  ([STOCK_OPNAME_DETIL_ID]) ON [PRIMARY]
GO