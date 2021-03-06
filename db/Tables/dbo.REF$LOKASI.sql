CREATE TABLE [dbo].[REF$LOKASI]
(
[LOK_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOK_UNT_ID] [int] NULL,
[LOK_RACK] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOK_BAY] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOK_SHELVE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOK_POSITION] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOK_NAME] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOK_TYPE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOK_IS_ACTIVE] [int] NULL,
[LOK_DESCRIPTION] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOK_CAPACITY] [int] NULL CONSTRAINT [DF__REF$LOKAS__LOK_C__1B29035F] DEFAULT ((0)),
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__REF$LOKAS__DATE___1C1D2798] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[REF$LOKASI_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__REF$LOKAS__REF$L__03E676AB] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REF$LOKASI] ADD CONSTRAINT [PK__REF$LOKA__F63B284E05CEBF1D] PRIMARY KEY CLUSTERED  ([REF$LOKASI_ID]) ON [PRIMARY]
GO
