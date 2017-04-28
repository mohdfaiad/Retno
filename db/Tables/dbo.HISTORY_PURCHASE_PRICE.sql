CREATE TABLE [dbo].[HISTORY_PURCHASE_PRICE]
(
[PPH_UNT_ID] [int] NOT NULL,
[PPH_DATE] [datetime] NULL CONSTRAINT [DF__HISTORY_P__PPH_D__4A4E069C] DEFAULT (getdate()),
[PPH_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPH_SUPMG_SUB_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPH_PURCHASE_PRICE_OLD] [numeric] (21, 3) NULL,
[PPH_DISC1_OLD] [numeric] (7, 2) NULL,
[PPH_DISC2_OLD] [numeric] (7, 2) NULL,
[PPH_DISC3_OLD] [numeric] (7, 2) NULL,
[PPH_PURCHASE_PRICE_NEW] [numeric] (21, 3) NULL,
[PPH_DISC1_NEW] [numeric] (7, 2) NULL,
[PPH_DISC2_NEW] [numeric] (7, 2) NULL,
[PPH_DISC3_NEW] [numeric] (7, 2) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__HISTORY_P__DATE___4B422AD5] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[HISTORY_PURCHASE_PRICE_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__HISTORY_P__HISTO__40106F4B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HISTORY_PURCHASE_PRICE] ADD CONSTRAINT [PK__HISTORY___6242FEBB41F8B7BD] PRIMARY KEY CLUSTERED  ([HISTORY_PURCHASE_PRICE_ID]) ON [PRIMARY]
GO
