USE [Academy]
GO
/****** Object:  Table [dbo].[Assistants]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assistants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
	[TeacherId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curators]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dayofweek]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dayofweek](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Day] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deans]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deans](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
	[Building] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Financing] [money] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DeanID] [int] NULL,
	[Building] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Year] [int] NOT NULL,
	[DepartmentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsCurators]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsCurators](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CuratorId] [int] NULL,
	[GroupId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupsLectures]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupsLectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NULL,
	[LecturesId] [int] NULL,
	[DayofweekId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Heads]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Heads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LectureRoom]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectureRoom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Building] [int] NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NULL,
	[TeacherId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Class] [int] NOT NULL,
	[DayOfWeek] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
	[LectureRoomId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Age] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 22.08.2024 23:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Salary] [money] NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Assistants] ON 

INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (1, N'Alex', N'Smith', 1)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (2, N'Maria', N'Johnson', 2)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (3, N'John', N'Williams', 3)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (4, N'Sophia', N'Brown', 4)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (5, N'James', N'Jones', 5)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (6, N'Emma', N'Miller', 6)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (7, N'Michael', N'Davis', 7)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (8, N'Olivia', N'Garcia', 8)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (9, N'David', N'Rodriguez', 2)
INSERT [dbo].[Assistants] ([Id], [Name], [Surname], [TeacherId]) VALUES (10, N'Ava', N'Martinez', 5)
SET IDENTITY_INSERT [dbo].[Assistants] OFF
GO
SET IDENTITY_INSERT [dbo].[Curators] ON 

INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (1, N'John', N'Doe')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (2, N'Jane', N'Smith')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (3, N'Emily', N'Johnson')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (4, N'Michael', N'Williams')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (5, N'Chris', N'Brown')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (6, N'David', N'Martin')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (7, N'Linda', N'Taylor')
INSERT [dbo].[Curators] ([Id], [Name], [Surname]) VALUES (8, N'James', N'Anderson')
SET IDENTITY_INSERT [dbo].[Curators] OFF
GO
SET IDENTITY_INSERT [dbo].[Dayofweek] ON 

INSERT [dbo].[Dayofweek] ([Id], [Day]) VALUES (1, N'Monday')
INSERT [dbo].[Dayofweek] ([Id], [Day]) VALUES (2, N'Tuesday')
INSERT [dbo].[Dayofweek] ([Id], [Day]) VALUES (3, N'Wednesday')
INSERT [dbo].[Dayofweek] ([Id], [Day]) VALUES (4, N'Thursday')
INSERT [dbo].[Dayofweek] ([Id], [Day]) VALUES (5, N'Friday')
SET IDENTITY_INSERT [dbo].[Dayofweek] OFF
GO
SET IDENTITY_INSERT [dbo].[Deans] ON 

INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (1, 1)
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (2, 2)
INSERT [dbo].[Deans] ([Id], [TeacherId]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[Deans] OFF
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId], [Building]) VALUES (1, 500000.0000, N'Department of Software Engineering', 1, 1)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId], [Building]) VALUES (2, 300000.0000, N'Department of Applied Programming', 2, 2)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId], [Building]) VALUES (3, 400000.0000, N'Department of Robotics', 3, 3)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId], [Building]) VALUES (4, 350000.0000, N'Department of AI Systems', 4, 4)
INSERT [dbo].[Departments] ([Id], [Financing], [Name], [FacultyId], [Building]) VALUES (5, 450000.0000, N'Department of Data Analysis', 5, 5)
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 

INSERT [dbo].[Faculties] ([Id], [Financing], [Name], [DeanID], [Building]) VALUES (1, 2000000.0000, N'Faculty of Computer Science', 1, 1)
INSERT [dbo].[Faculties] ([Id], [Financing], [Name], [DeanID], [Building]) VALUES (2, 1500000.0000, N'Faculty of Programming', 2, 2)
INSERT [dbo].[Faculties] ([Id], [Financing], [Name], [DeanID], [Building]) VALUES (3, 1000000.0000, N'Faculty of Robotics', 3, 3)
INSERT [dbo].[Faculties] ([Id], [Financing], [Name], [DeanID], [Building]) VALUES (4, 1200000.0000, N'Faculty of Artificial Intelligence', 4, 4)
INSERT [dbo].[Faculties] ([Id], [Financing], [Name], [DeanID], [Building]) VALUES (5, 1100000.0000, N'Faculty of Data Science', 5, 5)
SET IDENTITY_INSERT [dbo].[Faculties] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (1, N'Group CS1', 1, 1)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (2, N'Group PRG1', 2, 2)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (3, N'Group ROB1', 3, 3)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (4, N'Group AI1', 1, 4)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (5, N'Group DS1', 2, 5)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (6, N'Group CS2', 2, 1)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (7, N'Group PRG2', 3, 2)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (8, N'Group ROB2', 1, 3)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (9, N'Group AI2', 2, 4)
INSERT [dbo].[Groups] ([Id], [Name], [Year], [DepartmentId]) VALUES (10, N'Group DS2', 3, 5)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsCurators] ON 

INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (1, 1, 1)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (2, 2, 2)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (3, 3, 3)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (4, 4, 4)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (5, 5, 5)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (6, 1, 6)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (7, 6, 7)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (8, 7, 8)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (9, 8, 9)
INSERT [dbo].[GroupsCurators] ([Id], [CuratorId], [GroupId]) VALUES (10, 3, 10)
SET IDENTITY_INSERT [dbo].[GroupsCurators] OFF
GO
SET IDENTITY_INSERT [dbo].[GroupsLectures] ON 

INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (1, 1, 1, 5)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (2, 2, 2, 2)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (3, 3, 3, 4)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (4, 4, 4, 1)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (5, 5, 5, 3)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (6, 6, 1, 4)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (7, 7, 6, 4)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (8, 8, 7, 2)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (9, 9, 3, 3)
INSERT [dbo].[GroupsLectures] ([Id], [GroupId], [LecturesId], [DayofweekId]) VALUES (10, 10, 4, 5)
SET IDENTITY_INSERT [dbo].[GroupsLectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Heads] ON 

INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (1, 2)
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (2, 6)
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (3, 7)
INSERT [dbo].[Heads] ([Id], [TeacherId]) VALUES (4, 8)
SET IDENTITY_INSERT [dbo].[Heads] OFF
GO
SET IDENTITY_INSERT [dbo].[LectureRoom] ON 

INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (1, 1, N'Room A1')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (2, 2, N'Room B2')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (3, 3, N'Room C3')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (4, 4, N'Room D4')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (5, 5, N'Room E5')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (6, 6, N'Room F6')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (7, 7, N'Room G7')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (8, 8, N'Room H8')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (9, 1, N'Room A2')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (10, 2, N'Room B3')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (11, 3, N'Room C4')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (12, 4, N'Room D5')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (13, 5, N'Room E6')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (14, 6, N'Room F7')
INSERT [dbo].[LectureRoom] ([Id], [Building], [Name]) VALUES (15, 7, N'Room G8')
SET IDENTITY_INSERT [dbo].[LectureRoom] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 

INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (1, 1, 1)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (2, 2, 2)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (3, 3, 3)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (4, 4, 4)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (5, 5, 5)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (6, 6, 6)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (7, 7, 7)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (8, 1, 8)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (1002, 1, 1)
INSERT [dbo].[Lectures] ([Id], [SubjectId], [TeacherId]) VALUES (1003, 3, 2)
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON 

INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (1, 1, 1, 1, 1, 1)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (2, 2, 2, 2, 2, 2)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (3, 3, 3, 3, 3, 3)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (4, 4, 4, 4, 4, 4)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (5, 5, 5, 5, 5, 5)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (6, 6, 6, 6, 6, 6)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (7, 7, 7, 7, 7, 7)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (8, 8, 1, 8, 8, 8)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (9, 1, 2, 9, 1, 1)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (10, 2, 3, 10, 2, 2)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (11, 3, 4, 11, 3, 3)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (12, 4, 5, 12, 4, 4)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (13, 5, 6, 13, 5, 5)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (14, 6, 7, 14, 6, 6)
INSERT [dbo].[Schedules] ([Id], [Class], [DayOfWeek], [Week], [LectureId], [LectureRoomId]) VALUES (15, 7, 1, 15, 7, 7)
SET IDENTITY_INSERT [dbo].[Schedules] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (1, N'John', N'Doe', 19, 1)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (2, N'Jane', N'Smith', 20, 1)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (3, N'Michael', N'Johnson', 21, 1)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (4, N'Emily', N'Davis', 22, 1)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (5, N'Chris', N'Brown', 23, 1)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (6, N'Alice', N'Wilson', 18, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (7, N'Bob', N'Moore', 19, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (8, N'Eva', N'Taylor', 20, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (9, N'Nick', N'Anderson', 21, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (10, N'Laura', N'Thomas', 22, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (11, N'Sam', N'Jackson', 23, 3)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (12, N'Emma', N'White', 19, 3)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (13, N'Owen', N'Harris', 20, 3)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (14, N'Mia', N'Martin', 21, 3)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (15, N'Liam', N'Thompson', 22, 3)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (16, N'Ella', N'Garcia', 18, 4)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (17, N'Oliver', N'Martinez', 19, 4)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (18, N'Sophia', N'Robinson', 20, 4)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (19, N'Lucas', N'Clark', 21, 4)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (20, N'Ava', N'Rodriguez', 22, 4)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (21, N'Noah', N'Lewis', 23, 5)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (22, N'Grace', N'Lee', 18, 5)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (23, N'Mason', N'Walker', 19, 5)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (24, N'Isabella', N'Allen', 20, 5)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (25, N'James', N'Young', 21, 5)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (26, N'Lily', N'Hall', 22, 6)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (27, N'Ethan', N'Hernandez', 23, 6)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (28, N'Madison', N'King', 18, 6)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (29, N'Ryan', N'Wright', 19, 6)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (30, N'Chloe', N'Lopez', 20, 6)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (31, N'Adam', N'Hill', 21, 7)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (32, N'Sarah', N'Scott', 22, 7)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (33, N'Joshua', N'Green', 23, 7)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (34, N'Olivia', N'Adams', 18, 7)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (35, N'Aiden', N'Baker', 19, 7)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (36, N'Charlotte', N'Gonzalez', 20, 8)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (37, N'Dylan', N'Nelson', 21, 8)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (38, N'Ella', N'Carter', 22, 8)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (39, N'Jackson', N'Mitchell', 23, 8)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (40, N'Aubrey', N'Perez', 18, 8)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (41, N'Caleb', N'Roberts', 19, 9)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (42, N'Harper', N'Turner', 20, 9)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (43, N'Elijah', N'Phillips', 21, 9)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (44, N'Zoe', N'Campbell', 22, 9)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (45, N'Alexander', N'Parker', 23, 9)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (46, N'Liam', N'Evans', 18, 10)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (47, N'Sophia', N'Edwards', 19, 10)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (48, N'Benjamin', N'Collins', 20, 10)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (49, N'Isabella', N'Stewart', 21, 10)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (50, N'Henry', N'Morris', 22, 10)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (51, N'John', N'Doe', 19, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (52, N'Jane', N'Smith', 20, 2)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (53, N'Michael', N'Johnson', 21, 3)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (54, N'Emily', N'Davis', 22, 4)
INSERT [dbo].[Students] ([Id], [Name], [Surname], [Age], [GroupId]) VALUES (55, N'Chris', N'Brown', 23, 5)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (7, N'Algorithms')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (4, N'Artificial Intelligence')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (1, N'Computer Science')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (5, N'Database Theory')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (6, N'Machine Learning')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (2, N'Programming')
INSERT [dbo].[Subjects] ([Id], [Name]) VALUES (3, N'Robotics')
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Teachers] ON 

INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (1, N'Alex', 70000.0000, N'Johnson')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (2, N'Linda', 75000.0000, N'Williams')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (3, N'Robert', 80000.0000, N'Miller')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (4, N'Susan', 72000.0000, N'Wilson')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (5, N'Karen', 68000.0000, N'Moore')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (6, N'Paul', 69000.0000, N'Thomas')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (7, N'Mary', 71000.0000, N'Taylor')
INSERT [dbo].[Teachers] ([Id], [Name], [Salary], [Surname]) VALUES (8, N'George', 76000.0000, N'White')
SET IDENTITY_INSERT [dbo].[Teachers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Departme__737584F614377868]    Script Date: 22.08.2024 23:55:36 ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Departme__7C1CACEB09D36624]    Script Date: 22.08.2024 23:55:36 ******/
ALTER TABLE [dbo].[Departments] ADD UNIQUE NONCLUSTERED 
(
	[Financing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Facultie__737584F69D52037F]    Script Date: 22.08.2024 23:55:36 ******/
ALTER TABLE [dbo].[Faculties] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Groups__737584F60B079DD0]    Script Date: 22.08.2024 23:55:36 ******/
ALTER TABLE [dbo].[Groups] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LectureR__737584F60BE09015]    Script Date: 22.08.2024 23:55:36 ******/
ALTER TABLE [dbo].[LectureRoom] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Subjects__737584F6F0881D79]    Script Date: 22.08.2024 23:55:36 ******/
ALTER TABLE [dbo].[Subjects] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Faculties] ADD  DEFAULT ((0)) FOR [Financing]
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Deans]  WITH CHECK ADD FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculties] ([Id])
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD FOREIGN KEY([CuratorId])
REFERENCES [dbo].[Curators] ([Id])
GO
ALTER TABLE [dbo].[GroupsCurators]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD FOREIGN KEY([DayofweekId])
REFERENCES [dbo].[Dayofweek] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[GroupsLectures]  WITH CHECK ADD FOREIGN KEY([LecturesId])
REFERENCES [dbo].[Lectures] ([Id])
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD FOREIGN KEY([SubjectId])
REFERENCES [dbo].[Subjects] ([Id])
GO
ALTER TABLE [dbo].[Lectures]  WITH CHECK ADD FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([Id])
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([Id])
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD FOREIGN KEY([LectureRoomId])
REFERENCES [dbo].[LectureRoom] ([Id])
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
ALTER TABLE [dbo].[Assistants]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Curators]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Curators]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
ALTER TABLE [dbo].[Dayofweek]  WITH CHECK ADD CHECK  (([Day]<>N''))
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Building]>=(1) AND [Building]<=(6)))
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Financing]<>(0)))
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Building]>=(1) AND [Building]<=(6)))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Financing]>=(0)))
GO
ALTER TABLE [dbo].[Faculties]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD CHECK  (([Year]>=(1) AND [Year]<=(5)))
GO
ALTER TABLE [dbo].[LectureRoom]  WITH CHECK ADD CHECK  (([Building]>=(1) AND [Building]<=(8)))
GO
ALTER TABLE [dbo].[LectureRoom]  WITH CHECK ADD CHECK  (([NAme]<>N''))
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD CHECK  (([Class]>=(1) AND [Class]<=(8)))
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD CHECK  (([DayOfWeek]>=(1) AND [DayOfWeek]<=(8)))
GO
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD CHECK  (([Week]>=(1) AND [Week]<=(52)))
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD CHECK  (([Age]>=(18)))
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
ALTER TABLE [dbo].[Subjects]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Name]<>N''))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD CHECK  (([Surname]<>N''))
GO
