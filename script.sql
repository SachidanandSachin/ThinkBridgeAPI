USE [master]
GO
/****** Object:  Database [ProductsDb]    Script Date: 22-02-2021 16:46:13 ******/
CREATE DATABASE [ProductsDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProductsDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\ProductsDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProductsDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\ProductsDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProductsDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProductsDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProductsDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProductsDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProductsDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProductsDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProductsDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProductsDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProductsDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProductsDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProductsDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProductsDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProductsDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProductsDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProductsDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProductsDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProductsDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProductsDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProductsDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProductsDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProductsDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProductsDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProductsDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ProductsDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProductsDb] SET RECOVERY FULL 
GO
ALTER DATABASE [ProductsDb] SET  MULTI_USER 
GO
ALTER DATABASE [ProductsDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProductsDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProductsDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProductsDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProductsDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProductsDb', N'ON'
GO
ALTER DATABASE [ProductsDb] SET QUERY_STORE = OFF
GO
USE [ProductsDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22-02-2021 16:46:17 ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 22-02-2021 16:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[prodId] [int] IDENTITY(1,1) NOT NULL,
	[prodType] [nvarchar](30) NULL,
	[prodPrice] [int] NOT NULL,
	[prodManufacturer] [nvarchar](30) NULL,
	[prodRating] [int] NOT NULL,
	[YearOfManuf] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[prodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210220025526_InitialMigration', N'5.0.3')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([prodId], [prodType], [prodPrice], [prodManufacturer], [prodRating], [YearOfManuf]) VALUES (2, N'Laptop', 56000, N'Apple', 5, 2013)
INSERT [dbo].[Products] ([prodId], [prodType], [prodPrice], [prodManufacturer], [prodRating], [YearOfManuf]) VALUES (1003, N'HeadPhone', 32000, N'Sony', 4, 2019)
INSERT [dbo].[Products] ([prodId], [prodType], [prodPrice], [prodManufacturer], [prodRating], [YearOfManuf]) VALUES (1004, N'WashingMachine', 17000, N'Samsung', 3, 2017)
INSERT [dbo].[Products] ([prodId], [prodType], [prodPrice], [prodManufacturer], [prodRating], [YearOfManuf]) VALUES (1005, N'Trimmer', 1921, N'Philips', 4, 2020)
INSERT [dbo].[Products] ([prodId], [prodType], [prodPrice], [prodManufacturer], [prodRating], [YearOfManuf]) VALUES (2002, N'Sunglass', 3900, N'Rayban', 4, 2019)
INSERT [dbo].[Products] ([prodId], [prodType], [prodPrice], [prodManufacturer], [prodRating], [YearOfManuf]) VALUES (2003, N'Mobile', 6300, N'Samsung', 4, 2018)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [ProductsDb] SET  READ_WRITE 
GO
