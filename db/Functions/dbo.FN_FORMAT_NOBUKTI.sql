SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[FN_FORMAT_NOBUKTI]
( @NOURUT AS INTEGER
)
RETURNS varchar(11)
AS
BEGIN
  Declare @NOBUKTI varchar(60);
  SELECT @NOBUKTI = RIGHT('00000000000' + CAST(@NOURUT AS VARCHAR(11)),11);

  RETURN @NOBUKTI
END
GO
