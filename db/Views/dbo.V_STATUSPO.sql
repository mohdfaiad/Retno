SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[V_STATUSPO] AS 
(
SELECT REF$STATUS_PO_ID, STAPO_NAME, STAPO_CODE, 2 AS URUTAN FROM REF$STATUS_PO
--UNION ALL
--SELECT NEWID(),'ALL STATUS','ALL', 1

)
GO
