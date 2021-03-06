/****** Object:  Table [dbo].[AuditTable]    Script Date: 17/08/2015 17:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KeyFieldID] [int] NOT NULL,
	[AuditActionTypeENUM] [int] NOT NULL,
	[DateTimeStamp] [datetime] NOT NULL,
	[DataModel] [nvarchar](100) NOT NULL,
	[Changes] [nvarchar](max) NOT NULL,
	[ValueBefore] [nvarchar](max) NOT NULL,
	[ValueAfter] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SampleData]    Script Date: 17/08/2015 17:55:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](10) NOT NULL,
	[LastName] [nvarchar](10) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Deleted] [bit] NOT NULL CONSTRAINT [DF_SampleData_Deleted]  DEFAULT ((0)),
 CONSTRAINT [PK_SampleData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AuditTable] ON 

GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (37, 8, 1, CAST(N'2015-08-16 23:58:29.723' AS DateTime), N'SampleDataModel', N'[{"FieldName":"ID","ValueBefore":"0","ValueAfter":"8"},{"FieldName":"FirstName","ValueBefore":"(null)","ValueAfter":"Adam"},{"FieldName":"LastName","ValueBefore":"(null)","ValueAfter":"Smith"},{"FieldName":"DateOfBirth","ValueBefore":"01/01/0001 00:00:00","ValueAfter":"16/08/1990 00:00:00"}]', N'{"ID":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Deleted":false}', N'{"ID":8,"FirstName":"Adam","LastName":"Smith","DateOfBirth":"1990-08-16T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (38, 9, 1, CAST(N'2015-08-16 23:58:56.023' AS DateTime), N'SampleDataModel', N'[{"FieldName":"ID","ValueBefore":"0","ValueAfter":"9"},{"FieldName":"FirstName","ValueBefore":"(null)","ValueAfter":"Govindar"},{"FieldName":"LastName","ValueBefore":"(null)","ValueAfter":"Singh"},{"FieldName":"DateOfBirth","ValueBefore":"01/01/0001 00:00:00","ValueAfter":"16/08/1985 00:00:00"}]', N'{"ID":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Deleted":false}', N'{"ID":9,"FirstName":"Govindar","LastName":"Singh","DateOfBirth":"1985-08-16T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (39, 10, 1, CAST(N'2015-08-16 23:59:24.870' AS DateTime), N'SampleDataModel', N'[{"FieldName":"ID","ValueBefore":"0","ValueAfter":"10"},{"FieldName":"FirstName","ValueBefore":"(null)","ValueAfter":"Joe"},{"FieldName":"LastName","ValueBefore":"(null)","ValueAfter":"Public"},{"FieldName":"DateOfBirth","ValueBefore":"01/01/0001 00:00:00","ValueAfter":"21/12/1971 00:00:00"}]', N'{"ID":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Deleted":false}', N'{"ID":10,"FirstName":"Joe","LastName":"Public","DateOfBirth":"1971-12-21T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (40, 8, 2, CAST(N'2015-08-16 23:59:49.007' AS DateTime), N'SampleDataModel', N'[{"FieldName":"DateOfBirth","ValueBefore":"16/08/1990 00:00:00","ValueAfter":"12/04/1989 00:00:00"}]', N'{"ID":8,"FirstName":"Adam","lastname":"Smith","DateOfBirth":"1990-08-16T00:00:00","Deleted":false}', N'{"ID":8,"FirstName":"Adam","lastname":"Smith","DateOfBirth":"1989-04-12T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (41, 11, 1, CAST(N'2015-08-17 15:50:15.510' AS DateTime), N'SampleDataModel', N'[{"FieldName":"ID","ValueBefore":"0","ValueAfter":"11"},{"FieldName":"FirstName","ValueBefore":"(null)","ValueAfter":"Fred"},{"FieldName":"LastName","ValueBefore":"(null)","ValueAfter":"Smith"},{"FieldName":"DateOfBirth","ValueBefore":"01/01/0001 00:00:00","ValueAfter":"17/08/1990 00:00:00"}]', N'{"ID":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Deleted":false}', N'{"ID":11,"FirstName":"Fred","LastName":"Smith","DateOfBirth":"1990-08-17T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (42, 10, 3, CAST(N'2015-08-17 16:01:22.287' AS DateTime), N'SampleDataModel', N'[{"FieldName":"ID","ValueBefore":"10","ValueAfter":"0"},{"FieldName":"FirstName","ValueBefore":"Joe","ValueAfter":"(null)"},{"FieldName":"LastName","ValueBefore":"Public","ValueAfter":"(null)"},{"FieldName":"DateOfBirth","ValueBefore":"21/12/1971 00:00:00","ValueAfter":"01/01/0001 00:00:00"},{"FieldName":"Deleted","ValueBefore":"True","ValueAfter":"False"}]', N'{"ID":10,"FirstName":"Joe","LastName":"Public","DateOfBirth":"1971-12-21T00:00:00","Deleted":true}', N'{"ID":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (43, 8, 3, CAST(N'2015-08-17 16:54:54.520' AS DateTime), N'SampleDataModel', N'[{"FieldName":"ID","ValueBefore":"8","ValueAfter":"0"},{"FieldName":"FirstName","ValueBefore":"Adam","ValueAfter":"(null)"},{"FieldName":"LastName","ValueBefore":"Smith","ValueAfter":"(null)"},{"FieldName":"DateOfBirth","ValueBefore":"12/04/1989 00:00:00","ValueAfter":"01/01/0001 00:00:00"},{"FieldName":"Deleted","ValueBefore":"True","ValueAfter":"False"}]', N'{"ID":8,"FirstName":"Adam","LastName":"Smith","DateOfBirth":"1989-04-12T00:00:00","Deleted":true}', N'{"ID":0,"FirstName":null,"LastName":null,"DateOfBirth":"0001-01-01T00:00:00","Deleted":false}')
GO
INSERT [dbo].[AuditTable] ([ID], [KeyFieldID], [AuditActionTypeENUM], [DateTimeStamp], [DataModel], [Changes], [ValueBefore], [ValueAfter]) VALUES (44, 9, 2, CAST(N'2015-08-17 17:22:58.173' AS DateTime), N'SampleDataModel', N'[]', N'{"ID":9,"FirstName":"Govindar","lastname":"Singh","DateOfBirth":"1985-08-16T00:00:00","Deleted":false}', N'{"ID":9,"FirstName":"Govindar","lastname":"Singh","DateOfBirth":"1985-08-16T00:00:00","Deleted":false}')
GO
SET IDENTITY_INSERT [dbo].[AuditTable] OFF
GO
SET IDENTITY_INSERT [dbo].[SampleData] ON 

GO
INSERT [dbo].[SampleData] ([ID], [FirstName], [LastName], [DateOfBirth], [Deleted]) VALUES (8, N'Adam', N'Smith', CAST(N'1989-04-12' AS Date), 1)
GO
INSERT [dbo].[SampleData] ([ID], [FirstName], [LastName], [DateOfBirth], [Deleted]) VALUES (9, N'Govindar', N'Singh', CAST(N'1985-08-16' AS Date), 0)
GO
INSERT [dbo].[SampleData] ([ID], [FirstName], [LastName], [DateOfBirth], [Deleted]) VALUES (10, N'Joe', N'Public', CAST(N'1971-12-21' AS Date), 1)
GO
INSERT [dbo].[SampleData] ([ID], [FirstName], [LastName], [DateOfBirth], [Deleted]) VALUES (11, N'Fred', N'Smith', CAST(N'1990-08-17' AS Date), 0)
GO
SET IDENTITY_INSERT [dbo].[SampleData] OFF
GO
