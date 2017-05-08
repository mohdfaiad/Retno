CREATE TABLE [dbo].[ID_SYNC]
(
[GENERATOR_NAME] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TABLE_NAME] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSQL] [varchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ID_SYNC_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__ID_SYNC__ID_SYNC__0D3AD6BB] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ID_SYNC] ADD CONSTRAINT [PK__ID_SYNC__34A19B9B0F231F2D] PRIMARY KEY CLUSTERED  ([ID_SYNC_ID]) ON [PRIMARY]
GO