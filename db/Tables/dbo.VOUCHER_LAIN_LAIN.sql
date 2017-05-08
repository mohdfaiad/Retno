CREATE TABLE [dbo].[VOUCHER_LAIN_LAIN]
(
[VCRL_UNT_ID] [int] NOT NULL,
[VCRL_QTY] [numeric] (18, 3) NULL,
[VCRL_VALUE] [numeric] (21, 3) NULL,
[VCRL_TOTAL_VALUE] [numeric] (21, 3) NULL,
[VCRL_TRANS_NO] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCRL_TRANS_UNT_ID] [int] NOT NULL,
[VCRL_IS_ACTIVE] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__VOUCHER_L__DATE___605D434C] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[VOUCHER_LAIN_LAIN_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__VOUCHER_L__VOUCH__45FE52CB] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VOUCHER_LAIN_LAIN] ADD CONSTRAINT [PK__VOUCHER___B2E3536147E69B3D] PRIMARY KEY CLUSTERED  ([VOUCHER_LAIN_LAIN_ID]) ON [PRIMARY]
GO