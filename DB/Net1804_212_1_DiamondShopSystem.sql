USE [master]
GO
/****** Object:  Database [Net1804_212-1_DiamondShopSystemV2]    Script Date: 7/9/2024 11:25:07 AM ******/
CREATE DATABASE [Net1804_212-1_DiamondShopSystemV2]

CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](200) NULL,
	[Phone] [nvarchar](10) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[ImgUrl] [nchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[Gender] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/18/2024 7:15:40 AM ******/
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
    	Industry nvarchar(100) NULL,
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
