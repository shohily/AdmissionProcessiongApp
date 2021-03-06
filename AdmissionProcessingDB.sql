USE [master]
GO
/****** Object:  Database [DB_AdmissionProcessingSystem]    Script Date: 6/3/2015 8:24:34 AM ******/
CREATE DATABASE [DB_AdmissionProcessingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_AdmissionProcessingSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_AdmissionProcessingSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_AdmissionProcessingSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_AdmissionProcessingSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_AdmissionProcessingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_AdmissionProcessingSystem]
GO
/****** Object:  Table [dbo].[Table_AdmissionProcessing]    Script Date: 6/3/2015 8:24:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_AdmissionProcessing](
	[AdmissionID] [int] NULL,
	[HscRollNo] [int] NULL,
	[HscGpa] [float] NULL,
	[SscRollNo] [int] NULL,
	[SscGpa] [float] NULL,
	[MeritOrder] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Table_AdmissionProcessing] ([AdmissionID], [HscRollNo], [HscGpa], [SscRollNo], [SscGpa], [MeritOrder]) VALUES (1, 10, 4.5, 200, 5, N'11')
INSERT [dbo].[Table_AdmissionProcessing] ([AdmissionID], [HscRollNo], [HscGpa], [SscRollNo], [SscGpa], [MeritOrder]) VALUES (2, 1001, 5, 2002, 5, N'1')
INSERT [dbo].[Table_AdmissionProcessing] ([AdmissionID], [HscRollNo], [HscGpa], [SscRollNo], [SscGpa], [MeritOrder]) VALUES (3, 11001, 4.88, 10101, 5, N'9')
USE [master]
GO
ALTER DATABASE [DB_AdmissionProcessingSystem] SET  READ_WRITE 
GO
