CREATE TABLE [dbo].[TKODEGLTRANSITEM]
(
[HEADER_ID] [int] NOT NULL,
[AMOUNTSOURCEFLAG] [int] NOT NULL,
[ISDEBET] [int] NULL,
[STATUSFLAG] [int] NULL,
[COMPANY_ID] [int] NOT NULL,
[COMPANYACCOUNT_ID] [int] NOT NULL,
[ACCOUNT_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TKODEGLTRANSITEM_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__TKODEGLTR__TKODE__6561EF8B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TKODEGLTRANSITEM] ADD CONSTRAINT [PK__TKODEGLT__854A09E2674A37FD] PRIMARY KEY CLUSTERED  ([TKODEGLTRANSITEM_ID]) ON [PRIMARY]
GO
