SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[FN_GENERATE_PO]
  @SO_ID AS uniqueidentifier = '4D00D26F-AAB3-4BB1-8AB7-04780E5B107A'
AS
BEGIN
  select DISTINCT SUPLIER_MERCHAN_GRUP_ID from V_SO
	where SO_ID = @SO_ID
END


GO
