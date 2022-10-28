USE [test]
GO

/****** Object:  Table [dbo].[Action2]    Script Date: 28.10.2022 21:46:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Action2](
	[ActionID] [int] NOT NULL,
	[PatrolID] [smallint] NOT NULL,
	[Chief] [nvarchar](60) NOT NULL,
	[Brand] [nvarchar](20) NOT NULL,
	[DateTime] [date] NOT NULL,
	[False] [bit] NOT NULL,
	[Tax] [money] NOT NULL,
	[Document] [nvarchar](50) NOT NULL,
	[Prolong] [date] NOT NULL,
	[Flat_ID] [int] NOT NULL,
 CONSTRAINT [PK_Action2] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Action2]  WITH CHECK ADD  CONSTRAINT [FK_Action2_Flat2] FOREIGN KEY([Flat_ID])
REFERENCES [dbo].[Flat2] ([FlatID])
GO

ALTER TABLE [dbo].[Action2] CHECK CONSTRAINT [FK_Action2_Flat2]
GO


