CREATE DATABASE SE1883_Stupid
USE [SE1883_Stupid]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[did] [int] NOT NULL,
	[dname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[ename] [nvarchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[address] [varchar](150) NOT NULL,
	[did] [int] NOT NULL,
	[createdby] [varchar](150) NOT NULL,
	[updatedby] [varchar](150) NULL,
	[updatedtime] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleFeature]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleFeature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_RoleFeature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 10/9/2024 11:35:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Department] ([did], [dname]) VALUES (1, N'Information Technology')
INSERT [dbo].[Department] ([did], [dname]) VALUES (2, N'Accounting')
INSERT [dbo].[Department] ([did], [dname]) VALUES (3, N'Human Resources')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (1, N'Mr Ấy', 1, CAST(N'2004-01-18' AS Date), N'Me Linh, Hanoi', 1, N'mra', N'mra', CAST(N'2024-10-09T00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (2, N'Ms Phuc', 1, CAST(N'1998-12-31' AS Date), N'London A', 2, N'mra', N'mra', CAST(N'2024-10-09T11:13:34.803' AS DateTime))
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (3, N'XXX', 0, CAST(N'1975-12-30' AS Date), N'YYYYY', 2, N'mra', NULL, NULL)
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (4, N'YYYY', 1, CAST(N'1976-12-28' AS Date), N'YYYYYYYYYYY', 2, N'mra', NULL, NULL)
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (5, N'mr phuc', 1, CAST(N'2000-01-01' AS Date), N'xxx', 2, N'mra', N'mra', CAST(N'2024-10-09T11:16:04.570' AS DateTime))
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (7, N'Mr XXXXXXXXXYYYYY', 1, CAST(N'2024-10-09' AS Date), N'xxxxxyyyyy', 2, N'mrb', NULL, NULL)
INSERT [dbo].[Employee] ([eid], [ename], [gender], [dob], [address], [did], [createdby], [updatedby], [updatedtime]) VALUES (8, N'Nguyen Van Test', 0, CAST(N'2024-10-09' AS Date), N'Trung Kinh, Cau Giay', 3, N'mrb', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'Create Employee', N'/employee/create')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Update Employee', N'/employee/update')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Delete Employee', N'/employee/delete')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (4, N'List all Employees', N'/employee/list')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (5, N'Search Employees by Name', N'/employee/searchbyname')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Head of HRM')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Recruitment Officer')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (3, N'Profile Officer')
GO
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (1, 1)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (1, 2)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (1, 3)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (1, 4)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (1, 5)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (2, 1)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (2, 2)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (3, 3)
INSERT [dbo].[RoleFeature] ([rid], [fid]) VALUES (3, 5)
GO
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'mra', N'123', N'Mr A')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'mrb', N'123', N'Superman')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'mrc', N'123', N'123')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'mrd', N'123', N'123')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'mre', N'123', N'123')
GO
INSERT [dbo].[UserRole] ([rid], [username]) VALUES (1, N'mra')
INSERT [dbo].[UserRole] ([rid], [username]) VALUES (2, N'mrb')
INSERT [dbo].[UserRole] ([rid], [username]) VALUES (2, N'mrd')
INSERT [dbo].[UserRole] ([rid], [username]) VALUES (3, N'mrc')
INSERT [dbo].[UserRole] ([rid], [username]) VALUES (3, N'mrd')
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([did])
REFERENCES [dbo].[Department] ([did])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_User] FOREIGN KEY([createdby])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_User]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_User1] FOREIGN KEY([updatedby])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_User1]
GO
ALTER TABLE [dbo].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_Feature]
GO
ALTER TABLE [dbo].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([username])
REFERENCES [dbo].[User] ([username])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
