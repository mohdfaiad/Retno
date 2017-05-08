CREATE TABLE [dbo].[ADJUSTMENT_STOCK]
(
[ADJSTOCK_UNT_ID] [int] NOT NULL,
[ADJSTOCK_NO] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADJSTOCK_DATE] [datetime] NULL,
[ADJSTOCK_ALLOCATION] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADJSTOCK_REMARK] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__ADJUSTMEN__DATE___108B795B] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[ADJUSTMENT_STOCK_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__ADJUSTMEN__ADJUS__218BE82B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADJUSTMENT_STOCK] ADD CONSTRAINT [PK__ADJUSTME__4F862DA42374309D] PRIMARY KEY CLUSTERED  ([ADJUSTMENT_STOCK_ID]) ON [PRIMARY]
GO