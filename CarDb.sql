USE [master]
GO
/****** Object:  Database [AutoChoose]    Script Date: 1/17/2020 3:25:00 AM ******/
CREATE DATABASE [AutoChoose]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AutoChoose', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AutoChoose.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AutoChoose_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AutoChoose_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AutoChoose] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AutoChoose].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AutoChoose] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AutoChoose] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AutoChoose] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AutoChoose] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AutoChoose] SET ARITHABORT OFF 
GO
ALTER DATABASE [AutoChoose] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AutoChoose] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AutoChoose] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AutoChoose] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AutoChoose] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AutoChoose] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AutoChoose] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AutoChoose] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AutoChoose] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AutoChoose] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AutoChoose] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AutoChoose] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AutoChoose] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AutoChoose] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AutoChoose] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AutoChoose] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AutoChoose] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AutoChoose] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AutoChoose] SET  MULTI_USER 
GO
ALTER DATABASE [AutoChoose] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AutoChoose] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AutoChoose] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AutoChoose] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AutoChoose] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AutoChoose] SET QUERY_STORE = OFF
GO
USE [AutoChoose]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 1/17/2020 3:25:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductionDate] [nvarchar](50) NULL,
	[EngineType] [nvarchar](50) NULL,
	[Engine] [int] NULL,
	[Transmission] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Milage] [int] NULL,
	[ModelId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 1/17/2020 3:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 1/17/2020 3:25:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[MarkaId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 
GO
INSERT [dbo].[Cars] ([Id], [ProductionDate], [EngineType], [Engine], [Transmission], [Color], [Milage], [ModelId]) VALUES (1, N'2019-01-01', N'Petrol', 3, N'Automat', N'Black', 10000, 1)
GO
INSERT [dbo].[Cars] ([Id], [ProductionDate], [EngineType], [Engine], [Transmission], [Color], [Milage], [ModelId]) VALUES (2, N'2018-01-01', N'Diesel', 2, N'Manual', N'Red', 25000, 2)
GO
INSERT [dbo].[Cars] ([Id], [ProductionDate], [EngineType], [Engine], [Transmission], [Color], [Milage], [ModelId]) VALUES (3, N'2017-01-01', N'Petrol', 2, N'Automat', N'Purple', 50000, 3)
GO
INSERT [dbo].[Cars] ([Id], [ProductionDate], [EngineType], [Engine], [Transmission], [Color], [Milage], [ModelId]) VALUES (4, N'2010-01-01', N'Petrol', 5, N'Automat', N'Yellow', 10000, 4)
GO
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Marka] ON 
GO
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (1, N'Mercedes')
GO
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (2, N'BMW')
GO
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (3, N'Alfa-Romeo')
GO
INSERT [dbo].[Marka] ([Id], [Name]) VALUES (4, N'Toyota')
GO
SET IDENTITY_INSERT [dbo].[Marka] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 
GO
INSERT [dbo].[Model] ([Id], [Name], [MarkaId]) VALUES (1, N'E200', 1)
GO
INSERT [dbo].[Model] ([Id], [Name], [MarkaId]) VALUES (2, N'530', 2)
GO
INSERT [dbo].[Model] ([Id], [Name], [MarkaId]) VALUES (3, N'Mito', 3)
GO
INSERT [dbo].[Model] ([Id], [Name], [MarkaId]) VALUES (4, N'Camry', 4)
GO
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD FOREIGN KEY([ModelId])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD FOREIGN KEY([MarkaId])
REFERENCES [dbo].[Marka] ([Id])
GO
USE [master]
GO
ALTER DATABASE [AutoChoose] SET  READ_WRITE 
GO
