CREATE TABLE [dbo].[CUSTOMER]
(
[CUST_UNT_ID] [int] NOT NULL,
[CUST_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUST_NAME] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUST_ADDRESS] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_CITY] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_POST_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_TELP] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_FAX] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_CONTACT_PERSON] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_TITLE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_IS_PKP] [int] NULL,
[CUST_LR_TAX] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_IS_PPH23] [int] NULL,
[CUST_NPWP] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_TPBYR_ID] [int] NULL,
[CUST_TOP] [int] NULL,
[CUST_DESCRIPTION] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CUST_IS_PRINCIPAL] [int] NULL,
[CUST_SUPMG_SUB_CODE] [varchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__CUSTOMER__DATE_C__5D95E53A] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[CUST_SUP_CODE] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[CUSTOMER_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__CUSTOMER__CUSTOM__1392CE8F] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CUSTOMER] ADD CONSTRAINT [PK__CUSTOMER__1CE12D37157B1701] PRIMARY KEY CLUSTERED  ([CUSTOMER_ID]) ON [PRIMARY]
GO
