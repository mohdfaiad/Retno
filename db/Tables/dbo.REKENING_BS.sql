CREATE TABLE [dbo].[REKENING_BS]
(
[REKBS_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REKBS_COMP_ID] [int] NOT NULL,
[REKBS_DIVISION] [int] NULL CONSTRAINT [DF__REKENING___REKBS__63A3C44B] DEFAULT ((0)),
[REKBS_IS_HEADER] [int] NULL,
[REKBS_IS_SUB_TOTAL] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__REKENING___DATE___6497E884] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_COMP] [int] NULL,
[OPM_COMP] [int] NULL,
[REKENING_BS_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__REKENING___REKEN__4E1475DF] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REKENING_BS] ADD CONSTRAINT [PK__REKENING__DEABB86B4FFCBE51] PRIMARY KEY CLUSTERED  ([REKENING_BS_ID]) ON [PRIMARY]
GO
