CREATE TABLE [dbo].[BARANG_TURUNAN]
(
[BRGTUR_BRG_CODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRGTUR_BRG_UNT_ID] [int] NOT NULL,
[BRGTUR_BRG_CODE_MASTER] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BRGTUR_BRG_MST_UNT_ID] [int] NOT NULL,
[BRGTUR_QTY_PER_UOM] [numeric] (18, 3) NULL CONSTRAINT [DF__BARANG_TU__BRGTU__0C85DE4D] DEFAULT ((0)),
[BRGTUR_SAT_CODE] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BRGTUR_PERCENT_COGS] [numeric] (7, 2) NULL,
[BRGTUR_IS_HPP] [int] NULL,
[BRGTUR_IS_PECAHAN] [int] NULL,
[BRGTUR_FORMULA_ID] [int] NULL,
[OP_CREATE] [int] NULL,
[DATE_CREATE] [datetime] NULL CONSTRAINT [DF__BARANG_TU__DATE___0D7A0286] DEFAULT (getdate()),
[OP_MODIFY] [int] NULL,
[DATE_MODIFY] [datetime] NULL,
[OPC_UNIT] [int] NULL,
[OPM_UNIT] [int] NULL,
[BARANG_TURUNAN_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__BARANG_TU__BARAN__59F03CDF] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BARANG_TURUNAN] ADD CONSTRAINT [PK__BARANG_T__B81E25365BD88551] PRIMARY KEY CLUSTERED  ([BARANG_TURUNAN_ID]) ON [PRIMARY]
GO