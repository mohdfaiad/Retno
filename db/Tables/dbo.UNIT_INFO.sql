CREATE TABLE [dbo].[UNIT_INFO]
(
[UTI_UNT_ID] [int] NOT NULL,
[UTI_TPPERSH_ID] [int] NULL,
[UTI_ADDRESS] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UTI_NPWP] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__UNIT_INFO__DATE___53F76C67] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[UTI_NPWP_ADR] [varchar] (90) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UTI_NPWP_NAME] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UTI_NPWP_REGS] [date] NOT NULL,
[UNIT_INFO_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__UNIT_INFO__UNIT___51700577] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UNIT_INFO] ADD CONSTRAINT [PK__UNIT_INF__B3AFD40B53584DE9] PRIMARY KEY CLUSTERED  ([UNIT_INFO_ID]) ON [PRIMARY]
GO
