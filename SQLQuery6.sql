USE [test]
GO

/****** Object:  View [dbo].[flat_action]    Script Date: 28.10.2022 21:50:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[flat_action] AS SELECT* FROM Flat2 LEFT JOIN Action2 ON Action2.Flat_ID=Flat2.FlatID;
GO


