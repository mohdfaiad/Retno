CREATE TABLE [dbo].[QUOTATION_MARKUP_DETIL]
(
[QUOTMUD_UNT_ID] [int] NOT NULL,
[QUOTMUD_QUOTMU_ID] [int] NOT NULL,
[QUOTMUD_QUOTMU_UNT_ID] [int] NOT NULL,
[QUOTMUD_BHJ_ID] [int] NOT NULL,
[QUOTMUD_BHJ_UNT_ID] [int] NOT NULL,
[QUOTMUD_LAST_COGS] [numeric] (21, 3) NULL,
[QUOTMUD_LAST_COST] [numeric] (21, 3) NULL,
[QUOTMUD_MARKUP_OLD] [numeric] (7, 2) NULL,
[QUOTMUD_MARKUP_NEW] [numeric] (7, 2) NULL,
[QUOTMUD_SELLING_PRICE_OLD] [numeric] (21, 3) NULL,
[QUOTMUD_SELLING_PRICE_NEW] [numeric] (21, 3) NULL,
[QUOTMUD_EFFECTIVE_DATE] [date] NOT NULL,
[QUOTMUD_IS_PROCESSED] [int] NOT NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__QUOTATION__DATE___6D6238AF] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[QUOTATION_MARKUP_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__QUOTATION__QUOTA__2779CBAB] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUOTATION_MARKUP_DETIL] ADD CONSTRAINT [PK__QUOTATIO__D18D53B52962141D] PRIMARY KEY CLUSTERED  ([QUOTATION_MARKUP_DETIL_ID]) ON [PRIMARY]
GO
