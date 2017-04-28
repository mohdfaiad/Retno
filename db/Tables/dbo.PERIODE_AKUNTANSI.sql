CREATE TABLE [dbo].[PERIODE_AKUNTANSI]
(
[PERAKT_COMP_ID] [int] NOT NULL,
[PERAKT_FISCAL_YEAR] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERAKT_NO] [int] NOT NULL CONSTRAINT [DF__PERIODE_A__PERAK__1E3A7A34] DEFAULT ((1)),
[PERAKT_NAME] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PERAKT_END_DATE] [date] NOT NULL,
[PERAKT_IS_OPEN] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__PERIODE_A__DATE___1F2E9E6D] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_COMP] [int] NULL,
[OPM_COMP] [int] NULL,
[PERAKT_STATUS] [int] NULL,
[PERIODE_AKUNTANSI_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__PERIODE_A__PERIO__67E9567B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PERIODE_AKUNTANSI] ADD CONSTRAINT [PK__PERIODE___32EFFA1369D19EED] PRIMARY KEY CLUSTERED  ([PERIODE_AKUNTANSI_ID]) ON [PRIMARY]
GO
