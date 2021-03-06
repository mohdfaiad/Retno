CREATE TABLE [dbo].[FINAL_PAYMENT_DETIL]
(
[FINPAYMENTD_UNT_ID] [int] NOT NULL,
[FINPAYMENTD_FINPAYMENT_ID] [int] NOT NULL,
[FINPAYMENTD_FINPAYMENT_UNT_ID] [int] NOT NULL,
[FINPAYMENTD_CASH] [numeric] (21, 3) NULL,
[FINPAYMENTD_KUPON] [numeric] (21, 3) NULL,
[FINPAYMENTD_CREDIT_CARD] [numeric] (21, 3) NULL,
[FINPAYMENTD_OTHER_KUPON] [numeric] (21, 3) NULL,
[FINPAYMENTD_GRAND_TOTAL] [numeric] (21, 3) NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__FINAL_PAY__DATE___22401542] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[FINAL_PAYMENT_DETIL_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__FINAL_PAY__FINAL__5A5A5133] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FINAL_PAYMENT_DETIL] ADD CONSTRAINT [PK__FINAL_PA__3D84B8595C4299A5] PRIMARY KEY CLUSTERED  ([FINAL_PAYMENT_DETIL_ID]) ON [PRIMARY]
GO
