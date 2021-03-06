CREATE TABLE [dbo].[REF$KODE_JURNAL]
(
[KDJUR_COMP_ID] [int] NOT NULL,
[KDJUR_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KDJUR_NAME] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__REF$KODE___DATE___1293BD5E] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_COMP] [int] NULL,
[OPM_COMP] [int] NULL,
[KDJUR_REK_CODE_FROM] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KDJUR_REK_COMP_ID_FROM] [int] NULL,
[KDJUR_REK_CODE_TO] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KDJUR_REK_COMP_ID_TO] [int] NULL,
[KDJUR_TIPE] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__REF$KODE___KDJUR__1387E197] DEFAULT ('LAINNYA'),
[KDJUR_GROJUR_CODE] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[REF$KODE_JURNAL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__REF$KODE___REF$K__233F2673] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REF$KODE_JURNAL] ADD CONSTRAINT [PK__REF$KODE__02CC38AC25276EE5] PRIMARY KEY CLUSTERED  ([REF$KODE_JURNAL_ID]) ON [PRIMARY]
GO
