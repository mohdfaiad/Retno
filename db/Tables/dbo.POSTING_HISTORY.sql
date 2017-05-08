CREATE TABLE [dbo].[POSTING_HISTORY]
(
[POSTHIS_COMP_ID] [int] NOT NULL,
[POSTHIS_DATE] [datetime] NOT NULL CONSTRAINT [DF__POSTING_H__POSTH__2E70E1FD] DEFAULT (getdate()),
[POSTHIS_TIMES] [int] NULL CONSTRAINT [DF__POSTING_H__POSTH__2F650636] DEFAULT ((1)),
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__POSTING_H__DATE___30592A6F] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_COMP] [int] NULL,
[OPM_COMP] [int] NULL,
[POSTING_HISTORY_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__POSTING_H__POSTI__54D68207] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POSTING_HISTORY] ADD CONSTRAINT [PK__POSTING___DE348B8656BECA79] PRIMARY KEY CLUSTERED  ([POSTING_HISTORY_ID]) ON [PRIMARY]
GO