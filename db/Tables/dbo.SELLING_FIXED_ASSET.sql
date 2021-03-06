CREATE TABLE [dbo].[SELLING_FIXED_ASSET]
(
[SFA_COMP_ID] [int] NOT NULL,
[SFA_FA_ID] [int] NOT NULL,
[SFA_FA_COMP_ID] [int] NOT NULL,
[SFA_TRANS_NO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SFA_TRANS_DATE] [datetime] NULL CONSTRAINT [DF__SELLING_F__SFA_T__7E57BA87] DEFAULT (getdate()),
[SFA_SELL_PRICE] [numeric] (21, 3) NULL,
[SFA_PL] [numeric] (21, 3) NULL,
[SFA_IS_CASH] [int] NULL,
[SFA_REK_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SFA_REK_COMP_ID] [int] NOT NULL,
[SFA_DESCRIPTION] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SFA_ACCUM_DEPR] [numeric] (21, 3) NULL,
[SFA_BOOK_VALUE] [numeric] (21, 3) NULL,
[SFA_CURR_PER_DEPR] [datetime] NULL,
[SFA_STATUS] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__SELLING_F__DATE___7F4BDEC0] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_COMP] [int] NULL,
[OPM_COMP] [int] NULL,
[SELLING_FIXED_ASSET_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__SELLING_F__SELLI__3C3FDE67] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SELLING_FIXED_ASSET] ADD CONSTRAINT [PK__SELLING___C85CFD293E2826D9] PRIMARY KEY CLUSTERED  ([SELLING_FIXED_ASSET_ID]) ON [PRIMARY]
GO
