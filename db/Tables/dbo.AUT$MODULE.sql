CREATE TABLE [dbo].[AUT$MODULE]
(
[MOD_UNT_ID] [int] NOT NULL,
[MOD_NAME] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MOD_CAPTION] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MOD_LABEL] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MOD_ACTION] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MOD_ICON_PATH] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AUT$MODULE_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__AUT$MODUL__AUT$M__7E62A77F] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUT$MODULE] ADD CONSTRAINT [PK__AUT$MODU__E8620052004AEFF1] PRIMARY KEY CLUSTERED  ([AUT$MODULE_ID]) ON [PRIMARY]
GO
