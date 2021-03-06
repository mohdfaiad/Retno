CREATE TABLE [dbo].[ADJUSTMENT_CASHBACK]
(
[ADJCASH_UNT_ID] [int] NOT NULL,
[ADJCASH_TRANS_NO] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADJCASH_TRANS_UNT_ID] [int] NOT NULL,
[ADJCASH_DATE] [datetime] NULL CONSTRAINT [DF__ADJUSTMEN__ADJCA__023D5A04] DEFAULT (getdate()),
[ADJCASH_BEFORE] [numeric] (21, 3) NULL,
[ADJCASH_ACTUALLY] [numeric] (21, 3) NULL,
[ADJCASH_VALUE] [numeric] (21, 3) NULL,
[ADJCASH_NOTE] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__ADJUSTMEN__DATE___03317E3D] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[ADJUSTMENT_CASHBACK_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__ADJUSTMEN__ADJUS__481BA567] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADJUSTMENT_CASHBACK] ADD CONSTRAINT [PK__ADJUSTME__D7D637D64A03EDD9] PRIMARY KEY CLUSTERED  ([ADJUSTMENT_CASHBACK_ID]) ON [PRIMARY]
GO
