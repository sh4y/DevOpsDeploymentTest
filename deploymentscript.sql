if (db_id(N'DevOps') IS NULL)
	CREATE DATABASE DevOps;
GO

USE DevOps;
GO

IF NOT EXISTS (select 1 from sys.schemas where name = 'jcra') 
	EXEC('CREATE SCHEMA [jcra]')
GO

IF NOT EXISTS (select 1 from sys.tables where name = 'Trades')
	CREATE TABLE [jcra].[Trades] (TradeID int PRIMARY KEY, ticker varchar(10));
GO

