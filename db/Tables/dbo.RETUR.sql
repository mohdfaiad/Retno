CREATE TABLE [dbo].[RETUR]
(
[RET_UNT_ID] [int] NOT NULL,
[RET_NOBUKTI] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RET_STATUSFLAG] [int] NOT NULL,
[RET_KETERANGAN] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RET_TGLBUKTI] [datetime] NULL,
[RET_SUPMG_SUB_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__RETUR__DATE_CREA__6E2152BE] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[RET_IS_JURNAL] [int] NOT NULL CONSTRAINT [DF__RETUR__RET_IS_JU__6F1576F7] DEFAULT ((0)),
[RET_PO_LPK] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RET_PO_LPK_UNIT_ID] [int] NULL,
[RET_MERCHAN_ID] [int] NOT NULL,
[RET_SUP_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RETUR_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__RETUR__RETUR_ID__6E414E4F] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RETUR] ADD CONSTRAINT [PK__RETUR__9DE36C44702996C1] PRIMARY KEY CLUSTERED  ([RETUR_ID]) ON [PRIMARY]
GO
