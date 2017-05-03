CREATE TABLE [dbo].[PUBLISHER]
(
[PUBS_NO] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PUBS_NAME] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PUBS_ADDRESS1] [varchar] (90) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_ADDRESS2] [varchar] (90) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_PHONE1] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_PHONE2] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_FAX] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CITY] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_ZIP] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_COUNTRY] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CONTACT_NAME1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CONTACT_TITLE1] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CONTACT_PHONE1] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CONTACT_NAME2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CONTACT_TITLE2] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PUBS_CONTACT_PHONE2] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DATE_CREATE] [datetime] NULL,
[DATE_MODIFY] [datetime] NULL,
[OP_CREATE] [int] NULL,
[OP_MODIFY] [int] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[PUBLISHER_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__PUBLISHER__PUBLI__46735417] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PUBLISHER] ADD CONSTRAINT [PK__PUBLISHE__7381341F485B9C89] PRIMARY KEY CLUSTERED  ([PUBLISHER_ID]) ON [PRIMARY]
GO
