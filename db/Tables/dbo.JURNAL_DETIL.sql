CREATE TABLE [dbo].[JURNAL_DETIL]
(
[JURD_UNT_ID] [int] NOT NULL,
[JURD_JUR_ID] [int] NOT NULL,
[JURD_JUR_UNT_ID] [int] NOT NULL,
[JURD_COCTER_ID] [int] NULL,
[JURD_COCTER_UNT_ID] [int] NULL,
[JURD_REK_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JURD_REK_COMP_ID] [int] NOT NULL,
[JURD_IS_DEBET] [int] NULL,
[JURD_DEBET] [numeric] (21, 3) NULL,
[JURD_CREDIT] [numeric] (21, 3) NULL,
[JURD_DESCRIPTION] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__JURNAL_DE__DATE___67DE6983] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[JURNAL_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__JURNAL_DE__JURNA__1D5142F3] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[JURNAL_DETIL] ADD CONSTRAINT [PK__JURNAL_D__747CF0671F398B65] PRIMARY KEY CLUSTERED  ([JURNAL_DETIL_ID]) ON [PRIMARY]
GO
