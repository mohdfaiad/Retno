CREATE TABLE [dbo].[RAFAKSI]
(
[RAF_UNT_ID] [int] NOT NULL,
[RAF_NOBUKTI] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RAF_STATUSFLAG] [int] NOT NULL,
[RAF_KETERANGAN] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAF_TGLBUKTI] [datetime] NULL,
[RAF_SUPMG_SUB_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__RAFAKSI__DATE_CR__7132C993] DEFAULT (getdate()),
[OP_CREATE] [int] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[RAF_IS_JURNAL] [int] NOT NULL CONSTRAINT [DF__RAFAKSI__RAF_IS___7226EDCC] DEFAULT ((0)),
[RAF_CARA_BAYAR] [int] NULL,
[RAF_IS_JURNALADS] [int] NULL CONSTRAINT [DF__RAFAKSI__RAF_IS___731B1205] DEFAULT ((0)),
[RAFAKSI_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__RAFAKSI__RAFAKSI__12B3B8EF] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RAFAKSI] ADD CONSTRAINT [PK__RAFAKSI__BC90B248149C0161] PRIMARY KEY CLUSTERED  ([RAFAKSI_ID]) ON [PRIMARY]
GO
