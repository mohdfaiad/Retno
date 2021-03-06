CREATE TABLE [dbo].[PAYMENT_CLAIM_FAKTUR_DETIL]
(
[PAYCFD_UNT_ID] [int] NOT NULL,
[PAYCFD_PAYCF_ID] [int] NULL,
[PAYCFD_PAYCF_UNT_ID] [int] NULL,
[GIRONUMBER] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMOUNT] [float] NULL,
[DUEDATE] [datetime] NULL,
[PAYCFD_STAPRO_ID] [int] NULL,
[PAYCFD_STATUS_NOTE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAYCFD_IS_PAY_POT] [int] NULL CONSTRAINT [DF__PAYMENT_C__PAYCF__1975C517] DEFAULT ((0)),
[PAYMENT_CLAIM_FAKTUR_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__PAYMENT_C__PAYME__2D67AF2B] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PAYMENT_CLAIM_FAKTUR_DETIL] ADD CONSTRAINT [PK__PAYMENT___2101BB9A2F4FF79D] PRIMARY KEY CLUSTERED  ([PAYMENT_CLAIM_FAKTUR_DETIL_ID]) ON [PRIMARY]
GO
