USE [master]
GO
/****** Object:  Database [Gabriq_System_Database]    Script Date: 2021/08/29 02:40:41 ******/
CREATE DATABASE [Gabriq_System_Database]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gabriq_System_Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gabriq_System_Database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gabriq_System_Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gabriq_System_Database_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gabriq_System_Database] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gabriq_System_Database].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gabriq_System_Database] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gabriq_System_Database] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gabriq_System_Database] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gabriq_System_Database] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gabriq_System_Database] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET RECOVERY FULL 
GO
ALTER DATABASE [Gabriq_System_Database] SET  MULTI_USER 
GO
ALTER DATABASE [Gabriq_System_Database] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gabriq_System_Database] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gabriq_System_Database] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gabriq_System_Database] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Gabriq_System_Database] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gabriq_System_Database] SET QUERY_STORE = OFF
GO
USE [Gabriq_System_Database]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2021/08/29 02:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] NOT NULL,
	[Category_Name] [varchar](50) NULL,
	[Category_Description] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Checkout/Checkin]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Checkout/Checkin](
	[Checkout_ID] [int] NOT NULL,
	[Checkout_Equip] [varchar](50) NULL,
	[Checkin_Equip] [varchar](50) NULL,
 CONSTRAINT [PK_Checkout/Checkin] PRIMARY KEY CLUSTERED 
(
	[Checkout_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Checkout/Checkin_Date]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Checkout/Checkin_Date](
	[Checkout_Date_ID] [int] NOT NULL,
	[Tasks_Equipment_ID] [int] NULL,
	[Checkout_Date] [date] NULL,
	[Checkin_Date] [date] NULL,
	[Checkout_ID] [int] NULL,
 CONSTRAINT [PK_Checkout/Checkin_Date] PRIMARY KEY CLUSTERED 
(
	[Checkout_Date_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Client_ID] [int] NOT NULL,
	[Client_Name] [varchar](50) NULL,
	[Client_Address] [varchar](50) NULL,
	[Contact_Person] [varchar](50) NULL,
	[Telephone_Numbers] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Client_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_ID] [int] NOT NULL,
	[Employee_Type_ID] [int] NULL,
	[Employee_Name] [varchar](50) NULL,
	[Employee_Surname] [varchar](50) NULL,
	[Employee_ID_Number] [numeric](18, 0) NULL,
	[Employee_Telephone_Number] [numeric](18, 0) NULL,
	[Employee_Address] [varchar](50) NULL,
	[Employee_Email_Address] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Task]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Task](
	[Employee_Task_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Task_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Employee_Task] PRIMARY KEY CLUSTERED 
(
	[Employee_Task_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Type]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Type](
	[Employee_Type_ID] [int] NOT NULL,
	[Employee_Type_Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee_Type] PRIMARY KEY CLUSTERED 
(
	[Employee_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[Equipment_ID] [int] NOT NULL,
	[Equipment_Name] [varchar](50) NOT NULL,
	[Equipment_Description] [varchar](100) NOT NULL,
	[Equipment_Condition] [varchar](50) NOT NULL,
	[Quantity] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[Equipment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Inventory_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Inventory_Name] [varchar](50) NOT NULL,
	[Inventory_Description] [varchar](150) NOT NULL,
	[Quantity] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED 
(
	[Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory_On_Hand]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory_On_Hand](
	[Inventory_On_Hand_ID] [int] NOT NULL,
	[Inventory_ID] [int] NOT NULL,
	[Quantity] [numeric](18, 0) NOT NULL,
	[WriteoffInventory_ID] [int] NOT NULL,
 CONSTRAINT [PK_Inventory_On_Hand] PRIMARY KEY CLUSTERED 
(
	[Inventory_On_Hand_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Status](
	[Order_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NULL,
 CONSTRAINT [PK_Order_Status] PRIMARY KEY CLUSTERED 
(
	[Order_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderline]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderline](
	[Orderline_ID] [int] NOT NULL,
	[Inventory_ID] [int] NOT NULL,
	[Inventory_Item] [varchar](max) NOT NULL,
	[Quantity] [numeric](18, 0) NOT NULL,
	[Unit_Price] [money] NOT NULL,
	[Total_Cost] [money] NOT NULL,
 CONSTRAINT [PK_Orderline] PRIMARY KEY CLUSTERED 
(
	[Orderline_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Password_History]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Password_History](
	[Password_ID] [int] NOT NULL,
 CONSTRAINT [PK_Password_History] PRIMARY KEY CLUSTERED 
(
	[Password_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment_Type]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment_Type](
	[Payment_Type_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Payment_Type] PRIMARY KEY CLUSTERED 
(
	[Payment_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phase]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phase](
	[Phase_ID] [int] NOT NULL,
	[Phase_Status_ID] [int] NOT NULL,
	[Project_ID] [int] NOT NULL,
	[Phase_Name] [varchar](100) NOT NULL,
	[Phase_Description] [varchar](300) NOT NULL,
	[Start_Date] [date] NOT NULL,
	[End_Date] [date] NOT NULL,
 CONSTRAINT [PK_Phase] PRIMARY KEY CLUSTERED 
(
	[Phase_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phase_Inventory]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phase_Inventory](
	[Phase_Inventory_ID] [int] NOT NULL,
	[Phase_ID] [int] NULL,
	[Inventory_ID] [int] NULL,
	[Quantity] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Phase_Inventory] PRIMARY KEY CLUSTERED 
(
	[Phase_Inventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phase_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phase_Status](
	[Phase_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NULL,
 CONSTRAINT [PK_Phase_Status] PRIMARY KEY CLUSTERED 
(
	[Phase_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Project_ID] [int] NOT NULL,
	[Project_Status_ID] [int] NOT NULL,
	[Project_Name] [varchar](100) NOT NULL,
	[Project_Description] [varchar](350) NOT NULL,
	[Start_Date] [date] NOT NULL,
	[End_Date] [date] NOT NULL,
	[Site_Name] [varchar](100) NOT NULL,
	[Site_Address] [varchar](250) NOT NULL,
	[Tender_ID] [int] NOT NULL,
	[Phase_ID] [int] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Project_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_Status](
	[Project_Status_ID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
	[Comments] [varchar](50) NULL,
 CONSTRAINT [PK_Project_Status] PRIMARY KEY CLUSTERED 
(
	[Project_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[Rental_ID] [int] NOT NULL,
	[Rental_Status_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Rental_Name] [varchar](100) NOT NULL,
	[Rental_Cost] [money] NOT NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[Rental_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental_Line]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental_Line](
	[Rental_Line_ID] [int] NOT NULL,
	[Inventory_ID] [int] NOT NULL,
	[Rental_Name] [varchar](100) NOT NULL,
	[Start_Date] [date] NOT NULL,
	[End_Date] [date] NOT NULL,
	[Cost] [money] NOT NULL,
 CONSTRAINT [PK_Rental_Line] PRIMARY KEY CLUSTERED 
(
	[Rental_Line_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental_Request]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental_Request](
	[Rental_Request_ID] [int] NOT NULL,
	[Supplier_ID] [int] NULL,
	[Rental_Item] [varchar](50) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Request_Date] [date] NULL,
	[Rental_Request_Status_ID] [int] NULL,
 CONSTRAINT [PK_Rental_Request] PRIMARY KEY CLUSTERED 
(
	[Rental_Request_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental_Request_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental_Request_Status](
	[Rental_Request_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rental_Request_Status] PRIMARY KEY CLUSTERED 
(
	[Rental_Request_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental_Status](
	[Rental_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rental_Status] PRIMARY KEY CLUSTERED 
(
	[Rental_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcontractor]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcontractor](
	[Subcontractor_ID] [int] NOT NULL,
	[Sub_Name] [varchar](100) NOT NULL,
	[Sub_Address] [varchar](150) NOT NULL,
	[Sub_Job_Description] [varchar](250) NOT NULL,
	[Telephone_Number] [varchar](14) NOT NULL,
	[Email_Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subcontractor] PRIMARY KEY CLUSTERED 
(
	[Subcontractor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcontractor_Phase]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcontractor_Phase](
	[Subcontractor_Phase_ID] [int] NOT NULL,
	[Subcontractor_ID] [int] NULL,
	[Phase_ID] [int] NULL,
 CONSTRAINT [PK_Subcontractor_Phase] PRIMARY KEY CLUSTERED 
(
	[Subcontractor_Phase_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Supplier_ID] [int] NOT NULL,
	[Supplier_Type_ID] [int] NULL,
	[Supplier_Request_ID] [int] NULL,
	[Supplier_Name] [varchar](50) NULL,
	[Supplier_Address] [varchar](50) NULL,
	[Supplier_Email] [varchar](50) NULL,
	[Supplier_Telephone_Number] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Order]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Order](
	[Supplier_Order_ID] [int] NOT NULL,
	[Project_ID] [int] NOT NULL,
	[Order_Status_ID] [int] NOT NULL,
	[Payment_Type_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Order_Items] [varchar](max) NOT NULL,
	[Total_Cost] [money] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
 CONSTRAINT [PK_Supplier_Order] PRIMARY KEY CLUSTERED 
(
	[Supplier_Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Request]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Request](
	[Supplier_Request_ID] [int] NOT NULL,
	[Item_Name] [varchar](50) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Date] [date] NULL,
	[Supplier_Request_Status_ID] [int] NULL,
 CONSTRAINT [PK_Supplier_Request] PRIMARY KEY CLUSTERED 
(
	[Supplier_Request_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Request_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Request_Status](
	[Supplier_Request_Status_ID] [int] NOT NULL,
	[Description] [varchar](50) NULL,
 CONSTRAINT [PK_Supplier_Request_Status] PRIMARY KEY CLUSTERED 
(
	[Supplier_Request_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Type]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Type](
	[Supplier_Type_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Supplier_Type] PRIMARY KEY CLUSTERED 
(
	[Supplier_Type_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[Task_ID] [int] NOT NULL,
	[Phase_ID] [int] NOT NULL,
	[Task_Status_ID] [int] NOT NULL,
	[Task_Description] [varchar](250) NOT NULL,
	[Start_Date] [date] NOT NULL,
	[End_Date] [date] NOT NULL,
	[Equipment] [varchar](300) NOT NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[Task_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_Status](
	[Task_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Task_Status] PRIMARY KEY CLUSTERED 
(
	[Task_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks_Equipment]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks_Equipment](
	[Tasks_Equipment_ID] [int] NOT NULL,
	[Task_ID] [int] NOT NULL,
	[Equipment_ID] [int] NOT NULL,
	[Checkout_Equipment] [varchar](50) NULL,
	[Checkin_Equipment] [varchar](50) NULL,
	[Quantity_Checkout] [numeric](18, 0) NULL,
	[Quantity_Checkin] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Tasks_Equipment] PRIMARY KEY CLUSTERED 
(
	[Tasks_Equipment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender](
	[Tender_ID] [int] NOT NULL,
	[Tender_Status_ID] [int] NOT NULL,
	[Tender_Name] [varchar](100) NOT NULL,
	[Tender_Source] [varchar](50) NOT NULL,
	[Budget] [numeric](18, 0) NOT NULL,
	[Project_ID] [int] NOT NULL,
 CONSTRAINT [PK_Tender] PRIMARY KEY CLUSTERED 
(
	[Tender_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender_Request]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender_Request](
	[Tender_Request_ID] [int] NOT NULL,
	[Tender_Request_Status_ID] [int] NOT NULL,
	[Client_ID] [int] NOT NULL,
	[Tender_ID] [int] NOT NULL,
	[Tender_Name] [varchar](50) NOT NULL,
	[Advertisement_Document] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Tender_Request] PRIMARY KEY CLUSTERED 
(
	[Tender_Request_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender_Request_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender_Request_Status](
	[Tender_Request_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tender_Request_Status] PRIMARY KEY CLUSTERED 
(
	[Tender_Request_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tender_Status]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tender_Status](
	[Tender_Status_ID] [int] NOT NULL,
	[Status_Type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tender_Status] PRIMARY KEY CLUSTERED 
(
	[Tender_Status_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_ID] [int] NOT NULL,
	[User_Role_ID] [int] NOT NULL,
	[Employee_ID] [int] NOT NULL,
	[Password_ID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[User_Role_ID] [int] NOT NULL,
	[Role_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User_Role] PRIMARY KEY CLUSTERED 
(
	[User_Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WriteOff_Inventory]    Script Date: 2021/08/29 02:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WriteOff_Inventory](
	[WriteoffInventory_ID] [int] NOT NULL,
	[Item_Name] [varchar](100) NOT NULL,
	[Quality] [varchar](50) NOT NULL,
	[Reason] [varchar](250) NOT NULL,
 CONSTRAINT [PK_WriteOff_Inventory] PRIMARY KEY CLUSTERED 
(
	[WriteoffInventory_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Checkout/Checkin_Date]  WITH CHECK ADD  CONSTRAINT [FK_Checkout/Checkin_Date_Checkout/Checkin] FOREIGN KEY([Checkout_ID])
REFERENCES [dbo].[Checkout/Checkin] ([Checkout_ID])
GO
ALTER TABLE [dbo].[Checkout/Checkin_Date] CHECK CONSTRAINT [FK_Checkout/Checkin_Date_Checkout/Checkin]
GO
ALTER TABLE [dbo].[Checkout/Checkin_Date]  WITH CHECK ADD  CONSTRAINT [FK_Checkout/Checkin_Date_Tasks_Equipment] FOREIGN KEY([Tasks_Equipment_ID])
REFERENCES [dbo].[Tasks_Equipment] ([Tasks_Equipment_ID])
GO
ALTER TABLE [dbo].[Checkout/Checkin_Date] CHECK CONSTRAINT [FK_Checkout/Checkin_Date_Tasks_Equipment]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Employee_Type] FOREIGN KEY([Employee_Type_ID])
REFERENCES [dbo].[Employee_Type] ([Employee_Type_ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Employee_Type]
GO
ALTER TABLE [dbo].[Employee_Task]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Task_Employee] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([Employee_ID])
GO
ALTER TABLE [dbo].[Employee_Task] CHECK CONSTRAINT [FK_Employee_Task_Employee]
GO
ALTER TABLE [dbo].[Employee_Task]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Task_Task] FOREIGN KEY([Task_ID])
REFERENCES [dbo].[Task] ([Task_ID])
GO
ALTER TABLE [dbo].[Employee_Task] CHECK CONSTRAINT [FK_Employee_Task_Task]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Category] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Category]
GO
ALTER TABLE [dbo].[Inventory_On_Hand]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_On_Hand_Inventory] FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Inventory_On_Hand] CHECK CONSTRAINT [FK_Inventory_On_Hand_Inventory]
GO
ALTER TABLE [dbo].[Inventory_On_Hand]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_On_Hand_WriteOff_Inventory] FOREIGN KEY([WriteoffInventory_ID])
REFERENCES [dbo].[WriteOff_Inventory] ([WriteoffInventory_ID])
GO
ALTER TABLE [dbo].[Inventory_On_Hand] CHECK CONSTRAINT [FK_Inventory_On_Hand_WriteOff_Inventory]
GO
ALTER TABLE [dbo].[Orderline]  WITH CHECK ADD  CONSTRAINT [FK_Orderline_Inventory] FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Orderline] CHECK CONSTRAINT [FK_Orderline_Inventory]
GO
ALTER TABLE [dbo].[Phase]  WITH CHECK ADD  CONSTRAINT [FK_Phase_Phase_Status] FOREIGN KEY([Phase_Status_ID])
REFERENCES [dbo].[Phase_Status] ([Phase_Status_ID])
GO
ALTER TABLE [dbo].[Phase] CHECK CONSTRAINT [FK_Phase_Phase_Status]
GO
ALTER TABLE [dbo].[Phase]  WITH CHECK ADD  CONSTRAINT [FK_Phase_Project] FOREIGN KEY([Project_ID])
REFERENCES [dbo].[Project] ([Project_ID])
GO
ALTER TABLE [dbo].[Phase] CHECK CONSTRAINT [FK_Phase_Project]
GO
ALTER TABLE [dbo].[Phase_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Phase_Inventory_Inventory] FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Phase_Inventory] CHECK CONSTRAINT [FK_Phase_Inventory_Inventory]
GO
ALTER TABLE [dbo].[Phase_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Phase_Inventory_Phase] FOREIGN KEY([Phase_ID])
REFERENCES [dbo].[Phase] ([Phase_ID])
GO
ALTER TABLE [dbo].[Phase_Inventory] CHECK CONSTRAINT [FK_Phase_Inventory_Phase]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Phase] FOREIGN KEY([Phase_ID])
REFERENCES [dbo].[Phase] ([Phase_ID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Phase]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Project_Status] FOREIGN KEY([Project_Status_ID])
REFERENCES [dbo].[Project_Status] ([Project_Status_ID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Project_Status]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Tender] FOREIGN KEY([Tender_ID])
REFERENCES [dbo].[Tender] ([Tender_ID])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Tender]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Rental_Status] FOREIGN KEY([Rental_Status_ID])
REFERENCES [dbo].[Rental_Status] ([Rental_Status_ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Rental_Status]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Supplier]
GO
ALTER TABLE [dbo].[Rental_Line]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Line_Inventory] FOREIGN KEY([Inventory_ID])
REFERENCES [dbo].[Inventory] ([Inventory_ID])
GO
ALTER TABLE [dbo].[Rental_Line] CHECK CONSTRAINT [FK_Rental_Line_Inventory]
GO
ALTER TABLE [dbo].[Rental_Request]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Request_Rental_Request_Status] FOREIGN KEY([Rental_Request_Status_ID])
REFERENCES [dbo].[Rental_Request_Status] ([Rental_Request_Status_ID])
GO
ALTER TABLE [dbo].[Rental_Request] CHECK CONSTRAINT [FK_Rental_Request_Rental_Request_Status]
GO
ALTER TABLE [dbo].[Rental_Request]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Request_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Rental_Request] CHECK CONSTRAINT [FK_Rental_Request_Supplier]
GO
ALTER TABLE [dbo].[Subcontractor_Phase]  WITH CHECK ADD  CONSTRAINT [FK_Subcontractor_Phase_Phase] FOREIGN KEY([Phase_ID])
REFERENCES [dbo].[Phase] ([Phase_ID])
GO
ALTER TABLE [dbo].[Subcontractor_Phase] CHECK CONSTRAINT [FK_Subcontractor_Phase_Phase]
GO
ALTER TABLE [dbo].[Subcontractor_Phase]  WITH CHECK ADD  CONSTRAINT [FK_Subcontractor_Phase_Subcontractor] FOREIGN KEY([Subcontractor_ID])
REFERENCES [dbo].[Subcontractor] ([Subcontractor_ID])
GO
ALTER TABLE [dbo].[Subcontractor_Phase] CHECK CONSTRAINT [FK_Subcontractor_Phase_Subcontractor]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Supplier_Request] FOREIGN KEY([Supplier_Request_ID])
REFERENCES [dbo].[Supplier_Request] ([Supplier_Request_ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Supplier_Request]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Supplier_Type] FOREIGN KEY([Supplier_Type_ID])
REFERENCES [dbo].[Supplier_Type] ([Supplier_Type_ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Supplier_Type]
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order_Employee] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([Employee_ID])
GO
ALTER TABLE [dbo].[Supplier_Order] CHECK CONSTRAINT [FK_Supplier_Order_Employee]
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order_Order_Status] FOREIGN KEY([Order_Status_ID])
REFERENCES [dbo].[Order_Status] ([Order_Status_ID])
GO
ALTER TABLE [dbo].[Supplier_Order] CHECK CONSTRAINT [FK_Supplier_Order_Order_Status]
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order_Payment_Type] FOREIGN KEY([Payment_Type_ID])
REFERENCES [dbo].[Payment_Type] ([Payment_Type_ID])
GO
ALTER TABLE [dbo].[Supplier_Order] CHECK CONSTRAINT [FK_Supplier_Order_Payment_Type]
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order_Project] FOREIGN KEY([Project_ID])
REFERENCES [dbo].[Project] ([Project_ID])
GO
ALTER TABLE [dbo].[Supplier_Order] CHECK CONSTRAINT [FK_Supplier_Order_Project]
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order_Supplier] FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Supplier_Order] CHECK CONSTRAINT [FK_Supplier_Order_Supplier]
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Order_Supplier_Order] FOREIGN KEY([Supplier_Order_ID])
REFERENCES [dbo].[Supplier_Order] ([Supplier_Order_ID])
GO
ALTER TABLE [dbo].[Supplier_Order] CHECK CONSTRAINT [FK_Supplier_Order_Supplier_Order]
GO
ALTER TABLE [dbo].[Supplier_Request]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Request_Supplier_Request_Status] FOREIGN KEY([Supplier_Request_Status_ID])
REFERENCES [dbo].[Supplier_Request_Status] ([Supplier_Request_Status_ID])
GO
ALTER TABLE [dbo].[Supplier_Request] CHECK CONSTRAINT [FK_Supplier_Request_Supplier_Request_Status]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Phase] FOREIGN KEY([Phase_ID])
REFERENCES [dbo].[Phase] ([Phase_ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Phase]
GO
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_Task_Task_Status] FOREIGN KEY([Task_Status_ID])
REFERENCES [dbo].[Task_Status] ([Task_Status_ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_Task_Task_Status]
GO
ALTER TABLE [dbo].[Tasks_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Equipment_Equipment] FOREIGN KEY([Equipment_ID])
REFERENCES [dbo].[Equipment] ([Equipment_ID])
GO
ALTER TABLE [dbo].[Tasks_Equipment] CHECK CONSTRAINT [FK_Tasks_Equipment_Equipment]
GO
ALTER TABLE [dbo].[Tasks_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Equipment_Task] FOREIGN KEY([Task_ID])
REFERENCES [dbo].[Task] ([Task_ID])
GO
ALTER TABLE [dbo].[Tasks_Equipment] CHECK CONSTRAINT [FK_Tasks_Equipment_Task]
GO
ALTER TABLE [dbo].[Tender]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Project] FOREIGN KEY([Project_ID])
REFERENCES [dbo].[Project] ([Project_ID])
GO
ALTER TABLE [dbo].[Tender] CHECK CONSTRAINT [FK_Tender_Project]
GO
ALTER TABLE [dbo].[Tender]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Tender_Status] FOREIGN KEY([Tender_Status_ID])
REFERENCES [dbo].[Tender_Status] ([Tender_Status_ID])
GO
ALTER TABLE [dbo].[Tender] CHECK CONSTRAINT [FK_Tender_Tender_Status]
GO
ALTER TABLE [dbo].[Tender_Request]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Request_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([Client_ID])
GO
ALTER TABLE [dbo].[Tender_Request] CHECK CONSTRAINT [FK_Tender_Request_Client]
GO
ALTER TABLE [dbo].[Tender_Request]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Request_Tender] FOREIGN KEY([Tender_ID])
REFERENCES [dbo].[Tender] ([Tender_ID])
GO
ALTER TABLE [dbo].[Tender_Request] CHECK CONSTRAINT [FK_Tender_Request_Tender]
GO
ALTER TABLE [dbo].[Tender_Request]  WITH CHECK ADD  CONSTRAINT [FK_Tender_Request_Tender_Request_Status] FOREIGN KEY([Tender_Request_Status_ID])
REFERENCES [dbo].[Tender_Request_Status] ([Tender_Request_Status_ID])
GO
ALTER TABLE [dbo].[Tender_Request] CHECK CONSTRAINT [FK_Tender_Request_Tender_Request_Status]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Employee] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([Employee_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Employee]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Password_History] FOREIGN KEY([Password_ID])
REFERENCES [dbo].[Password_History] ([Password_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Password_History]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User_Role] FOREIGN KEY([User_Role_ID])
REFERENCES [dbo].[User_Role] ([User_Role_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Gabriq_System_Database] SET  READ_WRITE 
GO
