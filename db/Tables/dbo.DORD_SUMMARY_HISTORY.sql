CREATE TABLE [dbo].[DORD_SUMMARY_HISTORY]
(
[DOSH_UNT_ID] [int] NOT NULL,
[DOSH_DO_NO_REF] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOSH_DO_UNT_ID_REF] [int] NOT NULL,
[DOSH_DATE] [datetime] NULL CONSTRAINT [DF__DORD_SUMM__DOSH___76619304] DEFAULT (getdate()),
[DOSH_CNRD_ID] [int] NULL,
[DOSH_CNRD_UNT_ID] [int] NULL,
[DOSH_CN] [numeric] (21, 3) NULL,
[DOSH_DNRD_ID] [int] NULL,
[DOSH_DNRD_UNT_ID] [int] NULL,
[DOSH_DN] [numeric] (21, 3) NULL,
[DOSH_CNDD_ID] [int] NULL,
[DOSH_CNDD_UNT_ID] [int] NULL,
[DOSH_DAMAGE] [numeric] (21, 3) NULL,
[DOSH_DO_NO_NEW] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DOSH_DO_UNT_ID_NEW] [int] NULL,
[DOSH_IS_PROCESS] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__DORD_SUMM__DATE___7755B73D] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[DORD_SUMMARY_HISTORY_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__DORD_SUMM__DORD___750E476F] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DORD_SUMMARY_HISTORY] ADD CONSTRAINT [PK__DORD_SUM__F44C5F7276F68FE1] PRIMARY KEY CLUSTERED  ([DORD_SUMMARY_HISTORY_ID]) ON [PRIMARY]
GO