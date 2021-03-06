CREATE TABLE [dbo].[ELECTRIC_USE]
(
[ELEC_UNT_ID] [int] NOT NULL,
[ELEC_ELCUST_ID] [int] NOT NULL,
[ELEC_ELCUST_UNT_ID] [int] NOT NULL,
[ELEC_PERIOD] [date] NULL,
[ELEC_BEGIN_STAND] [numeric] (17, 2) NULL,
[ELEC_END_STAND] [numeric] (17, 2) NULL,
[ELEC_STAPRO_ID] [int] NULL,
[ELEC_RATE_PER_KWH] [numeric] (21, 3) NULL,
[ELEC_COST] [numeric] (21, 3) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__ELECTRIC___DATE___1D7B6025] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[ELECTRIC_USE_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__ELECTRIC___ELECT__61FB72FB] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ELECTRIC_USE] ADD CONSTRAINT [PK__ELECTRIC__024EEE7C63E3BB6D] PRIMARY KEY CLUSTERED  ([ELECTRIC_USE_ID]) ON [PRIMARY]
GO
