USE MASTER; 
GO

DROP DATABASE IF EXISTS MetaData;
GO

CREATE DATABASE MetaData;
GO

USE MetaData;


CREATE TABLE Data_Flow (
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NULL,
	[LSET] [datetime] NULL,
	[CET] [datetime] NULL,
);


