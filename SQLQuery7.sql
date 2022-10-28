USE [test]
GO

/****** Object:  View [dbo].[flatAction]    Script Date: 28.10.2022 21:51:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[flatAction] AS SELECT TOP(10) * FROM Flat2 LEFT JOIN Action2 ON Action2.Flat_ID=Flat2.FlatID;
GO


