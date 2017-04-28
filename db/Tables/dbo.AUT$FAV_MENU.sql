CREATE TABLE [dbo].[AUT$FAV_MENU]
(
[FAV_USR_ID] [int] NOT NULL,
[FAV_USR_UNT_ID] [int] NOT NULL,
[FAV_GRO_ID] [int] NOT NULL,
[FAV_GRO_UNT_ID] [int] NOT NULL,
[FAV_MENU_ID] [int] NOT NULL,
[FAV_MENU_UNT_ID] [int] NOT NULL,
[AUT$FAV_MENU_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__AUT$FAV_M__AUT$F__6AE5BEB7] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUT$FAV_MENU] ADD CONSTRAINT [PK__AUT$FAV___24174BAE6CCE0729] PRIMARY KEY CLUSTERED  ([AUT$FAV_MENU_ID]) ON [PRIMARY]
GO
