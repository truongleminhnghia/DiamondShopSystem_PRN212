﻿USE [master]
GO
/****** Object:  Database [Net1804_212-1_DiamondShopSystemV2]    Script Date: 7/9/2024 11:25:07 AM ******/
CREATE DATABASE [Net1804_212-1_DiamondShopSystemV2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Net1804_212-1_DiamondShopSystemV2', FILENAME = N'D:\FPT_term\Chuyên ngành 5\PRN212\demoV2\DataBase\Net1804_212-1_DiamondShopSystemV2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Net1804_212-1_DiamondShopSystemV2_log', FILENAME = N'D:\FPT_term\Chuyên ngành 5\PRN212\demoV2\DataBase\Net1804_212-1_DiamondShopSystemV2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Net1804_212-1_DiamondShopSystemV2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET RECOVERY FULL 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET  MULTI_USER 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Net1804_212-1_DiamondShopSystemV2', N'ON'
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET QUERY_STORE = OFF
GO
USE [Net1804_212-1_DiamondShopSystemV2]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 7/9/2024 11:25:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 7/9/2024 11:25:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](200) NULL,
	[brand] [nvarchar](100) NULL,
	[diamond] [nvarchar](100) NULL,
	[image] [nvarchar](max) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[size] [int] NULL,
	[categoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[categories] ([categoryId])
GO
USE [master]
GO
ALTER DATABASE [Net1804_212-1_DiamondShopSystemV2] SET  READ_WRITE 
GO

CREATE TABLE [dbo].[Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](200) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	FoundedDate datetime NULL,
    	Website nvarchar(200) NULL,
    	IsActive bit NOT NULL DEFAULT 1,
    	Industry nvarchar(100) NULL;
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT INTO [dbo].[Company] (CompanyName, Address, Phone, Email, Description, FoundedDate, Website, IsActive, Industry)
VALUES 
('Diamond Inc.', '123 Diamond St, New York, NY', '123-456-7890', 'info@diamondinc.com', 'Leading diamond retailer.', '2001-05-20', 'http://www.diamondinc.com', 1, 'Jewelry'),
('Gemstone Co.', '456 Gemstone Blvd, Los Angeles, CA', '987-654-3210', 'contact@gemstoneco.com', 'Exclusive gemstones and jewelry.', '1998-11-15', 'http://www.gemstoneco.com', 1, 'Jewelry'),
('Sparkle Ltd.', '789 Sparkle Way, Chicago, IL', '555-123-4567', 'support@sparkleltd.com', 'Premium sparkle jewelry.', '2005-03-10', 'http://www.sparkleltd.com', 1, 'Jewelry'),
('Luxury Gems', '101 Luxury Lane, Miami, FL', '444-555-6666', 'sales@luxurygems.com', 'Luxury gems and accessories.', '2010-07-25', 'http://www.luxurygems.com', 1, 'Jewelry'),
('Precious Stones', '202 Precious Stones Rd, San Francisco, CA', '222-333-4444', 'info@preciousstones.com', 'Specializing in precious stones.', '1995-02-18', 'http://www.preciousstones.com', 1, 'Jewelry');
GO
