USE [test]
GO

/****** Object:  Table [dbo].[Flat2]    Script Date: 28.10.2022 21:48:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Flat2](
	[FlatID] [int] NOT NULL,
	[AddressFlat] [nvarchar](60) NOT NULL,
	[Key] [bit] NOT NULL,
	[Floors] [tinyint] NOT NULL,
	[Floor] [tinyint] NOT NULL,
	[TypeHause] [nvarchar](50) NOT NULL,
	[TypeDoor] [nvarchar](50) NOT NULL,
	[Balcony] [bit] NOT NULL,
	[TypeBalcony] [nvarchar](50) NULL,
	[Cost] [money] NOT NULL,
	[Compensation] [money] NOT NULL,
	[DateStart] [date] NOT NULL,
	[StopDate] [date] NOT NULL,
	[RegistrID] [int] NOT NULL,
 CONSTRAINT [PK_Flat2] PRIMARY KEY CLUSTERED 
(
	[FlatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Flat2]  WITH CHECK ADD  CONSTRAINT [FK_Flat2_Client1] FOREIGN KEY([RegistrID])
REFERENCES [dbo].[Client1] ([Registr])
GO

ALTER TABLE [dbo].[Flat2] CHECK CONSTRAINT [FK_Flat2_Client1]
GO

ALTER TABLE [dbo].[Flat2]  WITH CHECK ADD  CONSTRAINT [Type_Of_Balcony] CHECK  (([TypeBalcony]='совмещенный' OR [TypeBalcony]='отдельный'))
GO

ALTER TABLE [dbo].[Flat2] CHECK CONSTRAINT [Type_Of_Balcony]
GO

ALTER TABLE [dbo].[Flat2]  WITH CHECK ADD  CONSTRAINT [Type_Of_Door] CHECK  (([TypeDoor]='две шт' OR [TypeDoor]='дер' OR [TypeDoor]='мет'))
GO

ALTER TABLE [dbo].[Flat2] CHECK CONSTRAINT [Type_Of_Door]
GO

ALTER TABLE [dbo].[Flat2]  WITH CHECK ADD  CONSTRAINT [Type_Of_Hause] CHECK  (([TypeHause]='панельный' OR [TypeHause]='кирпичный'))
GO

ALTER TABLE [dbo].[Flat2] CHECK CONSTRAINT [Type_Of_Hause]
GO


