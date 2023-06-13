
USE [vol_pro_test]
GO
/****** Object:  Table [dbo].[TestDb]    Script Date: 2023-06-05 10:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestDb](
	[Id] [uniqueidentifier] NOT NULL,
	[TestDbName] [varchar](100) NOT NULL,
	[TestDbContent] [varchar](100) NULL,
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
INSERT [dbo].[TestDb] ([Id], [TestDbName], [TestDbContent], [CreateDate], [CreateID], [Creator], [Modifier], [ModifyDate], [ModifyID]) VALUES (N'6e4d6246-8a6c-4687-b11e-f35523b149e0', N'這是測試數據庫', N'這是測試數據庫。。。', CAST(N'2023-05-19 11:46:47.000' AS DateTime), 3362, N'測試管理員', NULL, NULL, NULL)
GO
USE [master]
GO
ALTER DATABASE [vol_pro_test] SET  READ_WRITE 
GO
