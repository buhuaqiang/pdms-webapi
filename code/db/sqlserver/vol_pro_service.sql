
USE [vol_pro_service]
GO
/****** Object:  Table [dbo].[TestService]    Script Date: 2023-06-05 10:48:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestService](
	[Id] [uniqueidentifier] NOT NULL,
	[DbName] [varchar](100) NOT NULL,
	[DbContent] [varchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[CreateID] [int] NULL,
	[Creator] [varchar](30) NULL,
	[Modifier] [varchar](30) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TestService] ([Id], [DbName], [DbContent], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'c0737155-ac39-4f35-87dc-22dd83896cad', N'這是業務數據庫', N'這是業務數據庫。。', CAST(N'2023-05-19 11:46:34.000' AS DateTime), 3362, N'測試管理員', NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [vol_pro_service] SET  READ_WRITE 
GO
