CREATE TABLE [dbo].[REF$STATUS_KELUARGA]
(
[STAKLRG_NAME] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL,
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[REF$STATUS_KELUARGA_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__REF$STATU__REF$S__04BA9F53] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REF$STATUS_KELUARGA] ADD CONSTRAINT [PK__REF$STAT__61BF333106A2E7C5] PRIMARY KEY CLUSTERED  ([REF$STATUS_KELUARGA_ID]) ON [PRIMARY]
GO
