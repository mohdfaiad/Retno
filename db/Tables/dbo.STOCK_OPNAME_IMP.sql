CREATE TABLE [dbo].[STOCK_OPNAME_IMP]
(
[PLU] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PLUNM] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UOM] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PERIODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NOFORM] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KOORDINATOR] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOKASI] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TIM] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IMPORTED] [int] NOT NULL CONSTRAINT [DF__STOCK_OPN__IMPOR__2665ABE1] DEFAULT ((0)),
[NO_URUT] [int] NULL,
[QTY] [numeric] (21, 3) NULL,
[NOID] [int] NOT NULL,
[STOCK_OPNAME_IMP_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__STOCK_OPN__STOCK__226AFDCB] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STOCK_OPNAME_IMP] ADD CONSTRAINT [PK__STOCK_OP__DA997B2E2453463D] PRIMARY KEY CLUSTERED  ([STOCK_OPNAME_IMP_ID]) ON [PRIMARY]
GO
