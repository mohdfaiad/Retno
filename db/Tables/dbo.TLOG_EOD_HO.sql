CREATE TABLE [dbo].[TLOG_EOD_HO]
(
[TGL] [date] NULL,
[TLOG_EOD_HO_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__TLOG_EOD___TLOG___70D3A237] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TLOG_EOD_HO] ADD CONSTRAINT [PK__TLOG_EOD__D78D961172BBEAA9] PRIMARY KEY CLUSTERED  ([TLOG_EOD_HO_ID]) ON [PRIMARY]
GO
