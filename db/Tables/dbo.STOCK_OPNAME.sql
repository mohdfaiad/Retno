CREATE TABLE [dbo].[STOCK_OPNAME]
(
[SOP_UNT_ID] [int] NOT NULL,
[SOP_FSOP_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SOP_FSOP_UNT_ID] [int] NULL,
[SOP_DATE] [datetime] NOT NULL,
[SOP_REMARK] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SOP_IS_PARTIAL] [int] NOT NULL,
[SOP_IS_COMMIT] [int] NOT NULL,
[SOP_DATE_COMMIT] [datetime] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__STOCK_OPN__DATE___1CDC41A7] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[STOCK_OPNAME_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__STOCK_OPN__STOCK__1837881B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STOCK_OPNAME] ADD CONSTRAINT [PK__STOCK_OP__42E04EB61A1FD08D] PRIMARY KEY CLUSTERED  ([STOCK_OPNAME_ID]) ON [PRIMARY]
GO
