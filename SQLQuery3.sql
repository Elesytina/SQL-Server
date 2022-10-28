USE [test]
GO

/****** Object:  Table [dbo].[Client1]    Script Date: 28.10.2022 21:48:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Client1](
	[Registr] [int] NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[TreatyID] [smallint] NOT NULL,
 CONSTRAINT [PK_Client1] PRIMARY KEY CLUSTERED 
(
	[Registr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


