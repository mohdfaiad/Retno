CREATE TABLE [dbo].[SYS$PARAMETER_UNIT_TEMPLATE]
(
[PARTMP_NAME] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PARTMP_DEFAULT] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PARTMP_GROUP] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PARTMP_DESCRIPTION] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYS$PARAMETER_UNIT_TEMPLATE_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__SYS$PARAM__SYS$P__7F36D027] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SYS$PARAMETER_UNIT_TEMPLATE] ADD CONSTRAINT [PK__SYS$PARA__AD743361011F1899] PRIMARY KEY CLUSTERED  ([SYS$PARAMETER_UNIT_TEMPLATE_ID]) ON [PRIMARY]
GO
