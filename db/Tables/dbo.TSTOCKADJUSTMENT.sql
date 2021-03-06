CREATE TABLE [dbo].[TSTOCKADJUSTMENT]
(
[NOBUKTI] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNT_ID] [int] NOT NULL,
[TGLBUKTI] [date] NULL,
[KETERANGAN] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DATE_CREATE] [datetime] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT_ID] [int] NULL,
[OPM_UNIT_ID] [int] NULL,
[OP_CREATE] [int] NULL,
[OP_MODIFY] [int] NULL,
[ISJOURNALIZED] [int] NULL,
[ISFROMLPK] [int] NULL,
[TSTOCKADJUSTMENT_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__TSTOCKADJ__TSTOC__3138400F] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TSTOCKADJUSTMENT] ADD CONSTRAINT [PK__TSTOCKAD__444DA4C233208881] PRIMARY KEY CLUSTERED  ([TSTOCKADJUSTMENT_ID]) ON [PRIMARY]
GO
