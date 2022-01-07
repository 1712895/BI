---------------------------
-- 1. Drop all databases
---------------------------

EXEC SP_MSForeachDB '
IF DB_ID(''?'') > 4
BEGIN
EXEC (''
	ALTER DATABASE [?] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE [?]
'')

END

';


-------------------------------------
-- A. PCD_OA_Stage
-------------------------------------
USE [PP_Stage]
GO

TRUNCATE TABLE [dbo].[PCD_OA_Stage]

-------------------------------------
-- 2. Truncate [Postcode_Stage]
-------------------------------------
USE [PP_Stage]
GO

TRUNCATE TABLE [dbo].[Postcode_Stage];

SELECT * 
FROM [dbo].[Postcode_Stage];

-------------------------------------
-- 3.GET [Postcode_Stage] Records
-------------------------------------
USE [PP_Stage]
GO

SELECT *
FROM [dbo].[Postcode_Stage];



-------------------------------------
-- B. Accident_Stage
-------------------------------------
USE [PP_Stage]
GO

TRUNCATE TABLE [dbo].[Accident_Stage]


-------------------------------------
-- C. Vehicle_Stage
-------------------------------------
USE [PP_Stage]
GO

TRUNCATE TABLE [dbo].[Vehicle_Stage]

-------------------------------------
-- D. Postcode_Stage
-------------------------------------
USE [PP_Stage]
GO

TRUNCATE TABLE [dbo].[Postcode_Stage]


SELECT *
FROM [dbo].[Postcode_Stage];

------------------------------------------------
-- E. Casualtie_Stage
------------------------------------------------
USE master
GO

USE [PP_Stage]
GO

TRUNCATE TABLE [dbo].[Casualtie_Stage]

SELECT *
FROM [dbo].[Casualtie_Stage];