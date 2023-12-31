USE [mCApp_Demo3]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02-03-2023 22:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 02-03-2023 22:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NOT NULL,
	[CourseDescription] [nvarchar](max) NOT NULL,
	[MaxStrength] [int] NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[TaughtInLanguage] [int] NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 02-03-2023 22:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[TutorId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
	[ModifiedDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Schedules] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 02-03-2023 22:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[MotherTongue] [int] NOT NULL,
	[EmailAddress] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[MobileNumber] [nvarchar](max) NOT NULL,
	[GovIdType] [int] NOT NULL,
	[GovtIdentificationNumber] [nvarchar](max) NOT NULL,
	[FavouriteTutorByID] [int] NOT NULL,
	[CryptKey] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutors]    Script Date: 02-03-2023 22:25:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutors](
	[TutorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Gender] [int] NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[MotherTongue] [int] NOT NULL,
	[MobileNumber] [nvarchar](max) NOT NULL,
	[EmailAddress] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[GovIdType] [int] NOT NULL,
	[GovtIdentificationNumber] [nvarchar](max) NOT NULL,
	[CryptKey] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tutors] PRIMARY KEY CLUSTERED 
(
	[TutorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220819051909_Inital', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220819130931_Inital2', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220819131132_added_ranges_to_attributes', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220822054329_identityLimitsSet', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220823021415_LimitsSetAndAddingCryptKeyFieldToUserModels', N'6.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220823024730_SettingDateDataAnnotationToDOBFields', N'6.0.6')
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350000, N'Control Systems', N'Explain in detail about the controls systems.', 45, CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), CAST(N'2022-09-30T00:00:00.0000000' AS DateTime2), 0, N'Youtube')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350001, N'Local Area Networks', N'Explain in detail about the Local Area Networks.', 5, CAST(N'2022-08-30T00:00:00.0000000' AS DateTime2), CAST(N'2022-10-02T00:00:00.0000000' AS DateTime2), 2, N'Hyderabad')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350002, N'FPGA Design', N'Explain in detail about the FPGA Design.', 50, CAST(N'2022-07-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-08-12T00:00:00.0000000' AS DateTime2), 9, N'Goa')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350003, N'Operating Systems', N'Explain in detail about the Operating Systems.', 15, CAST(N'2022-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-29T00:00:00.0000000' AS DateTime2), 1, N'Delhi')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350004, N'Digital Signal Processing', N'Explain in detail about the Digital Signal Processing.', 100, CAST(N'2022-05-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-12T00:00:00.0000000' AS DateTime2), 0, N'Warangal')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350005, N'Linear Algebra', N'Explain in detail about the Linear Algebra.', 18, CAST(N'2022-06-05T00:00:00.0000000' AS DateTime2), CAST(N'2022-07-19T00:00:00.0000000' AS DateTime2), 2, N'Vimeo')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350006, N'Security Analysis', N'Explain in detail about the Security Analysis.', 180, CAST(N'2022-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-01-16T00:00:00.0000000' AS DateTime2), 2, N'Youtube')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350007, N'Managerial Skills', N'Explain in detail about the Managerial Skills.', 111, CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2), 3, N'Chennai')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350008, N'Accounting', N'Explain in detail about the Accounting.', 600, CAST(N'2022-12-31T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 8, N'Dubai')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350009, N'ABAP', N'Explain in detail about the ABAP.', 60, CAST(N'2022-03-29T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), 5, N'Rome')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350010, N'Ethics', N'Explain in detail about the Ethics.', 40, CAST(N'2022-04-02T00:00:00.0000000' AS DateTime2), CAST(N'2022-10-10T00:00:00.0000000' AS DateTime2), 6, N'Gesthan Street')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350011, N'Python', N'Explain in detail about the Python.', 4000, CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-31T00:00:00.0000000' AS DateTime2), 2, N'Youtube')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350012, N'SQL', N'Explain in detail about the SQL.', 1000, CAST(N'2022-02-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-10-25T00:00:00.0000000' AS DateTime2), 2, N'Kansas')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350013, N'AI', N'Explain in detail about the AI.', 10000, CAST(N'2023-03-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2), 4, N'Holland street')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350014, N'Big Data', N'Explain in detail about the Big Data.', 10, CAST(N'2022-01-30T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 2, N'Davoas')
INSERT [dbo].[Courses] ([CourseId], [CourseName], [CourseDescription], [MaxStrength], [StartDate], [EndDate], [TaughtInLanguage], [Location]) VALUES (350015, N'Cloud Computing', N'Explain in detail about the Cloud Computing.', 100000, CAST(N'2022-10-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-05T00:00:00.0000000' AS DateTime2), 0, N'Hyderabad')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON 

INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120000, 350008, 1004, 2, CAST(N'2022-08-23T11:18:59.7435687' AS DateTime2), CAST(N'2022-08-23T11:18:59.7470298' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120001, 350008, 1004, 1, CAST(N'2022-08-23T11:19:37.0326376' AS DateTime2), CAST(N'2022-08-23T11:19:37.0344376' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120002, 350008, 1004, 4, CAST(N'2022-08-23T11:19:46.5175132' AS DateTime2), CAST(N'2022-08-23T11:19:46.5195470' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120003, 350008, 1004, 10, CAST(N'2022-08-23T11:21:37.3542577' AS DateTime2), CAST(N'2022-08-23T11:21:37.3558332' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120004, 350014, 1004, 10, CAST(N'2022-08-23T11:22:18.2800996' AS DateTime2), CAST(N'2022-08-23T11:22:18.2824907' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120005, 350014, 1012, 1, CAST(N'2022-08-23T11:22:31.7798454' AS DateTime2), CAST(N'2022-08-23T11:28:47.5163702' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120006, 350014, 1009, 7, CAST(N'2022-08-23T11:23:09.6238437' AS DateTime2), CAST(N'2022-08-23T11:23:09.6261047' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120007, 350000, 1004, 7, CAST(N'2022-08-23T19:57:29.1865242' AS DateTime2), CAST(N'2022-08-23T19:57:29.1928066' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120008, 350000, 1004, 2, CAST(N'2022-08-23T19:57:38.0605473' AS DateTime2), CAST(N'2022-08-23T19:57:38.0619528' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120009, 350000, 1004, 5, CAST(N'2022-08-23T19:57:46.4195332' AS DateTime2), CAST(N'2022-08-23T19:57:46.4215363' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120010, 350000, 1004, 9, CAST(N'2022-08-23T20:05:30.1766285' AS DateTime2), CAST(N'2022-08-23T20:05:30.1779079' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120012, 350000, 1004, 25, CAST(N'2022-08-23T20:05:30.1779343' AS DateTime2), CAST(N'2022-08-23T20:05:30.1779343' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120013, 350000, 1011, 1, CAST(N'2022-08-23T20:06:43.4692258' AS DateTime2), CAST(N'2022-08-23T20:06:43.4712763' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120014, 350000, 1011, 8, CAST(N'2022-08-23T20:06:43.4713185' AS DateTime2), CAST(N'2022-08-23T20:06:43.4713187' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120015, 350000, 1011, 14, CAST(N'2022-08-23T20:06:43.4713188' AS DateTime2), CAST(N'2022-08-23T20:06:43.4713189' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120016, 350000, 1011, 16, CAST(N'2022-08-23T20:06:43.4713190' AS DateTime2), CAST(N'2022-08-23T20:06:43.4713191' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120017, 350001, 1003, 6, CAST(N'2022-08-23T20:07:23.6247153' AS DateTime2), CAST(N'2022-08-23T20:07:23.6276090' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120018, 350001, 1003, 12, CAST(N'2022-08-23T20:07:23.6276633' AS DateTime2), CAST(N'2022-08-23T20:07:23.6276634' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120019, 350001, 1003, 29, CAST(N'2022-08-23T20:07:23.6276636' AS DateTime2), CAST(N'2022-08-23T20:07:23.6276637' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120020, 350001, 1003, 28, CAST(N'2022-08-23T20:07:23.6276638' AS DateTime2), CAST(N'2022-08-23T20:07:23.6276638' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120021, 350001, 1010, 1, CAST(N'2022-08-23T20:08:38.7569306' AS DateTime2), CAST(N'2022-08-23T20:08:38.7590313' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120022, 350001, 1010, 7, CAST(N'2022-08-23T20:08:38.7590854' AS DateTime2), CAST(N'2022-08-23T20:08:38.7590856' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120023, 350001, 1010, 11, CAST(N'2022-08-23T20:08:38.7590857' AS DateTime2), CAST(N'2022-08-23T20:08:38.7590858' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120024, 350001, 1010, 13, CAST(N'2022-08-23T20:08:38.7590859' AS DateTime2), CAST(N'2022-08-23T20:08:38.7590859' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120025, 350001, 1010, 5, CAST(N'2022-08-23T20:08:38.7590861' AS DateTime2), CAST(N'2022-08-23T20:08:38.7590862' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120026, 350001, 1010, 4, CAST(N'2022-08-23T20:08:38.7590876' AS DateTime2), CAST(N'2022-08-23T20:08:38.7590877' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120027, 350002, 1012, 2, CAST(N'2022-08-23T20:10:33.9681245' AS DateTime2), CAST(N'2022-08-23T20:10:33.9702551' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120028, 350002, 1012, 6, CAST(N'2022-08-23T20:10:33.9703147' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703149' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120029, 350002, 1012, 15, CAST(N'2022-08-23T20:10:33.9703150' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703151' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120030, 350002, 1012, 25, CAST(N'2022-08-23T20:10:33.9703152' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703153' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120031, 350002, 1012, 10, CAST(N'2022-08-23T20:10:33.9703154' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703154' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120032, 350002, 1012, 12, CAST(N'2022-08-23T20:10:33.9703165' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703166' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120033, 350002, 1012, 30, CAST(N'2022-08-23T20:10:33.9703167' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703168' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120034, 350002, 1012, 1, CAST(N'2022-08-23T20:10:33.9703169' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703170' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120035, 350002, 1012, 26, CAST(N'2022-08-23T20:10:33.9703171' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703171' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120036, 350002, 1012, 27, CAST(N'2022-08-23T20:10:33.9703174' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703174' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120037, 350002, 1012, 8, CAST(N'2022-08-23T20:10:33.9703175' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703176' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120038, 350002, 1012, 7, CAST(N'2022-08-23T20:10:33.9703178' AS DateTime2), CAST(N'2022-08-23T20:10:33.9703180' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120039, 350002, 1003, 9, CAST(N'2022-08-23T20:14:26.9702092' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716304' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120040, 350002, 1003, 11, CAST(N'2022-08-23T20:14:26.9716605' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716606' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120041, 350002, 1003, 7, CAST(N'2022-08-23T20:14:26.9716608' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716608' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120042, 350002, 1003, 6, CAST(N'2022-08-23T20:14:26.9716609' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716610' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120043, 350002, 1003, 8, CAST(N'2022-08-23T20:14:26.9716611' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716611' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120044, 350002, 1003, 15, CAST(N'2022-08-23T20:14:26.9716617' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716617' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120045, 350002, 1003, 12, CAST(N'2022-08-23T20:14:26.9716618' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716619' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120046, 350002, 1003, 16, CAST(N'2022-08-23T20:14:26.9716619' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716620' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120047, 350002, 1003, 28, CAST(N'2022-08-23T20:14:26.9716621' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716621' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120048, 350002, 1003, 27, CAST(N'2022-08-23T20:14:26.9716624' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716624' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120049, 350002, 1003, 30, CAST(N'2022-08-23T20:14:26.9716625' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716626' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120050, 350002, 1003, 26, CAST(N'2022-08-23T20:14:26.9716627' AS DateTime2), CAST(N'2022-08-23T20:14:26.9716627' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120051, 350003, 1008, 8, CAST(N'2022-08-23T20:17:06.2553778' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575040' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120052, 350003, 1008, 9, CAST(N'2022-08-23T20:17:06.2575603' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575605' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120053, 350003, 1008, 10, CAST(N'2022-08-23T20:17:06.2575606' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575607' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120054, 350003, 1008, 11, CAST(N'2022-08-23T20:17:06.2575608' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575609' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120055, 350003, 1008, 12, CAST(N'2022-08-23T20:17:06.2575610' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575610' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120056, 350003, 1008, 13, CAST(N'2022-08-23T20:17:06.2575620' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575620' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120057, 350003, 1008, 15, CAST(N'2022-08-23T20:17:06.2575621' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575622' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120058, 350003, 1008, 27, CAST(N'2022-08-23T20:17:06.2575623' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575624' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120059, 350003, 1008, 28, CAST(N'2022-08-23T20:17:06.2575625' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575626' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120060, 350003, 1008, 29, CAST(N'2022-08-23T20:17:06.2575628' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575629' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120061, 350003, 1008, 25, CAST(N'2022-08-23T20:17:06.2575630' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575630' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120062, 350003, 1008, 30, CAST(N'2022-08-23T20:17:06.2575631' AS DateTime2), CAST(N'2022-08-23T20:17:06.2575632' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120063, 350004, 1005, 15, CAST(N'2022-08-23T20:18:07.7979405' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001214' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120064, 350004, 1005, 5, CAST(N'2022-08-23T20:18:07.8001848' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001852' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120065, 350004, 1005, 4, CAST(N'2022-08-23T20:18:07.8001854' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001854' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120067, 350004, 1005, 2, CAST(N'2022-08-23T20:18:07.8001857' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001858' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120068, 350004, 1005, 1, CAST(N'2022-08-23T20:18:07.8001868' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001869' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120069, 350004, 1005, 16, CAST(N'2022-08-23T20:18:07.8001870' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001870' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120070, 350004, 1005, 26, CAST(N'2022-08-23T20:18:07.8001872' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001872' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120071, 350004, 1005, 28, CAST(N'2022-08-23T20:18:07.8001873' AS DateTime2), CAST(N'2022-08-23T20:18:07.8001874' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120072, 350004, 1010, 4, CAST(N'2022-08-23T20:18:55.9149578' AS DateTime2), CAST(N'2022-08-23T20:18:55.9166921' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120074, 350004, 1010, 5, CAST(N'2022-08-23T20:18:55.9167361' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167361' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120075, 350004, 1010, 6, CAST(N'2022-08-23T20:18:55.9167362' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167363' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120076, 350004, 1010, 14, CAST(N'2022-08-23T20:18:55.9167364' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167365' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120077, 350004, 1010, 15, CAST(N'2022-08-23T20:18:55.9167374' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167375' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120078, 350004, 1010, 16, CAST(N'2022-08-23T20:18:55.9167376' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167376' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120079, 350004, 1010, 26, CAST(N'2022-08-23T20:18:55.9167377' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167378' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120080, 350004, 1010, 28, CAST(N'2022-08-23T20:18:55.9167379' AS DateTime2), CAST(N'2022-08-23T20:18:55.9167379' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120081, 350005, 1006, 4, CAST(N'2022-08-23T20:19:59.9833729' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857097' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120082, 350005, 1006, 1, CAST(N'2022-08-23T20:19:59.9857673' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857675' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120084, 350005, 1006, 2, CAST(N'2022-08-23T20:19:59.9857679' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857679' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120085, 350005, 1006, 10, CAST(N'2022-08-23T20:19:59.9857681' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857681' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120086, 350005, 1006, 15, CAST(N'2022-08-23T20:19:59.9857692' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857693' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120087, 350005, 1006, 16, CAST(N'2022-08-23T20:19:59.9857694' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857695' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120089, 350005, 1006, 27, CAST(N'2022-08-23T20:19:59.9857698' AS DateTime2), CAST(N'2022-08-23T20:19:59.9857699' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120090, 350005, 1005, 10, CAST(N'2022-08-23T20:22:16.6957586' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969524' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120091, 350005, 1005, 15, CAST(N'2022-08-23T20:22:16.6969783' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969784' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120092, 350005, 1005, 28, CAST(N'2022-08-23T20:22:16.6969786' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969786' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120093, 350005, 1005, 29, CAST(N'2022-08-23T20:22:16.6969787' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969787' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120094, 350005, 1005, 30, CAST(N'2022-08-23T20:22:16.6969788' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969788' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120095, 350005, 1005, 25, CAST(N'2022-08-23T20:22:16.6969793' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969793' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120096, 350005, 1005, 16, CAST(N'2022-08-23T20:22:16.6969794' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969794' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120097, 350005, 1005, 13, CAST(N'2022-08-23T20:22:16.6969795' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969795' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120098, 350005, 1005, 8, CAST(N'2022-08-23T20:22:16.6969796' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969797' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120099, 350005, 1005, 7, CAST(N'2022-08-23T20:22:16.6969798' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969799' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120100, 350005, 1005, 4, CAST(N'2022-08-23T20:22:16.6969799' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969800' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120101, 350005, 1005, 1, CAST(N'2022-08-23T20:22:16.6969800' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969801' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120103, 350005, 1005, 2, CAST(N'2022-08-23T20:22:16.6969802' AS DateTime2), CAST(N'2022-08-23T20:22:16.6969803' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120104, 350006, 1007, 8, CAST(N'2022-08-23T20:23:15.2077114' AS DateTime2), CAST(N'2022-08-23T20:23:15.2096796' AS DateTime2))
GO
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120105, 350006, 1007, 10, CAST(N'2022-08-23T20:23:15.2097755' AS DateTime2), CAST(N'2022-08-23T20:23:15.2097759' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120106, 350006, 1007, 12, CAST(N'2022-08-23T20:23:15.2097761' AS DateTime2), CAST(N'2022-08-23T20:23:15.2097762' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120107, 350006, 1007, 16, CAST(N'2022-08-23T20:23:15.2097763' AS DateTime2), CAST(N'2022-08-23T20:23:15.2097764' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120108, 350006, 1008, 1, CAST(N'2022-08-23T20:23:59.8786943' AS DateTime2), CAST(N'2022-08-23T20:23:59.8800182' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120109, 350006, 1008, 4, CAST(N'2022-08-23T20:23:59.8800505' AS DateTime2), CAST(N'2022-08-23T20:23:59.8800506' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120110, 350007, 1003, 5, CAST(N'2022-08-23T20:25:03.2135273' AS DateTime2), CAST(N'2022-08-23T20:25:03.2152255' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120111, 350007, 1003, 4, CAST(N'2022-08-23T20:25:03.2152575' AS DateTime2), CAST(N'2022-08-23T20:25:03.2152576' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120113, 350007, 1003, 28, CAST(N'2022-08-23T20:25:03.2152579' AS DateTime2), CAST(N'2022-08-23T20:25:03.2152579' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120114, 350007, 1003, 9, CAST(N'2022-08-23T20:25:03.2152580' AS DateTime2), CAST(N'2022-08-23T20:25:03.2152581' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120115, 350008, 1005, 25, CAST(N'2022-08-23T20:25:49.4634862' AS DateTime2), CAST(N'2022-08-23T20:25:49.4653421' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120116, 350008, 1005, 30, CAST(N'2022-08-23T20:25:49.4653969' AS DateTime2), CAST(N'2022-08-23T20:25:49.4653971' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120117, 350008, 1005, 7, CAST(N'2022-08-23T20:25:49.4653973' AS DateTime2), CAST(N'2022-08-23T20:25:49.4653973' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120118, 350008, 1005, 6, CAST(N'2022-08-23T20:25:49.4653975' AS DateTime2), CAST(N'2022-08-23T20:25:49.4653975' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120119, 350009, 1010, 10, CAST(N'2022-08-23T20:26:25.5707990' AS DateTime2), CAST(N'2022-08-23T20:26:25.5726941' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120120, 350009, 1010, 1, CAST(N'2022-08-23T20:26:25.5727403' AS DateTime2), CAST(N'2022-08-23T20:26:25.5727405' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120121, 350009, 1010, 5, CAST(N'2022-08-23T20:26:25.5727406' AS DateTime2), CAST(N'2022-08-23T20:26:25.5727407' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120122, 350009, 1010, 8, CAST(N'2022-08-23T20:26:25.5727408' AS DateTime2), CAST(N'2022-08-23T20:26:25.5727409' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120123, 350009, 1008, 7, CAST(N'2022-08-23T20:27:17.8765317' AS DateTime2), CAST(N'2022-08-23T20:27:17.8784717' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120124, 350009, 1008, 6, CAST(N'2022-08-23T20:27:17.8785347' AS DateTime2), CAST(N'2022-08-23T20:27:17.8785350' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120125, 350009, 1008, 5, CAST(N'2022-08-23T20:27:17.8785352' AS DateTime2), CAST(N'2022-08-23T20:27:17.8785353' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120126, 350009, 1008, 4, CAST(N'2022-08-23T20:27:17.8785354' AS DateTime2), CAST(N'2022-08-23T20:27:17.8785355' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120128, 350009, 1008, 2, CAST(N'2022-08-23T20:27:17.8785366' AS DateTime2), CAST(N'2022-08-23T20:27:17.8785367' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120129, 350009, 1008, 1, CAST(N'2022-08-23T20:27:17.8785368' AS DateTime2), CAST(N'2022-08-23T20:27:17.8785368' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120130, 350010, 1007, 4, CAST(N'2022-08-23T20:28:20.0732794' AS DateTime2), CAST(N'2022-08-23T20:28:20.0732794' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120131, 350010, 1007, 10, CAST(N'2022-08-23T20:28:20.0758682' AS DateTime2), CAST(N'2022-08-23T20:28:20.0758682' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120132, 350010, 1007, 27, CAST(N'2022-08-23T20:28:20.0758686' AS DateTime2), CAST(N'2022-08-23T20:28:20.0758686' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120133, 350010, 1007, 5, CAST(N'2022-08-23T20:28:20.0758688' AS DateTime2), CAST(N'2022-08-23T20:28:20.0758688' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120134, 350010, 1007, 6, CAST(N'2022-08-23T20:28:20.0758689' AS DateTime2), CAST(N'2022-08-24T14:10:02.1128836' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120135, 350010, 1007, 28, CAST(N'2022-08-23T20:28:20.0758699' AS DateTime2), CAST(N'2022-08-24T14:10:02.1128837' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120136, 350010, 1007, 8, CAST(N'2022-08-23T20:28:20.0758701' AS DateTime2), CAST(N'2022-08-24T14:10:02.1128837' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120137, 350010, 1007, 30, CAST(N'2022-08-23T20:28:20.0758703' AS DateTime2), CAST(N'2022-08-24T14:10:02.1128838' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120138, 350010, 1011, 4, CAST(N'2022-08-23T20:29:31.3418480' AS DateTime2), CAST(N'2022-08-24T14:05:29.9781908' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120139, 350010, 1011, 26, CAST(N'2022-08-23T20:29:31.3437976' AS DateTime2), CAST(N'2022-08-24T14:05:29.9827640' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120140, 350010, 1011, 30, CAST(N'2022-08-23T20:29:31.3437980' AS DateTime2), CAST(N'2022-08-24T14:05:29.9827655' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120141, 350010, 1011, 27, CAST(N'2022-08-23T20:29:31.3437982' AS DateTime2), CAST(N'2022-08-24T14:05:29.9827657' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120142, 350010, 1011, 15, CAST(N'2022-08-23T20:29:31.3437983' AS DateTime2), CAST(N'2022-08-24T14:05:29.9827658' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120143, 350011, 1011, 4, CAST(N'2022-08-23T20:30:52.7209251' AS DateTime2), CAST(N'2022-08-23T20:30:52.7230918' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120145, 350011, 1011, 2, CAST(N'2022-08-23T20:30:52.7231641' AS DateTime2), CAST(N'2022-08-23T20:30:52.7231642' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120146, 350011, 1011, 1, CAST(N'2022-08-23T20:30:52.7231643' AS DateTime2), CAST(N'2022-08-23T20:30:52.7231644' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120147, 350011, 1011, 15, CAST(N'2022-08-23T20:30:52.7231645' AS DateTime2), CAST(N'2022-08-23T20:30:52.7231645' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120148, 350011, 1011, 27, CAST(N'2022-08-23T20:30:52.7231657' AS DateTime2), CAST(N'2022-08-23T20:30:52.7231658' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120149, 350011, 1011, 16, CAST(N'2022-08-23T20:30:52.7231659' AS DateTime2), CAST(N'2022-08-23T20:30:52.7231660' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120150, 350012, 1012, 4, CAST(N'2022-08-23T20:31:34.2803830' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822461' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120151, 350012, 1012, 5, CAST(N'2022-08-23T20:31:34.2822947' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822949' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120152, 350012, 1012, 6, CAST(N'2022-08-23T20:31:34.2822951' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822951' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120153, 350012, 1012, 8, CAST(N'2022-08-23T20:31:34.2822952' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822953' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120154, 350012, 1012, 15, CAST(N'2022-08-23T20:31:34.2822954' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822955' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120155, 350012, 1012, 30, CAST(N'2022-08-23T20:31:34.2822965' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822966' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120156, 350012, 1012, 11, CAST(N'2022-08-23T20:31:34.2822967' AS DateTime2), CAST(N'2022-08-23T20:31:34.2822967' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120157, 350014, 1006, 9, CAST(N'2022-08-23T20:32:45.6297758' AS DateTime2), CAST(N'2022-08-23T20:32:45.6310682' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120158, 350014, 1006, 8, CAST(N'2022-08-23T20:32:45.6310987' AS DateTime2), CAST(N'2022-08-23T20:32:45.6310988' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120159, 350014, 1006, 7, CAST(N'2022-08-23T20:32:45.6310989' AS DateTime2), CAST(N'2022-08-23T20:32:45.6310990' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120160, 350014, 1006, 6, CAST(N'2022-08-23T20:32:45.6310991' AS DateTime2), CAST(N'2022-08-23T20:32:45.6310991' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120161, 350014, 1006, 5, CAST(N'2022-08-23T20:32:45.6310992' AS DateTime2), CAST(N'2022-08-23T20:32:45.6310992' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120162, 350014, 1006, 4, CAST(N'2022-08-23T20:32:45.6311000' AS DateTime2), CAST(N'2022-08-23T20:32:45.6311000' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120163, 350014, 1006, 28, CAST(N'2022-08-23T20:32:45.6311001' AS DateTime2), CAST(N'2022-08-23T20:32:45.6311001' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120164, 350014, 1008, 9, CAST(N'2022-08-23T20:33:25.7881446' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899074' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120165, 350014, 1008, 2, CAST(N'2022-08-23T20:33:25.7899652' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899654' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120166, 350014, 1008, 7, CAST(N'2022-08-23T20:33:25.7899656' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899656' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120167, 350014, 1008, 6, CAST(N'2022-08-23T20:33:25.7899657' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899658' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120168, 350014, 1008, 5, CAST(N'2022-08-23T20:33:25.7899659' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899660' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120169, 350014, 1008, 4, CAST(N'2022-08-23T20:33:25.7899672' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899673' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120170, 350014, 1008, 28, CAST(N'2022-08-23T20:33:25.7899674' AS DateTime2), CAST(N'2022-08-23T20:33:25.7899675' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120171, 350015, 1009, 8, CAST(N'2022-08-23T20:34:05.0117859' AS DateTime2), CAST(N'2022-08-23T20:34:05.0138111' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120172, 350015, 1009, 2, CAST(N'2022-08-23T20:34:05.0138520' AS DateTime2), CAST(N'2022-08-23T20:34:05.0138521' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120173, 350015, 1009, 7, CAST(N'2022-08-23T20:34:05.0138523' AS DateTime2), CAST(N'2022-08-23T20:34:05.0138523' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120174, 350015, 1009, 6, CAST(N'2022-08-23T20:34:05.0138524' AS DateTime2), CAST(N'2022-08-23T20:34:05.0138525' AS DateTime2))
INSERT [dbo].[Schedules] ([ScheduleId], [CourseId], [TutorId], [StudentId], [CreateDateTime], [ModifiedDateTime]) VALUES (120175, 350015, 1009, 5, CAST(N'2022-08-23T20:34:05.0138526' AS DateTime2), CAST(N'2022-08-23T20:34:05.0138527' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Schedules] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (1, N'Gulzar', N'Garde', CAST(N'1995-04-24T00:00:00.0000000' AS DateTime2), 0, 1, N'vbatta@mutti.com', N'5GmjSvEclcIj/3gzGW7L+wTOVIHcl8qAg2WU/Xv+m0g=', N'+919685080113', 0, N'481599033448', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (2, N'Amrita', N'D''Alia', CAST(N'1995-12-23T00:00:00.0000000' AS DateTime2), 0, 2, N'megha.loyal@gmail.com', N'LuBYQ1jpy4RbrMV802vN93WE/dJ3EyDKY53RDQd4gjc=', N'+912590538730', 1, N'JEPPJ63697B', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (4, N'Yamini', N'Reddy', CAST(N'1997-03-25T00:00:00.0000000' AS DateTime2), 0, 0, N'rgoel@mathai.in', N'bD2Myk5R7AZQmhX1mpv/+TU14HoLlqqEz/9tbheOTi4=', N'06125510432', 0, N'453295645165', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (5, N'Koushtubh', N'Jacob', CAST(N'1999-05-03T00:00:00.0000000' AS DateTime2), 1, 9, N'gara.pamela@seth.org', N'6O964Ynrpfs3cGpCud9VC6DMvYNZfJ4nxp1pzxGlKiI=', N'+914258558064', 0, N'222173334081', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (6, N'Raju', N'Wason', CAST(N'1997-08-25T00:00:00.0000000' AS DateTime2), 1, 6, N'tbeharry@raju.ac.in', N'BnG9PNW/rBeG5Yluczw+4/FD/UZU78FT1U2YFa0C42s=', N'09787898535', 0, N'370240346266', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (7, N'Anil', N'Chakraborty', CAST(N'1998-02-13T00:00:00.0000000' AS DateTime2), 1, 0, N'namita.gobin@hotmail.com', N'Kw5AovCOERkY4id3LyADo+Halinq2grOkbxRXhlb7Jg=', N'02854659949', 0, N'453904957144', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (8, N'Raghavan', N'Borra', CAST(N'1999-06-04T00:00:00.0000000' AS DateTime2), 1, 0, N'bhakta.shashank@hotmail.com', N'FIrRX3+PsOjwVgMt8zLXTKWwrwD/iyMdPfF4syjcpIc=', N'+914332072951', 0, N'492956148916', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (9, N'Raj', N'Bhardwaj', CAST(N'1998-07-14T00:00:00.0000000' AS DateTime2), 1, 0, N'Raj.krishnan@radha.ac.in', N'8VStWpeyohZl5lUjt0aaOe0lv6ZyQMOPaRDltsRb2qI=', N'+911056913015', 0, N'525487350477', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (10, N'Dipthi', N'Sheth', CAST(N'1998-02-05T00:00:00.0000000' AS DateTime2), 0, 1, N'sheth.kasturi54@yahoo.com', N'/6Y1XNLHoxsDCxpLxP0ZL3lsKE+8qcFH2ki55xdWQZQ=', N'+919796921013', 0, N'471646836698', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (11, N'Venkat', N'Munshi', CAST(N'1997-11-24T00:00:00.0000000' AS DateTime2), 1, 2, N'munshi.venkat@hotmail.com', N'3N0aqOPQfapv0prAPOH0w0RY1L4GAXE7HWUX7Ux8X5I=', N'+919323679174', 5, N'342879738', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (12, N'Deepesh', N'Gandhi', CAST(N'1998-05-02T00:00:00.0000000' AS DateTime2), 1, 8, N'deepesh143@gmail.com', N'mo3CRF5m0mRdhTHqetvj6JNY/Sf8+v+cBqToT+9tb5c=', N'+910889941112', 3, N'293751097311', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (13, N'Amir', N'Konda', CAST(N'1998-09-22T00:00:00.0000000' AS DateTime2), 1, 7, N'kondaAmir008@yahoo.in', N'MBtrdSRw1U8Iv3dzl4UBp2QGfyngnL8CCpWc1lJBsgY=', N'02351809067', 4, N'538326935893', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (14, N'Mustafa', N'Goswami', CAST(N'1997-10-12T00:00:00.0000000' AS DateTime2), 1, 5, N'mgoswami1@yahoo.in', N'ezJd6ICINpVk+3adJa8Gr+zghfJ9x7OrJkRpnfBoaIQ=', N'+915482079880', 2, N'FKYB826350B', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (15, N'Nupoor', N'Talwar', CAST(N'1998-12-01T00:00:00.0000000' AS DateTime2), 0, 8, N'Ntalwar123@yahoo.in', N'iTmY+JX5VFcOObyvsS3H71ZdZsB3+57gl7h3tY+xXPg=', N'03221265455', 2, N'NWPG510479H', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (16, N'Leela', N'Ratti', CAST(N'2000-11-19T00:00:00.0000000' AS DateTime2), 0, 1, N'Leela.SethRathi@adobe.com', N'FkMVt98ZThN3Uf5Pg6P/ISTySTeMKhnEQH4Wicyv6j8=', N'03533904950', 2, N'HRKD301649T', 0, N'YASHWANTH1234')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (25, N'Shanata', N'Badal', CAST(N'1998-01-08T00:00:00.0000000' AS DateTime2), 0, 0, N'shantab1@gmail.com', N'IvlJm1XtWcuShZOLyy7G+otDB9PFolEYgnHrkZSJKvs=', N'9848011224', 5, N'5509348212065427', 0, N'!OL%XI4E3!JPM7!48O4XDX)CLXWJ#KP3Z%145MD5M@KW$IO6G*8KHNCX@6FV4VPPE1SQ!)P4TKKCA6KGCFHZPA%467*WRH*4IK)%#X#ZE5QUYRSZ&SN8RT*P%H%YWE)4')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (26, N'Samantaka', N'Issac', CAST(N'1987-04-10T00:00:00.0000000' AS DateTime2), 1, 1, N'samantaka.issac@gmail.com', N'iOFevAwhenW3XfZtquAIh0GOFOCp09zn1hw1G/qxKYQ=', N'9136671839', 4, N'448580672473', 0, N'SRZ75P7FQBI)TB(U&VNR6AUNAP9%9(WBNK8JBVS4^FKG0%3$B4$V%883Y)H2B&RHN3OJE&GQ!XBYKCHD!9@ZRU1SV$SQ9&D5TC4L7Q0Q94DZK4Z^C#AL@K45LQNYY$$4')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (27, N'Airavata', N'Kamat', CAST(N'1998-04-06T00:00:00.0000000' AS DateTime2), 1, 2, N'k.airavata@gmail.com', N'QJShtlEX87Thy96DJ9e+RyUPoSRJRHeh9r6TrGbhElA=', N'915277349876', 1, N'FOWPV8163H', 0, N'J5ZVAU)D&9XCZ)MLD%8#FNV39VD^Z98Q8JQ#MWR4*ZF@OZGJEEP54!1MRHOPA4NR0!6UCV#AN#PEH*O*#QC$X%6&%C02X20)TRHKU1CQ7L*!S03MC#D05V5QQ033SF*!')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (28, N'Vac', N'Das', CAST(N'1987-09-09T00:00:00.0000000' AS DateTime2), 0, 3, N'vac.das@gmail.com', N'TuRNEdjq/BbNsm9nb6/7FmYkbQaQn3CmhPF3Bk70axs=', N'670985513789', 1, N'AIEEV4820N', 0, N'NV1QFGV5APB@A2#*41HXFH7RZ7VZZ)GUM@KK%9%&RMM93LWQT97Q0@%99DDU!!XUASYP7X5^2Y6IG1D8(T7A!5@F8#AQ5JECLPKSM@&)$^9E!G(HX3IPO3H7X0FA*9N2')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (29, N'Revathi', N'Trivedi', CAST(N'1982-09-27T00:00:00.0000000' AS DateTime2), 0, 1, N'revathit889@gmail.com', N'l2I/0fJY0kIxmXMlnBDS7h5LOqbCMMNrE8aSJrzD6XU=', N'92759255685', 1, N'CKRUZ1739L', 0, N'U2*(0LASR4JOR(WMAVE!2ZOM)FB3T1ECLW5W3C9E)0Q5#L3&F2R(U1QN7)#M*@77U5L1Q5JUX0$ZC51KEON503LP%OI6HK%JX!X^9OD@(PS3K*Z*QIC*%0%K54X(&7(*')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (30, N'Jambha', N'Naicker', CAST(N'1995-05-04T00:00:00.0000000' AS DateTime2), 1, 3, N'jambha@hotmail.com', N'Je6hcOenZXb+sdcnegUEhU/fDjQuDH/qmg0aLnmdf0s=', N'73926840272', 3, N'479264933652078', 0, N'JMDTV!T5RAE&SGFTR@OT40B&E!2*#46N%TRC9HXF76^B^MACE512AW6HJ(F!W&5QUGK)O@&3&FY%3^(F)$21JQAY5$Z7*9&D@^F&H612C$3VMZQ7RPD3WM*!9J869URY')
INSERT [dbo].[Students] ([StudentID], [FirstName], [LastName], [DOB], [Gender], [MotherTongue], [EmailAddress], [Password], [MobileNumber], [GovIdType], [GovtIdentificationNumber], [FavouriteTutorByID], [CryptKey]) VALUES (31, N'Virat', N'Mehra', CAST(N'1997-08-25T00:00:00.0000000' AS DateTime2), 1, 9, N'virat.mehra99@hotmail.com', N'Xp1wuI7AoWfUfIp2KBd86oC+t6WED1w1atuks0CJufA=', N'+919064106002', 3, N'4556243111009', 0, N'MJ#G&EAR7#^ZYBL$O#$D5KTIFL$%7NL2$6$#*99V*R9QIZ2X933FWGDC#8PI@A0LDUM3BWQW$4HVQ4ZB(2M)0)W4FBL7N3H(YYHRMO0OCK&JXFQY09^19J7B2T4DMB3B')
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
SET IDENTITY_INSERT [dbo].[Tutors] ON 

INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1003, N'Biren', N'Bobal', 1, CAST(N'1977-03-30T00:00:00.0000000' AS DateTime2), 8, N'+910399201156', N'bobal.biren@gmail.com', N'u5PP/JQl5RFFhlXjOcdiqmacFSsZjxQoMQT411CRyNQ=', 0, N'522699781173', N'NQTQ40G^MCG*WQ@DUX(@8*^4CU2OR%@WHF@V78*F(4^$P&A(RB@W&FEQT4)3865*K$4*5RN%2%&XJ2GLT2E2CEPDC%J$P(BI%UN)TZZYZ*7QN#@4^NLM9&@5CTCEPN^J')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1004, N'Duhkha', N'Bansal', 1, CAST(N'1987-02-05T00:00:00.0000000' AS DateTime2), 2, N'3807840784', N'dukkhabansal8@gmail.com', N'Ol7SVwIzdVwUcllbU21xkFIsn1LGu/pXXXNELVpSdH4=', 0, N'491670952408', N'RAL!YSHS9R@IK@@M8#@0G(A*7O#L)YI1O8VQ7FWQT2PE!X899)^#A86B64#JVAQ1SA8RUC4CG)QI$4EBCC&3N*CT%$Y#4A3M7964ZW)CB1@RX(H6MHFN@JQQ7VBMS!2T')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1005, N'Suprabha', N'Prakash', 0, CAST(N'1962-01-13T00:00:00.0000000' AS DateTime2), 1, N'2337764666', N'prakash.suprabha10@gmail.com', N'CD60PnHdAwbbc86/Svbe7Srlq/fJah6MdThVyK07F3g=', 0, N'510286122185', N'LGF$33IO1KUPAJ2*M^*6F*0W(H*R9Y#VXWNEBKRIH*Y5QWBWCT!Z866O9&G)CKT7O%NUIV!3K5X%VKR#KOMB&L6J(R74^K%0C1QRRZUN%UBU248NVYA7P29F*35#B&@5')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1006, N'Supriya', N'Bedi', 0, CAST(N'1969-05-04T00:00:00.0000000' AS DateTime2), 3, N'2668953911', N'supriyaB123@gmail.com', N'63kmiV/iNNkKqsVtYIknpSF+1IVXKRQEyyMqy/SJhxc=', 0, N'548449780967', N'XM8S43N(O1ZKQ*8SGT*OZ4Y^C^^P74U0SX90OMCEMO*DIA!@R82YNXW$T8!ZHR@HU$XHM2F4&%X8K(H0EHY5PO7BKSQ46NE2UTP!)#CBFNI@VE@75PKH^AH8*BWUUKMG')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1007, N'Anshu', N'Mittal', 0, CAST(N'1956-06-03T00:00:00.0000000' AS DateTime2), 6, N'8211224847', N'mittalAnshu9@gmail.com', N'BnzKOI9tecZlNNFmEITi/3bxL5yVv8S0ENZQD4n3M2g=', 0, N'453272273402', N'XBEQHNKRRH$AJ&&27(#0JQ(#BZGJR@81(3^I96Z16LN0PL^0S&#6I7E*#@#EALSJ)*E&1P5!%1O!5&7JSMTP^W5@VC9Q450OLB@CPMLV&UH4Z4F936JTA0D7PTWY8353')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1008, N'Jatin', N'Mahabir', 1, CAST(N'1979-12-26T00:00:00.0000000' AS DateTime2), 3, N'0449628109', N'jatin345@gmail.com', N'xCreF1yoqBknRX7+1X1ub/b3PVo8SgIQG7J+hMlIV5w=', 1, N'HKPPT0295T', N'3VW@PV0(7$@VIZ&!9)LNIG^D^N$3G^*E485EH%(@1KBAMLWJ$XXP%7!FDYMFNJ!ATNAR3@2XY41D@9UMGTRI)&&@R8E6*^90FGUV5VYYKPY56T@M89!3)6$SQW@MB*BN')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1009, N'Arun', N'Sant', 1, CAST(N'1971-01-03T00:00:00.0000000' AS DateTime2), 0, N'87058532836', N'arun.s@gmail.com', N'9XWCWxSR4ia8JW7YxUYP7a+AUfXyvkfAXJ4z0HhvlH8=', 1, N'SIKKT9462N', N'JQ#6EWMQN$1!!*JONHXS8$VU1T652E1)O(SJ0((UGX7X%^M$1ILDH5RX$ZT#KH$B97NN4HM17G8X)^BZZ@*2V42R*KQ6NNTCX9IM2SUUST*6)5PP3HVYU4&10&BPQTIW')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1010, N'Sandhu', N'Kumudavati', 0, CAST(N'1998-11-10T00:00:00.0000000' AS DateTime2), 4, N'3814870271', N'k.sandhu99@gmail.com', N'CPwO2bqDD6eOgaGzeKVCAourDgd9RzGRhppMv0aDbic=', 3, N'5390913258804195', N'WC28MW4!@FIH&YJL*MO^JPYIFH##)P1I!61HBGU1PX#NTLPSNVHJ%LP*308OA&6H3#YFXG$F6H2Q04FJ#UQKOU38%TYM$BR70*G@@ZK&J7XW*L!1)0T58H$1$1H*J7I&')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1011, N'Rohit', N'Tella', 1, CAST(N'1979-07-28T00:00:00.0000000' AS DateTime2), 9, N'32139068112', N't.Rohit007@gmail.com', N'l0weYzzW4jJteyubNxb1kuia9gnsPBxgM0+hfRVfeiY=', 5, N'492988915809', N'G2CNJ^!@LRPNP*FP!T!(4XA$VL10(SZ)V(5&Q7V5K&S93*4!JU)4@F*XJ!F%IU2SJIRON8S1T0S!EF5WN)V)G$RFE9YH%C7545M2MNGFM(ZO9YY2A@8)9W%Q(B#Z$R5E')
INSERT [dbo].[Tutors] ([TutorID], [FirstName], [LastName], [Gender], [DateOfBirth], [MotherTongue], [MobileNumber], [EmailAddress], [Password], [GovIdType], [GovtIdentificationNumber], [CryptKey]) VALUES (1012, N'Shyla', N'Sheth', 0, CAST(N'1988-11-15T00:00:00.0000000' AS DateTime2), 0, N'95549487362', N's.shyla367@yahoo.in', N'HxTBSAOdE+Q0iyFEG1LV5FyrYVZltEQmsL4NclKj2IY=', 4, N'4916276496', N'0QRC8*XBU6Y#AUOJC!O!3NM%BJ3I@H*ZFN@L6!OKE*29C@89G@AC8(KYWEG@&PD5HIE9QDO4MEIFCIPLNL*VJG^HZ#^%IU7D55@UD$Q7L04QCS6E&AVZ#6MKU472^4!5')
SET IDENTITY_INSERT [dbo].[Tutors] OFF
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ((0)) FOR [FavouriteTutorByID]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (N'') FOR [CryptKey]
GO
ALTER TABLE [dbo].[Tutors] ADD  DEFAULT (N'') FOR [CryptKey]
GO
