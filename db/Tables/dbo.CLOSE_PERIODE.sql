CREATE TABLE [dbo].[CLOSE_PERIODE]
(
[CLPER_COMP_ID] [int] NOT NULL,
[CLPER_DATE] [datetime] NULL CONSTRAINT [DF__CLOSE_PER__CLPER__30C33EC3] DEFAULT (getdate()),
[CLPER_FISCAL_YEAR] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLPER_SALT] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__CLOSE_PER__DATE___31B762FC] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_COMP] [int] NULL,
[OPM_COMP] [int] NULL,
[CLOSE_PERIODE_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__CLOSE_PER__CLOSE__39B87777] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLOSE_PERIODE] ADD CONSTRAINT [PK__CLOSE_PE__ED645EA23BA0BFE9] PRIMARY KEY CLUSTERED  ([CLOSE_PERIODE_ID]) ON [PRIMARY]
GO
