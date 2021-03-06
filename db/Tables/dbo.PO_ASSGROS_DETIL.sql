CREATE TABLE [dbo].[PO_ASSGROS_DETIL]
(
[POASD_UNT_ID] [int] NOT NULL,
[POASD_POAS_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POASD_POAS_UNT_ID] [int] NOT NULL,
[POASD_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POASD_SAT_CODE] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POASD_COGS] [numeric] (21, 3) NULL,
[POASD_LAST_COST] [numeric] (21, 3) NULL,
[POASD_SELL_PRICE] [numeric] (21, 3) NULL,
[POASD_DISC] [numeric] (7, 2) NULL,
[POASD_SELL_PRICE_DISC] [numeric] (21, 3) NULL,
[POASD_QTY] [numeric] (18, 3) NULL CONSTRAINT [DF__PO_ASSGRO__POASD__3CBF0154] DEFAULT ((1)),
[POASD_PPN] [numeric] (7, 2) NULL,
[POASD_PPNBM] [numeric] (7, 2) NULL,
[POASD_TOTAL_PRICE] [numeric] (21, 3) NULL,
[POASD_DISC_MEMBER] [numeric] (21, 3) NULL,
[POASD_SO_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[POASD_SO_UNT_ID] [int] NULL,
[POASD_IS_ORDERED] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__PO_ASSGRO__DATE___3DB3258D] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[PO_ASSGROS_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__PO_ASSGRO__PO_AS__6418C597] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_ASSGROS_DETIL] ADD CONSTRAINT [PK__PO_ASSGR__56968BCE66010E09] PRIMARY KEY CLUSTERED  ([PO_ASSGROS_DETIL_ID]) ON [PRIMARY]
GO
