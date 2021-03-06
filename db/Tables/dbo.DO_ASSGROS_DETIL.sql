CREATE TABLE [dbo].[DO_ASSGROS_DETIL]
(
[DOASD_UNT_ID] [int] NOT NULL,
[DOASD_DOAS_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOASD_DOAS_UNT_ID] [int] NOT NULL,
[DOASD_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOASD_SAT_CODE] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOASD_COGS] [numeric] (21, 3) NULL,
[DOASD_LAST_COST] [numeric] (21, 3) NULL,
[DOASD_SELL_PRICE] [numeric] (21, 3) NULL,
[DOASD_DISC] [numeric] (21, 3) NULL,
[DOASD_SELL_PRICE_DISC] [numeric] (21, 3) NULL,
[DOASD_QTY] [numeric] (18, 3) NULL CONSTRAINT [DF__DO_ASSGRO__DOASD__7EF6D905] DEFAULT ((1)),
[DOASD_PPN] [numeric] (7, 2) NULL,
[DOASD_PPNBM] [numeric] (7, 2) NULL,
[DOASD_TOTAL_PRICE] [numeric] (21, 3) NULL,
[DOASD_DISC_MEMBER] [numeric] (21, 3) NULL,
[DOASD_QTY_RECEIPT] [numeric] (18, 3) NULL CONSTRAINT [DF__DO_ASSGRO__DOASD__7FEAFD3E] DEFAULT ((1)),
[DOASD_TOTAL_PRICE_RECEIPT] [numeric] (21, 3) NULL,
[DOASD_DISC_MEMBER_RECEIPT] [numeric] (21, 3) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__DO_ASSGRO__DATE___00DF2177] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[DO_ASSGROS_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__DO_ASSGRO__DO_AS__161A357F] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DO_ASSGROS_DETIL] ADD CONSTRAINT [PK__DO_ASSGR__96B12AD318027DF1] PRIMARY KEY CLUSTERED  ([DO_ASSGROS_DETIL_ID]) ON [PRIMARY]
GO
