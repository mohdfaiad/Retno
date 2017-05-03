CREATE TABLE [dbo].[SCENARIO_DETIL]
(
[SCEND_UNT_ID] [int] NOT NULL,
[SCEND_SCEN_ID] [int] NOT NULL,
[SCEND_SCEN_UNT_ID] [int] NOT NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__SCENARIO___DATE___74CE504D] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[SCENARIO_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__SCENARIO___SCENA__4B8221F7] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SCENARIO_DETIL] ADD CONSTRAINT [PK__SCENARIO__02A6E4204D6A6A69] PRIMARY KEY CLUSTERED  ([SCENARIO_DETIL_ID]) ON [PRIMARY]
GO
