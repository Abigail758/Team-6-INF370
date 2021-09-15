
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/15/2021 06:51:20
-- Generated from EDMX file: C:\Users\User\source\repos\Brainy_Bunch\Brainy_Bunch\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Gabriq_System_Database];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Checkout_Checkin_Date_Checkout_Checkin]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Checkout_Checkin_Date] DROP CONSTRAINT [FK_Checkout_Checkin_Date_Checkout_Checkin];
GO
IF OBJECT_ID(N'[dbo].[FK_Checkout_Checkin_Date_Checkout_Checkin1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Checkout_Checkin_Date1] DROP CONSTRAINT [FK_Checkout_Checkin_Date_Checkout_Checkin1];
GO
IF OBJECT_ID(N'[dbo].[FK_Checkout_Checkin_Date_Checkout_Checkin2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Checkout_Checkin_Date2] DROP CONSTRAINT [FK_Checkout_Checkin_Date_Checkout_Checkin2];
GO
IF OBJECT_ID(N'[dbo].[FK_Checkout_Checkin_Date_Tasks_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Checkout_Checkin_Date] DROP CONSTRAINT [FK_Checkout_Checkin_Date_Tasks_Equipment];
GO
IF OBJECT_ID(N'[dbo].[FK_Checkout_Checkin_Date_Tasks_Equipment1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Checkout_Checkin_Date1] DROP CONSTRAINT [FK_Checkout_Checkin_Date_Tasks_Equipment1];
GO
IF OBJECT_ID(N'[dbo].[FK_Checkout_Checkin_Date_Tasks_Equipment2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Checkout_Checkin_Date2] DROP CONSTRAINT [FK_Checkout_Checkin_Date_Tasks_Equipment2];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Employee_Type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employee_Employee_Type];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Employee_Type1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee1] DROP CONSTRAINT [FK_Employee_Employee_Type1];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Employee_Type2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee2] DROP CONSTRAINT [FK_Employee_Employee_Type2];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Task_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Task] DROP CONSTRAINT [FK_Employee_Task_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Task_Employee1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Task] DROP CONSTRAINT [FK_Employee_Task_Employee1];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Task_Employee2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Task] DROP CONSTRAINT [FK_Employee_Task_Employee2];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Task_Task]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Task] DROP CONSTRAINT [FK_Employee_Task_Task];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Task_Task1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Task] DROP CONSTRAINT [FK_Employee_Task_Task1];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_Task_Task2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee_Task] DROP CONSTRAINT [FK_Employee_Task_Task2];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_Category]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventories] DROP CONSTRAINT [FK_Inventory_Category];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_Category1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventory1] DROP CONSTRAINT [FK_Inventory_Category1];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_Category2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventory2] DROP CONSTRAINT [FK_Inventory_Category2];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_On_Hand_Inventory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventory_On_Hand] DROP CONSTRAINT [FK_Inventory_On_Hand_Inventory];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_On_Hand_Inventory1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventory_On_Hand] DROP CONSTRAINT [FK_Inventory_On_Hand_Inventory1];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_On_Hand_Inventory2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventory_On_Hand] DROP CONSTRAINT [FK_Inventory_On_Hand_Inventory2];
GO
IF OBJECT_ID(N'[dbo].[FK_Inventory_On_Hand_WriteOff_Inventory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inventory_On_Hand] DROP CONSTRAINT [FK_Inventory_On_Hand_WriteOff_Inventory];
GO
IF OBJECT_ID(N'[dbo].[FK_Orderline_Inventory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orderlines] DROP CONSTRAINT [FK_Orderline_Inventory];
GO
IF OBJECT_ID(N'[dbo].[FK_Orderline_Inventory1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orderline1] DROP CONSTRAINT [FK_Orderline_Inventory1];
GO
IF OBJECT_ID(N'[dbo].[FK_Orderline_Inventory2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orderline2] DROP CONSTRAINT [FK_Orderline_Inventory2];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Inventory_Inventory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase_Inventory] DROP CONSTRAINT [FK_Phase_Inventory_Inventory];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Inventory_Inventory1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase_Inventory] DROP CONSTRAINT [FK_Phase_Inventory_Inventory1];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Inventory_Inventory2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase_Inventory] DROP CONSTRAINT [FK_Phase_Inventory_Inventory2];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Inventory_Phase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase_Inventory] DROP CONSTRAINT [FK_Phase_Inventory_Phase];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Inventory_Phase1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase_Inventory] DROP CONSTRAINT [FK_Phase_Inventory_Phase1];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Inventory_Phase2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase_Inventory] DROP CONSTRAINT [FK_Phase_Inventory_Phase2];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Phase_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phases] DROP CONSTRAINT [FK_Phase_Phase_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Phase_Status1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase1] DROP CONSTRAINT [FK_Phase_Phase_Status1];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Phase_Status2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase2] DROP CONSTRAINT [FK_Phase_Phase_Status2];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phases] DROP CONSTRAINT [FK_Phase_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Project1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase1] DROP CONSTRAINT [FK_Phase_Project1];
GO
IF OBJECT_ID(N'[dbo].[FK_Phase_Project2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Phase2] DROP CONSTRAINT [FK_Phase_Project2];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Phase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Project_Phase];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Phase1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Project1] DROP CONSTRAINT [FK_Project_Phase1];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Phase2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Project2] DROP CONSTRAINT [FK_Project_Phase2];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Project_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Project_Project_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Project_Status1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Project1] DROP CONSTRAINT [FK_Project_Project_Status1];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Project_Status2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Project2] DROP CONSTRAINT [FK_Project_Project_Status2];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Tender]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Projects] DROP CONSTRAINT [FK_Project_Tender];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Tender1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Project1] DROP CONSTRAINT [FK_Project_Tender1];
GO
IF OBJECT_ID(N'[dbo].[FK_Project_Tender2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Project2] DROP CONSTRAINT [FK_Project_Tender2];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Line_Inventory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Line] DROP CONSTRAINT [FK_Rental_Line_Inventory];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Line_Inventory1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Line] DROP CONSTRAINT [FK_Rental_Line_Inventory1];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Line_Inventory2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Line] DROP CONSTRAINT [FK_Rental_Line_Inventory2];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Rental_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rentals] DROP CONSTRAINT [FK_Rental_Rental_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Rental_Status1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental1] DROP CONSTRAINT [FK_Rental_Rental_Status1];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Rental_Status2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental2] DROP CONSTRAINT [FK_Rental_Rental_Status2];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Request_Rental_Request_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Request] DROP CONSTRAINT [FK_Rental_Request_Rental_Request_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Request_Supplier]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Request] DROP CONSTRAINT [FK_Rental_Request_Supplier];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Request_Supplier1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Request] DROP CONSTRAINT [FK_Rental_Request_Supplier1];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Request_Supplier2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental_Request] DROP CONSTRAINT [FK_Rental_Request_Supplier2];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Supplier]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rentals] DROP CONSTRAINT [FK_Rental_Supplier];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Supplier1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental1] DROP CONSTRAINT [FK_Rental_Supplier1];
GO
IF OBJECT_ID(N'[dbo].[FK_Rental_Supplier2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rental2] DROP CONSTRAINT [FK_Rental_Supplier2];
GO
IF OBJECT_ID(N'[dbo].[FK_Subcontractor_Phase_Phase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subcontractor_Phase] DROP CONSTRAINT [FK_Subcontractor_Phase_Phase];
GO
IF OBJECT_ID(N'[dbo].[FK_Subcontractor_Phase_Phase1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subcontractor_Phase] DROP CONSTRAINT [FK_Subcontractor_Phase_Phase1];
GO
IF OBJECT_ID(N'[dbo].[FK_Subcontractor_Phase_Phase2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subcontractor_Phase] DROP CONSTRAINT [FK_Subcontractor_Phase_Phase2];
GO
IF OBJECT_ID(N'[dbo].[FK_Subcontractor_Phase_Subcontractor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subcontractor_Phase] DROP CONSTRAINT [FK_Subcontractor_Phase_Subcontractor];
GO
IF OBJECT_ID(N'[dbo].[FK_Subcontractor_Phase_Subcontractor1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subcontractor_Phase] DROP CONSTRAINT [FK_Subcontractor_Phase_Subcontractor1];
GO
IF OBJECT_ID(N'[dbo].[FK_Subcontractor_Phase_Subcontractor2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subcontractor_Phase] DROP CONSTRAINT [FK_Subcontractor_Phase_Subcontractor2];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Employee1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Employee1];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Employee2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Employee2];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Order_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Order_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Payment_Type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Payment_Type];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Project1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Project1];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Project2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Project2];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Supplier]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Supplier];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Supplier_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Supplier_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Supplier1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Supplier1];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Order_Supplier2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Order] DROP CONSTRAINT [FK_Supplier_Order_Supplier2];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Request_Supplier_Request_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier_Request] DROP CONSTRAINT [FK_Supplier_Request_Supplier_Request_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Supplier_Request]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Suppliers] DROP CONSTRAINT [FK_Supplier_Supplier_Request];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Supplier_Request1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier1] DROP CONSTRAINT [FK_Supplier_Supplier_Request1];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Supplier_Request2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier2] DROP CONSTRAINT [FK_Supplier_Supplier_Request2];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Supplier_Type]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Suppliers] DROP CONSTRAINT [FK_Supplier_Supplier_Type];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Supplier_Type1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier1] DROP CONSTRAINT [FK_Supplier_Supplier_Type1];
GO
IF OBJECT_ID(N'[dbo].[FK_Supplier_Supplier_Type2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Supplier2] DROP CONSTRAINT [FK_Supplier_Supplier_Type2];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Phase]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_Task_Phase];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Phase1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Task1] DROP CONSTRAINT [FK_Task_Phase1];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Phase2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Task2] DROP CONSTRAINT [FK_Task_Phase2];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Task_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks] DROP CONSTRAINT [FK_Task_Task_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Task_Status1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Task1] DROP CONSTRAINT [FK_Task_Task_Status1];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Task_Status2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Task2] DROP CONSTRAINT [FK_Task_Task_Status2];
GO
IF OBJECT_ID(N'[dbo].[FK_Tasks_Equipment_Equipment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_Equipment] DROP CONSTRAINT [FK_Tasks_Equipment_Equipment];
GO
IF OBJECT_ID(N'[dbo].[FK_Tasks_Equipment_Equipment1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_Equipment] DROP CONSTRAINT [FK_Tasks_Equipment_Equipment1];
GO
IF OBJECT_ID(N'[dbo].[FK_Tasks_Equipment_Equipment2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_Equipment] DROP CONSTRAINT [FK_Tasks_Equipment_Equipment2];
GO
IF OBJECT_ID(N'[dbo].[FK_Tasks_Equipment_Task]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_Equipment] DROP CONSTRAINT [FK_Tasks_Equipment_Task];
GO
IF OBJECT_ID(N'[dbo].[FK_Tasks_Equipment_Task1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_Equipment] DROP CONSTRAINT [FK_Tasks_Equipment_Task1];
GO
IF OBJECT_ID(N'[dbo].[FK_Tasks_Equipment_Task2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tasks_Equipment] DROP CONSTRAINT [FK_Tasks_Equipment_Task2];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Project]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tenders] DROP CONSTRAINT [FK_Tender_Project];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Project1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender1] DROP CONSTRAINT [FK_Tender_Project1];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Project2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender2] DROP CONSTRAINT [FK_Tender_Project2];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Client]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Client];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Client1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Client1];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Client2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Client2];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Tender]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Tender];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Tender_Request_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Tender_Request_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Tender1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Tender1];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Request_Tender2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender_Request] DROP CONSTRAINT [FK_Tender_Request_Tender2];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Tender_Status]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tenders] DROP CONSTRAINT [FK_Tender_Tender_Status];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Tender_Status1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender1] DROP CONSTRAINT [FK_Tender_Tender_Status1];
GO
IF OBJECT_ID(N'[dbo].[FK_Tender_Tender_Status2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tender2] DROP CONSTRAINT [FK_Tender_Tender_Status2];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Employee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_User_Employee];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Employee1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User1] DROP CONSTRAINT [FK_User_Employee1];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Employee2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User2] DROP CONSTRAINT [FK_User_Employee2];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Password_History]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_User_Password_History];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Password_History1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User1] DROP CONSTRAINT [FK_User_Password_History1];
GO
IF OBJECT_ID(N'[dbo].[FK_User_Password_History2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User2] DROP CONSTRAINT [FK_User_Password_History2];
GO
IF OBJECT_ID(N'[dbo].[FK_User_User_Role]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_User_User_Role];
GO
IF OBJECT_ID(N'[dbo].[FK_User_User_Role1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User1] DROP CONSTRAINT [FK_User_User_Role1];
GO
IF OBJECT_ID(N'[dbo].[FK_User_User_Role2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[User2] DROP CONSTRAINT [FK_User_User_Role2];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Category1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category1];
GO
IF OBJECT_ID(N'[dbo].[Category2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category2];
GO
IF OBJECT_ID(N'[dbo].[Checkout_Checkin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Checkout_Checkin];
GO
IF OBJECT_ID(N'[dbo].[Checkout_Checkin_Date]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Checkout_Checkin_Date];
GO
IF OBJECT_ID(N'[dbo].[Checkout_Checkin_Date1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Checkout_Checkin_Date1];
GO
IF OBJECT_ID(N'[dbo].[Checkout_Checkin_Date2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Checkout_Checkin_Date2];
GO
IF OBJECT_ID(N'[dbo].[Checkout_Checkin1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Checkout_Checkin1];
GO
IF OBJECT_ID(N'[dbo].[Checkout_Checkin2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Checkout_Checkin2];
GO
IF OBJECT_ID(N'[dbo].[Client1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Client1];
GO
IF OBJECT_ID(N'[dbo].[Client2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Client2];
GO
IF OBJECT_ID(N'[dbo].[Clients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clients];
GO
IF OBJECT_ID(N'[dbo].[Employee_Task]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Task];
GO
IF OBJECT_ID(N'[dbo].[Employee_Type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee_Type];
GO
IF OBJECT_ID(N'[dbo].[Employee1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee1];
GO
IF OBJECT_ID(N'[dbo].[Employee2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee2];
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employees];
GO
IF OBJECT_ID(N'[dbo].[Equipment1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipment1];
GO
IF OBJECT_ID(N'[dbo].[Equipment2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipment2];
GO
IF OBJECT_ID(N'[dbo].[Equipments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipments];
GO
IF OBJECT_ID(N'[dbo].[Inventories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inventories];
GO
IF OBJECT_ID(N'[dbo].[Inventory_On_Hand]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inventory_On_Hand];
GO
IF OBJECT_ID(N'[dbo].[Inventory1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inventory1];
GO
IF OBJECT_ID(N'[dbo].[Inventory2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inventory2];
GO
IF OBJECT_ID(N'[dbo].[Order_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order_Status];
GO
IF OBJECT_ID(N'[dbo].[Orderline1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orderline1];
GO
IF OBJECT_ID(N'[dbo].[Orderline2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orderline2];
GO
IF OBJECT_ID(N'[dbo].[Orderlines]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orderlines];
GO
IF OBJECT_ID(N'[dbo].[Password_History]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Password_History];
GO
IF OBJECT_ID(N'[dbo].[Payment_Type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payment_Type];
GO
IF OBJECT_ID(N'[dbo].[Phase_Inventory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Phase_Inventory];
GO
IF OBJECT_ID(N'[dbo].[Phase_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Phase_Status];
GO
IF OBJECT_ID(N'[dbo].[Phase1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Phase1];
GO
IF OBJECT_ID(N'[dbo].[Phase2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Phase2];
GO
IF OBJECT_ID(N'[dbo].[Phases]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Phases];
GO
IF OBJECT_ID(N'[dbo].[Project_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Project_Status];
GO
IF OBJECT_ID(N'[dbo].[Project1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Project1];
GO
IF OBJECT_ID(N'[dbo].[Project2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Project2];
GO
IF OBJECT_ID(N'[dbo].[Projects]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Projects];
GO
IF OBJECT_ID(N'[dbo].[Rental_Line]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rental_Line];
GO
IF OBJECT_ID(N'[dbo].[Rental_Request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rental_Request];
GO
IF OBJECT_ID(N'[dbo].[Rental_Request_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rental_Request_Status];
GO
IF OBJECT_ID(N'[dbo].[Rental_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rental_Status];
GO
IF OBJECT_ID(N'[dbo].[Rental1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rental1];
GO
IF OBJECT_ID(N'[dbo].[Rental2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rental2];
GO
IF OBJECT_ID(N'[dbo].[Rentals]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rentals];
GO
IF OBJECT_ID(N'[dbo].[Subcontractor_Phase]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subcontractor_Phase];
GO
IF OBJECT_ID(N'[dbo].[Subcontractor1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subcontractor1];
GO
IF OBJECT_ID(N'[dbo].[Subcontractor2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subcontractor2];
GO
IF OBJECT_ID(N'[dbo].[Subcontractors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subcontractors];
GO
IF OBJECT_ID(N'[dbo].[Supplier_Order]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supplier_Order];
GO
IF OBJECT_ID(N'[dbo].[Supplier_Request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supplier_Request];
GO
IF OBJECT_ID(N'[dbo].[Supplier_Request_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supplier_Request_Status];
GO
IF OBJECT_ID(N'[dbo].[Supplier_Type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supplier_Type];
GO
IF OBJECT_ID(N'[dbo].[Supplier1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supplier1];
GO
IF OBJECT_ID(N'[dbo].[Supplier2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Supplier2];
GO
IF OBJECT_ID(N'[dbo].[Suppliers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Suppliers];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Task_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Task_Status];
GO
IF OBJECT_ID(N'[dbo].[Task1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Task1];
GO
IF OBJECT_ID(N'[dbo].[Task2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Task2];
GO
IF OBJECT_ID(N'[dbo].[Tasks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks];
GO
IF OBJECT_ID(N'[dbo].[Tasks_Equipment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tasks_Equipment];
GO
IF OBJECT_ID(N'[dbo].[Tender_Request]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tender_Request];
GO
IF OBJECT_ID(N'[dbo].[Tender_Request_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tender_Request_Status];
GO
IF OBJECT_ID(N'[dbo].[Tender_Status]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tender_Status];
GO
IF OBJECT_ID(N'[dbo].[Tender1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tender1];
GO
IF OBJECT_ID(N'[dbo].[Tender2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tender2];
GO
IF OBJECT_ID(N'[dbo].[Tenders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tenders];
GO
IF OBJECT_ID(N'[dbo].[User_Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User_Role];
GO
IF OBJECT_ID(N'[dbo].[User1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User1];
GO
IF OBJECT_ID(N'[dbo].[User2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User2];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[WriteOff_Inventory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WriteOff_Inventory];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Category_ID] int IDENTITY(1,1) NOT NULL,
    [Category_Name] varchar(50)  NULL,
    [Category_Description] varchar(50)  NULL
);
GO

-- Creating table 'Checkout_Checkin'
CREATE TABLE [dbo].[Checkout_Checkin] (
    [Checkout_ID] int  NOT NULL,
    [Checkout_Equip] varchar(50)  NULL,
    [Checkin_Equip] varchar(50)  NULL
);
GO

-- Creating table 'Checkout_Checkin_Date'
CREATE TABLE [dbo].[Checkout_Checkin_Date] (
    [Checkout_Date_ID] int  NOT NULL,
    [Tasks_Equipment_ID] int  NULL,
    [Checkout_Date] datetime  NULL,
    [Checkin_Date] datetime  NULL,
    [Checkout_ID] int  NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [Client_ID] int  NOT NULL,
    [Client_Name] varchar(50)  NULL,
    [Client_Address] varchar(50)  NULL,
    [Contact_Person] varchar(50)  NULL,
    [Telephone_Numbers] decimal(18,0)  NULL
);
GO

-- Creating table 'Employees'
CREATE TABLE [dbo].[Employees] (
    [Employee_ID] int  NOT NULL,
    [Employee_Type_ID] int  NULL,
    [Employee_Name] varchar(50)  NULL,
    [Employee_Surname] varchar(50)  NULL,
    [Employee_ID_Number] decimal(18,0)  NULL,
    [Employee_Telephone_Number] decimal(18,0)  NULL,
    [Employee_Address] varchar(50)  NULL,
    [Employee_Email_Address] varchar(50)  NULL
);
GO

-- Creating table 'Employee_Task'
CREATE TABLE [dbo].[Employee_Task] (
    [Employee_Task_ID] int  NOT NULL,
    [Employee_ID] int  NOT NULL,
    [Task_ID] int  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'Employee_Type'
CREATE TABLE [dbo].[Employee_Type] (
    [Employee_Type_ID] int  NOT NULL,
    [Employee_Type_Description] varchar(50)  NOT NULL
);
GO

-- Creating table 'Equipments'
CREATE TABLE [dbo].[Equipments] (
    [Equipment_ID] int  NOT NULL,
    [Equipment_Name] varchar(50)  NOT NULL,
    [Equipment_Description] varchar(100)  NOT NULL,
    [Equipment_Condition] varchar(50)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Inventories'
CREATE TABLE [dbo].[Inventories] (
    [Inventory_ID] int  NOT NULL,
    [Category_ID] int  NOT NULL,
    [Inventory_Name] varchar(50)  NOT NULL,
    [Inventory_Description] varchar(150)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Inventory_On_Hand'
CREATE TABLE [dbo].[Inventory_On_Hand] (
    [Inventory_On_Hand_ID] int  NOT NULL,
    [Inventory_ID] int  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL,
    [WriteoffInventory_ID] int  
);
GO

-- Creating table 'Order_Status'
CREATE TABLE [dbo].[Order_Status] (
    [Order_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NULL
);
GO

-- Creating table 'Orderlines'
CREATE TABLE [dbo].[Orderlines] (
    [Orderline_ID] int  NOT NULL,
    [Inventory_ID] int  NOT NULL,
    [Inventory_Item] varchar(max)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL,
    [Unit_Price] decimal(19,4)  NOT NULL,
    [Total_Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Password_History'
CREATE TABLE [dbo].[Password_History] (
    [Password_ID] int  NOT NULL
);
GO

-- Creating table 'Payment_Type'
CREATE TABLE [dbo].[Payment_Type] (
    [Payment_Type_ID] int  NOT NULL,
    [Name] varchar(50)  NULL
);
GO

-- Creating table 'Phases'
CREATE TABLE [dbo].[Phases] (
    [Phase_ID] int  NOT NULL,
    [Phase_Status_ID] int  NOT NULL,
    [Project_ID] int  NOT NULL,
    [Phase_Name] varchar(100)  NOT NULL,
    [Phase_Description] varchar(300)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL
);
GO

-- Creating table 'Phase_Inventory'
CREATE TABLE [dbo].[Phase_Inventory] (
    [Phase_Inventory_ID] int  NOT NULL,
    [Phase_ID] int  NULL,
    [Inventory_ID] int  NULL,
    [Quantity] decimal(18,0)  NULL
);
GO

-- Creating table 'Phase_Status'
CREATE TABLE [dbo].[Phase_Status] (
    [Phase_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NULL
);
GO

-- Creating table 'Projects'
CREATE TABLE [dbo].[Projects] (
    [Project_ID] int  NOT NULL,
    [Project_Status_ID] int  NOT NULL,
    [Project_Name] varchar(100)  NOT NULL,
    [Project_Description] varchar(350)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Site_Name] varchar(100)  NOT NULL,
    [Site_Address] varchar(250)  NOT NULL,
    [Tender_ID] int  NOT NULL,
    [Phase_ID] int  NOT NULL
);
GO

-- Creating table 'Project_Status'
CREATE TABLE [dbo].[Project_Status] (
    [Project_Status_ID] int  NOT NULL,
    [Description] varchar(50)  NULL,
    [Comments] varchar(50)  NULL
);
GO

-- Creating table 'Rentals'
CREATE TABLE [dbo].[Rentals] (
    [Rental_ID] int  NOT NULL,
    [Rental_Status_ID] int  NOT NULL,
    [Supplier_ID] int  NOT NULL,
    [Rental_Name] varchar(100)  NOT NULL,
    [Rental_Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Rental_Line'
CREATE TABLE [dbo].[Rental_Line] (
    [Rental_Line_ID] int  NOT NULL,
    [Inventory_ID] int  NOT NULL,
    [Rental_Name] varchar(100)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Rental_Request'
CREATE TABLE [dbo].[Rental_Request] (
    [Rental_Request_ID] int  NOT NULL,
    [Supplier_ID] int  NULL,
    [Rental_Item] varchar(50)  NULL,
    [Quantity] decimal(18,0)  NULL,
    [Request_Date] datetime  NULL,
    [Rental_Request_Status_ID] int  NULL
);
GO

-- Creating table 'Rental_Request_Status'
CREATE TABLE [dbo].[Rental_Request_Status] (
    [Rental_Request_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NOT NULL
);
GO

-- Creating table 'Rental_Status'
CREATE TABLE [dbo].[Rental_Status] (
    [Rental_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NOT NULL
);
GO

-- Creating table 'Subcontractors'
CREATE TABLE [dbo].[Subcontractors] (
    [Subcontractor_ID] int  NOT NULL,
    [Sub_Name] varchar(100)  NOT NULL,
    [Sub_Address] varchar(150)  NOT NULL,
    [Sub_Job_Description] varchar(250)  NOT NULL,
    [Telephone_Number] varchar(14)  NOT NULL,
    [Email_Address] varchar(50)  NOT NULL
);
GO

-- Creating table 'Subcontractor_Phase'
CREATE TABLE [dbo].[Subcontractor_Phase] (
    [Subcontractor_Phase_ID] int  NOT NULL,
    [Subcontractor_ID] int  NULL,
    [Phase_ID] int  NULL
);
GO

-- Creating table 'Suppliers'
CREATE TABLE [dbo].[Suppliers] (
    [Supplier_ID] int  NOT NULL,
    [Supplier_Type_ID] int  NULL,
    [Supplier_Request_ID] int  NULL,
    [Supplier_Name] varchar(50)  NULL,
    [Supplier_Address] varchar(50)  NULL,
    [Supplier_Email] varchar(50)  NULL,
    [Supplier_Telephone_Number] decimal(18,0)  NULL
);
GO

-- Creating table 'Supplier_Order'
CREATE TABLE [dbo].[Supplier_Order] (
    [Supplier_Order_ID] int  NOT NULL,
    [Project_ID] int  NOT NULL,
    [Order_Status_ID] int  NOT NULL,
    [Payment_Type_ID] int  NOT NULL,
    [Employee_ID] int  NOT NULL,
    [Date] datetime  NOT NULL,
    [Order_Items] varchar(max)  NOT NULL,
    [Total_Cost] decimal(19,4)  NOT NULL,
    [Supplier_ID] int  NOT NULL
);
GO

-- Creating table 'Supplier_Request'
CREATE TABLE [dbo].[Supplier_Request] (
    [Supplier_Request_ID] int  NOT NULL,
    [Item_Name] varchar(50)  NULL,
    [Quantity] decimal(18,0)  NULL,
    [Date] datetime  NULL,
    [Supplier_Request_Status_ID] int  NULL
);
GO

-- Creating table 'Supplier_Request_Status'
CREATE TABLE [dbo].[Supplier_Request_Status] (
    [Supplier_Request_Status_ID] int  NOT NULL,
    [Description] varchar(50)  NULL
);
GO

-- Creating table 'Supplier_Type'
CREATE TABLE [dbo].[Supplier_Type] (
    [Supplier_Type_ID] int  NOT NULL,
    [Name] varchar(50)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Tasks'
CREATE TABLE [dbo].[Tasks] (
    [Task_ID] int  NOT NULL,
    [Phase_ID] int  NOT NULL,
    [Task_Status_ID] int  NOT NULL,
    [Task_Description] varchar(250)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Equipment] varchar(300)  NOT NULL
);
GO

-- Creating table 'Task_Status'
CREATE TABLE [dbo].[Task_Status] (
    [Task_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NOT NULL
);
GO

-- Creating table 'Tasks_Equipment'
CREATE TABLE [dbo].[Tasks_Equipment] (
    [Tasks_Equipment_ID] int  NOT NULL,
    [Task_ID] int  NOT NULL,
    [Equipment_ID] int  NOT NULL,
    [Checkout_Equipment] varchar(50)  NULL,
    [Checkin_Equipment] varchar(50)  NULL,
    [Quantity_Checkout] decimal(18,0)  NULL,
    [Quantity_Checkin] decimal(18,0)  NULL
);
GO

-- Creating table 'Tenders'
CREATE TABLE [dbo].[Tenders] (
    [Tender_ID] int  NOT NULL,
    [Tender_Status_ID] int  NOT NULL,
    [Tender_Name] varchar(100)  NOT NULL,
    [Tender_Source] varchar(50)  NOT NULL,
    [Budget] decimal(18,0)  NOT NULL,
    [Project_ID] int  NOT NULL
);
GO

-- Creating table 'Tender_Request'
CREATE TABLE [dbo].[Tender_Request] (
    [Tender_Request_ID] int  NOT NULL,
    [Tender_Request_Status_ID] int  NOT NULL,
    [Client_ID] int  NOT NULL,
    [Tender_ID] int  NOT NULL,
    [Tender_Name] varchar(50)  NOT NULL,
    [Advertisement_Document] varchar(50)  NOT NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'Tender_Request_Status'
CREATE TABLE [dbo].[Tender_Request_Status] (
    [Tender_Request_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NOT NULL
);
GO

-- Creating table 'Tender_Status'
CREATE TABLE [dbo].[Tender_Status] (
    [Tender_Status_ID] int  NOT NULL,
    [Status_Type] varchar(50)  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [User_ID] int  NOT NULL,
    [User_Role_ID] int  NOT NULL,
    [Employee_ID] int  NOT NULL,
    [Password_ID] int  NOT NULL,
    [Username] varchar(50)  NOT NULL,
    [Password] varchar(50)  NOT NULL
);
GO

-- Creating table 'User_Role'
CREATE TABLE [dbo].[User_Role] (
    [User_Role_ID] int  NOT NULL,
    [Role_Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'WriteOff_Inventory'
CREATE TABLE [dbo].[WriteOff_Inventory] (
    [WriteoffInventory_ID] int  NOT NULL,
    [Item_Name] varchar(100)  NOT NULL,
    [Quality] varchar(50)  NOT NULL,
    [Reason] varchar(250)  NOT NULL
);
GO

-- Creating table 'Category1'
CREATE TABLE [dbo].[Category1] (
    [Category_ID] int IDENTITY(1,1) NOT NULL,
    [Category_Name] varchar(50)  NULL,
    [Category_Description] varchar(50)  NULL
);
GO

-- Creating table 'Checkout_Checkin1'
CREATE TABLE [dbo].[Checkout_Checkin1] (
    [Checkout_ID] int  NOT NULL,
    [Checkout_Equip] varchar(50)  NULL,
    [Checkin_Equip] varchar(50)  NULL
);
GO

-- Creating table 'Checkout_Checkin_Date1'
CREATE TABLE [dbo].[Checkout_Checkin_Date1] (
    [Checkout_Date_ID] int  NOT NULL,
    [Tasks_Equipment_ID] int  NULL,
    [Checkout_Date] datetime  NULL,
    [Checkin_Date] datetime  NULL,
    [Checkout_ID] int  NULL
);
GO

-- Creating table 'Client1'
CREATE TABLE [dbo].[Client1] (
    [Client_ID] int  NOT NULL,
    [Client_Name] varchar(50)  NULL,
    [Client_Address] varchar(50)  NULL,
    [Contact_Person] varchar(50)  NULL,
    [Telephone_Numbers] decimal(18,0)  NULL
);
GO

-- Creating table 'Employee1'
CREATE TABLE [dbo].[Employee1] (
    [Employee_ID] int  NOT NULL,
    [Employee_Type_ID] int  NULL,
    [Employee_Name] varchar(50)  NULL,
    [Employee_Surname] varchar(50)  NULL,
    [Employee_ID_Number] decimal(18,0)  NULL,
    [Employee_Telephone_Number] decimal(18,0)  NULL,
    [Employee_Address] varchar(50)  NULL,
    [Employee_Email_Address] varchar(50)  NULL
);
GO

-- Creating table 'Equipment1'
CREATE TABLE [dbo].[Equipment1] (
    [Equipment_ID] int  NOT NULL,
    [Equipment_Name] varchar(50)  NOT NULL,
    [Equipment_Description] varchar(100)  NOT NULL,
    [Equipment_Condition] varchar(50)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Inventory1'
CREATE TABLE [dbo].[Inventory1] (
    [Inventory_ID] int IDENTITY(1,1) NOT NULL,
    [Category_ID] int  NOT NULL,
    [Inventory_Name] varchar(50)  NOT NULL,
    [Inventory_Description] varchar(150)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Orderline1'
CREATE TABLE [dbo].[Orderline1] (
    [Orderline_ID] int IDENTITY(1,1) NOT NULL,
    [Inventory_ID] int  NOT NULL,
    [Inventory_Item] varchar(max)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL,
    [Unit_Price] decimal(19,4)  NOT NULL,
    [Total_Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Phase1'
CREATE TABLE [dbo].[Phase1] (
    [Phase_ID] int  NOT NULL,
    [Phase_Status_ID] int  NOT NULL,
    [Project_ID] int  NOT NULL,
    [Phase_Name] varchar(100)  NOT NULL,
    [Phase_Description] varchar(300)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL
);
GO

-- Creating table 'Project1'
CREATE TABLE [dbo].[Project1] (
    [Project_ID] int  NOT NULL,
    [Project_Status_ID] int  NOT NULL,
    [Project_Name] varchar(100)  NOT NULL,
    [Project_Description] varchar(350)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Site_Name] varchar(100)  NOT NULL,
    [Site_Address] varchar(250)  NOT NULL,
    [Tender_ID] int  NOT NULL,
    [Phase_ID] int  NOT NULL
);
GO

-- Creating table 'Rental1'
CREATE TABLE [dbo].[Rental1] (
    [Rental_ID] int  NOT NULL,
    [Rental_Status_ID] int  NOT NULL,
    [Supplier_ID] int  NOT NULL,
    [Rental_Name] varchar(100)  NOT NULL,
    [Rental_Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Subcontractor1'
CREATE TABLE [dbo].[Subcontractor1] (
    [Subcontractor_ID] int  NOT NULL,
    [Sub_Name] varchar(100)  NOT NULL,
    [Sub_Address] varchar(150)  NOT NULL,
    [Sub_Job_Description] varchar(250)  NOT NULL,
    [Telephone_Number] varchar(14)  NOT NULL,
    [Email_Address] varchar(50)  NOT NULL
);
GO

-- Creating table 'Supplier1'
CREATE TABLE [dbo].[Supplier1] (
    [Supplier_ID] int  NOT NULL,
    [Supplier_Type_ID] int  NULL,
    [Supplier_Request_ID] int  NULL,
    [Supplier_Name] varchar(50)  NULL,
    [Supplier_Address] varchar(50)  NULL,
    [Supplier_Email] varchar(50)  NULL,
    [Supplier_Telephone_Number] decimal(18,0)  NULL
);
GO

-- Creating table 'Task1'
CREATE TABLE [dbo].[Task1] (
    [Task_ID] int  NOT NULL,
    [Phase_ID] int  NOT NULL,
    [Task_Status_ID] int  NOT NULL,
    [Task_Description] varchar(250)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Equipment] varchar(300)  NOT NULL
);
GO

-- Creating table 'Tender1'
CREATE TABLE [dbo].[Tender1] (
    [Tender_ID] int  NOT NULL,
    [Tender_Status_ID] int  NOT NULL,
    [Tender_Name] varchar(100)  NOT NULL,
    [Tender_Source] varchar(50)  NOT NULL,
    [Budget] decimal(18,0)  NOT NULL,
    [Project_ID] int  NOT NULL
);
GO

-- Creating table 'User1'
CREATE TABLE [dbo].[User1] (
    [User_ID] int  NOT NULL,
    [User_Role_ID] int  NOT NULL,
    [Employee_ID] int  NOT NULL,
    [Password_ID] int  NOT NULL,
    [Username] varchar(50)  NOT NULL,
    [Password] varchar(50)  NOT NULL
);
GO

-- Creating table 'Category2'
CREATE TABLE [dbo].[Category2] (
    [Category_ID] int IDENTITY(1,1) NOT NULL,
    [Category_Name] varchar(50)  NULL,
    [Category_Description] varchar(50)  NULL
);
GO

-- Creating table 'Checkout_Checkin2'
CREATE TABLE [dbo].[Checkout_Checkin2] (
    [Checkout_ID] int  NOT NULL,
    [Checkout_Equip] varchar(50)  NULL,
    [Checkin_Equip] varchar(50)  NULL
);
GO

-- Creating table 'Checkout_Checkin_Date2'
CREATE TABLE [dbo].[Checkout_Checkin_Date2] (
    [Checkout_Date_ID] int  NOT NULL,
    [Tasks_Equipment_ID] int  NULL,
    [Checkout_Date] datetime  NULL,
    [Checkin_Date] datetime  NULL,
    [Checkout_ID] int  NULL
);
GO

-- Creating table 'Client2'
CREATE TABLE [dbo].[Client2] (
    [Client_ID] int  NOT NULL,
    [Client_Name] varchar(50)  NULL,
    [Client_Address] varchar(50)  NULL,
    [Contact_Person] varchar(50)  NULL,
    [Telephone_Numbers] decimal(18,0)  NULL
);
GO

-- Creating table 'Employee2'
CREATE TABLE [dbo].[Employee2] (
    [Employee_ID] int  NOT NULL,
    [Employee_Type_ID] int  NULL,
    [Employee_Name] varchar(50)  NULL,
    [Employee_Surname] varchar(50)  NULL,
    [Employee_ID_Number] decimal(18,0)  NULL,
    [Employee_Telephone_Number] decimal(18,0)  NULL,
    [Employee_Address] varchar(50)  NULL,
    [Employee_Email_Address] varchar(50)  NULL
);
GO

-- Creating table 'Equipment2'
CREATE TABLE [dbo].[Equipment2] (
    [Equipment_ID] int  NOT NULL,
    [Equipment_Name] varchar(50)  NOT NULL,
    [Equipment_Description] varchar(100)  NOT NULL,
    [Equipment_Condition] varchar(50)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Inventory2'
CREATE TABLE [dbo].[Inventory2] (
    [Inventory_ID] int IDENTITY(1,1) NOT NULL,
    [Category_ID] int  NOT NULL,
    [Inventory_Name] varchar(50)  NOT NULL,
    [Inventory_Description] varchar(150)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Orderline2'
CREATE TABLE [dbo].[Orderline2] (
    [Orderline_ID] int IDENTITY(1,1) NOT NULL,
    [Inventory_ID] int  NOT NULL,
    [Inventory_Item] varchar(max)  NOT NULL,
    [Quantity] decimal(18,0)  NOT NULL,
    [Unit_Price] decimal(19,4)  NOT NULL,
    [Total_Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Phase2'
CREATE TABLE [dbo].[Phase2] (
    [Phase_ID] int  NOT NULL,
    [Phase_Status_ID] int  NOT NULL,
    [Project_ID] int  NOT NULL,
    [Phase_Name] varchar(100)  NOT NULL,
    [Phase_Description] varchar(300)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL
);
GO

-- Creating table 'Project2'
CREATE TABLE [dbo].[Project2] (
    [Project_ID] int  NOT NULL,
    [Project_Status_ID] int  NOT NULL,
    [Project_Name] varchar(100)  NOT NULL,
    [Project_Description] varchar(350)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Site_Name] varchar(100)  NOT NULL,
    [Site_Address] varchar(250)  NOT NULL,
    [Tender_ID] int  NOT NULL,
    [Phase_ID] int  NOT NULL
);
GO

-- Creating table 'Rental2'
CREATE TABLE [dbo].[Rental2] (
    [Rental_ID] int  NOT NULL,
    [Rental_Status_ID] int  NOT NULL,
    [Supplier_ID] int  NOT NULL,
    [Rental_Name] varchar(100)  NOT NULL,
    [Rental_Cost] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Subcontractor2'
CREATE TABLE [dbo].[Subcontractor2] (
    [Subcontractor_ID] int  NOT NULL,
    [Sub_Name] varchar(100)  NOT NULL,
    [Sub_Address] varchar(150)  NOT NULL,
    [Sub_Job_Description] varchar(250)  NOT NULL,
    [Telephone_Number] varchar(14)  NOT NULL,
    [Email_Address] varchar(50)  NOT NULL
);
GO

-- Creating table 'Supplier2'
CREATE TABLE [dbo].[Supplier2] (
    [Supplier_ID] int  NOT NULL,
    [Supplier_Type_ID] int  NULL,
    [Supplier_Request_ID] int  NULL,
    [Supplier_Name] varchar(50)  NULL,
    [Supplier_Address] varchar(50)  NULL,
    [Supplier_Email] varchar(50)  NULL,
    [Supplier_Telephone_Number] decimal(18,0)  NULL
);
GO

-- Creating table 'Task2'
CREATE TABLE [dbo].[Task2] (
    [Task_ID] int  NOT NULL,
    [Phase_ID] int  NOT NULL,
    [Task_Status_ID] int  NOT NULL,
    [Task_Description] varchar(250)  NOT NULL,
    [Start_Date] datetime  NOT NULL,
    [End_Date] datetime  NOT NULL,
    [Equipment] varchar(300)  NOT NULL
);
GO

-- Creating table 'Tender2'
CREATE TABLE [dbo].[Tender2] (
    [Tender_ID] int  NOT NULL,
    [Tender_Status_ID] int  NOT NULL,
    [Tender_Name] varchar(100)  NOT NULL,
    [Tender_Source] varchar(50)  NOT NULL,
    [Budget] decimal(18,0)  NOT NULL,
    [Project_ID] int  NOT NULL
);
GO

-- Creating table 'User2'
CREATE TABLE [dbo].[User2] (
    [User_ID] int  NOT NULL,
    [User_Role_ID] int  NOT NULL,
    [Employee_ID] int  NOT NULL,
    [Password_ID] int  NOT NULL,
    [Username] varchar(50)  NOT NULL,
    [Password] varchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Category_ID] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Category_ID] ASC);
GO

-- Creating primary key on [Checkout_ID] in table 'Checkout_Checkin'
ALTER TABLE [dbo].[Checkout_Checkin]
ADD CONSTRAINT [PK_Checkout_Checkin]
    PRIMARY KEY CLUSTERED ([Checkout_ID] ASC);
GO

-- Creating primary key on [Checkout_Date_ID] in table 'Checkout_Checkin_Date'
ALTER TABLE [dbo].[Checkout_Checkin_Date]
ADD CONSTRAINT [PK_Checkout_Checkin_Date]
    PRIMARY KEY CLUSTERED ([Checkout_Date_ID] ASC);
GO

-- Creating primary key on [Client_ID] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([Client_ID] ASC);
GO

-- Creating primary key on [Employee_ID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [PK_Employees]
    PRIMARY KEY CLUSTERED ([Employee_ID] ASC);
GO

-- Creating primary key on [Employee_Task_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [PK_Employee_Task]
    PRIMARY KEY CLUSTERED ([Employee_Task_ID] ASC);
GO

-- Creating primary key on [Employee_Type_ID] in table 'Employee_Type'
ALTER TABLE [dbo].[Employee_Type]
ADD CONSTRAINT [PK_Employee_Type]
    PRIMARY KEY CLUSTERED ([Employee_Type_ID] ASC);
GO

-- Creating primary key on [Equipment_ID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [PK_Equipments]
    PRIMARY KEY CLUSTERED ([Equipment_ID] ASC);
GO

-- Creating primary key on [Inventory_ID] in table 'Inventories'
ALTER TABLE [dbo].[Inventories]
ADD CONSTRAINT [PK_Inventories]
    PRIMARY KEY CLUSTERED ([Inventory_ID] ASC);
GO

-- Creating primary key on [Inventory_On_Hand_ID] in table 'Inventory_On_Hand'
ALTER TABLE [dbo].[Inventory_On_Hand]
ADD CONSTRAINT [PK_Inventory_On_Hand]
    PRIMARY KEY CLUSTERED ([Inventory_On_Hand_ID] ASC);
GO

-- Creating primary key on [Order_Status_ID] in table 'Order_Status'
ALTER TABLE [dbo].[Order_Status]
ADD CONSTRAINT [PK_Order_Status]
    PRIMARY KEY CLUSTERED ([Order_Status_ID] ASC);
GO

-- Creating primary key on [Orderline_ID] in table 'Orderlines'
ALTER TABLE [dbo].[Orderlines]
ADD CONSTRAINT [PK_Orderlines]
    PRIMARY KEY CLUSTERED ([Orderline_ID] ASC);
GO

-- Creating primary key on [Password_ID] in table 'Password_History'
ALTER TABLE [dbo].[Password_History]
ADD CONSTRAINT [PK_Password_History]
    PRIMARY KEY CLUSTERED ([Password_ID] ASC);
GO

-- Creating primary key on [Payment_Type_ID] in table 'Payment_Type'
ALTER TABLE [dbo].[Payment_Type]
ADD CONSTRAINT [PK_Payment_Type]
    PRIMARY KEY CLUSTERED ([Payment_Type_ID] ASC);
GO

-- Creating primary key on [Phase_ID] in table 'Phases'
ALTER TABLE [dbo].[Phases]
ADD CONSTRAINT [PK_Phases]
    PRIMARY KEY CLUSTERED ([Phase_ID] ASC);
GO

-- Creating primary key on [Phase_Inventory_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [PK_Phase_Inventory]
    PRIMARY KEY CLUSTERED ([Phase_Inventory_ID] ASC);
GO

-- Creating primary key on [Phase_Status_ID] in table 'Phase_Status'
ALTER TABLE [dbo].[Phase_Status]
ADD CONSTRAINT [PK_Phase_Status]
    PRIMARY KEY CLUSTERED ([Phase_Status_ID] ASC);
GO

-- Creating primary key on [Project_ID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [PK_Projects]
    PRIMARY KEY CLUSTERED ([Project_ID] ASC);
GO

-- Creating primary key on [Project_Status_ID] in table 'Project_Status'
ALTER TABLE [dbo].[Project_Status]
ADD CONSTRAINT [PK_Project_Status]
    PRIMARY KEY CLUSTERED ([Project_Status_ID] ASC);
GO

-- Creating primary key on [Rental_ID] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [PK_Rentals]
    PRIMARY KEY CLUSTERED ([Rental_ID] ASC);
GO

-- Creating primary key on [Rental_Line_ID] in table 'Rental_Line'
ALTER TABLE [dbo].[Rental_Line]
ADD CONSTRAINT [PK_Rental_Line]
    PRIMARY KEY CLUSTERED ([Rental_Line_ID] ASC);
GO

-- Creating primary key on [Rental_Request_ID] in table 'Rental_Request'
ALTER TABLE [dbo].[Rental_Request]
ADD CONSTRAINT [PK_Rental_Request]
    PRIMARY KEY CLUSTERED ([Rental_Request_ID] ASC);
GO

-- Creating primary key on [Rental_Request_Status_ID] in table 'Rental_Request_Status'
ALTER TABLE [dbo].[Rental_Request_Status]
ADD CONSTRAINT [PK_Rental_Request_Status]
    PRIMARY KEY CLUSTERED ([Rental_Request_Status_ID] ASC);
GO

-- Creating primary key on [Rental_Status_ID] in table 'Rental_Status'
ALTER TABLE [dbo].[Rental_Status]
ADD CONSTRAINT [PK_Rental_Status]
    PRIMARY KEY CLUSTERED ([Rental_Status_ID] ASC);
GO

-- Creating primary key on [Subcontractor_ID] in table 'Subcontractors'
ALTER TABLE [dbo].[Subcontractors]
ADD CONSTRAINT [PK_Subcontractors]
    PRIMARY KEY CLUSTERED ([Subcontractor_ID] ASC);
GO

-- Creating primary key on [Subcontractor_Phase_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [PK_Subcontractor_Phase]
    PRIMARY KEY CLUSTERED ([Subcontractor_Phase_ID] ASC);
GO

-- Creating primary key on [Supplier_ID] in table 'Suppliers'
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT [PK_Suppliers]
    PRIMARY KEY CLUSTERED ([Supplier_ID] ASC);
GO

-- Creating primary key on [Supplier_Order_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [PK_Supplier_Order]
    PRIMARY KEY CLUSTERED ([Supplier_Order_ID] ASC);
GO

-- Creating primary key on [Supplier_Request_ID] in table 'Supplier_Request'
ALTER TABLE [dbo].[Supplier_Request]
ADD CONSTRAINT [PK_Supplier_Request]
    PRIMARY KEY CLUSTERED ([Supplier_Request_ID] ASC);
GO

-- Creating primary key on [Supplier_Request_Status_ID] in table 'Supplier_Request_Status'
ALTER TABLE [dbo].[Supplier_Request_Status]
ADD CONSTRAINT [PK_Supplier_Request_Status]
    PRIMARY KEY CLUSTERED ([Supplier_Request_Status_ID] ASC);
GO

-- Creating primary key on [Supplier_Type_ID] in table 'Supplier_Type'
ALTER TABLE [dbo].[Supplier_Type]
ADD CONSTRAINT [PK_Supplier_Type]
    PRIMARY KEY CLUSTERED ([Supplier_Type_ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Task_ID] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [PK_Tasks]
    PRIMARY KEY CLUSTERED ([Task_ID] ASC);
GO

-- Creating primary key on [Task_Status_ID] in table 'Task_Status'
ALTER TABLE [dbo].[Task_Status]
ADD CONSTRAINT [PK_Task_Status]
    PRIMARY KEY CLUSTERED ([Task_Status_ID] ASC);
GO

-- Creating primary key on [Tasks_Equipment_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [PK_Tasks_Equipment]
    PRIMARY KEY CLUSTERED ([Tasks_Equipment_ID] ASC);
GO

-- Creating primary key on [Tender_ID] in table 'Tenders'
ALTER TABLE [dbo].[Tenders]
ADD CONSTRAINT [PK_Tenders]
    PRIMARY KEY CLUSTERED ([Tender_ID] ASC);
GO

-- Creating primary key on [Tender_Request_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [PK_Tender_Request]
    PRIMARY KEY CLUSTERED ([Tender_Request_ID] ASC);
GO

-- Creating primary key on [Tender_Request_Status_ID] in table 'Tender_Request_Status'
ALTER TABLE [dbo].[Tender_Request_Status]
ADD CONSTRAINT [PK_Tender_Request_Status]
    PRIMARY KEY CLUSTERED ([Tender_Request_Status_ID] ASC);
GO

-- Creating primary key on [Tender_Status_ID] in table 'Tender_Status'
ALTER TABLE [dbo].[Tender_Status]
ADD CONSTRAINT [PK_Tender_Status]
    PRIMARY KEY CLUSTERED ([Tender_Status_ID] ASC);
GO

-- Creating primary key on [User_ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([User_ID] ASC);
GO

-- Creating primary key on [User_Role_ID] in table 'User_Role'
ALTER TABLE [dbo].[User_Role]
ADD CONSTRAINT [PK_User_Role]
    PRIMARY KEY CLUSTERED ([User_Role_ID] ASC);
GO

-- Creating primary key on [WriteoffInventory_ID] in table 'WriteOff_Inventory'
ALTER TABLE [dbo].[WriteOff_Inventory]
ADD CONSTRAINT [PK_WriteOff_Inventory]
    PRIMARY KEY CLUSTERED ([WriteoffInventory_ID] ASC);
GO

-- Creating primary key on [Category_ID] in table 'Category1'
ALTER TABLE [dbo].[Category1]
ADD CONSTRAINT [PK_Category1]
    PRIMARY KEY CLUSTERED ([Category_ID] ASC);
GO

-- Creating primary key on [Checkout_ID] in table 'Checkout_Checkin1'
ALTER TABLE [dbo].[Checkout_Checkin1]
ADD CONSTRAINT [PK_Checkout_Checkin1]
    PRIMARY KEY CLUSTERED ([Checkout_ID] ASC);
GO

-- Creating primary key on [Checkout_Date_ID] in table 'Checkout_Checkin_Date1'
ALTER TABLE [dbo].[Checkout_Checkin_Date1]
ADD CONSTRAINT [PK_Checkout_Checkin_Date1]
    PRIMARY KEY CLUSTERED ([Checkout_Date_ID] ASC);
GO

-- Creating primary key on [Client_ID] in table 'Client1'
ALTER TABLE [dbo].[Client1]
ADD CONSTRAINT [PK_Client1]
    PRIMARY KEY CLUSTERED ([Client_ID] ASC);
GO

-- Creating primary key on [Employee_ID] in table 'Employee1'
ALTER TABLE [dbo].[Employee1]
ADD CONSTRAINT [PK_Employee1]
    PRIMARY KEY CLUSTERED ([Employee_ID] ASC);
GO

-- Creating primary key on [Equipment_ID] in table 'Equipment1'
ALTER TABLE [dbo].[Equipment1]
ADD CONSTRAINT [PK_Equipment1]
    PRIMARY KEY CLUSTERED ([Equipment_ID] ASC);
GO

-- Creating primary key on [Inventory_ID] in table 'Inventory1'
ALTER TABLE [dbo].[Inventory1]
ADD CONSTRAINT [PK_Inventory1]
    PRIMARY KEY CLUSTERED ([Inventory_ID] ASC);
GO

-- Creating primary key on [Orderline_ID] in table 'Orderline1'
ALTER TABLE [dbo].[Orderline1]
ADD CONSTRAINT [PK_Orderline1]
    PRIMARY KEY CLUSTERED ([Orderline_ID] ASC);
GO

-- Creating primary key on [Phase_ID] in table 'Phase1'
ALTER TABLE [dbo].[Phase1]
ADD CONSTRAINT [PK_Phase1]
    PRIMARY KEY CLUSTERED ([Phase_ID] ASC);
GO

-- Creating primary key on [Project_ID] in table 'Project1'
ALTER TABLE [dbo].[Project1]
ADD CONSTRAINT [PK_Project1]
    PRIMARY KEY CLUSTERED ([Project_ID] ASC);
GO

-- Creating primary key on [Rental_ID] in table 'Rental1'
ALTER TABLE [dbo].[Rental1]
ADD CONSTRAINT [PK_Rental1]
    PRIMARY KEY CLUSTERED ([Rental_ID] ASC);
GO

-- Creating primary key on [Subcontractor_ID] in table 'Subcontractor1'
ALTER TABLE [dbo].[Subcontractor1]
ADD CONSTRAINT [PK_Subcontractor1]
    PRIMARY KEY CLUSTERED ([Subcontractor_ID] ASC);
GO

-- Creating primary key on [Supplier_ID] in table 'Supplier1'
ALTER TABLE [dbo].[Supplier1]
ADD CONSTRAINT [PK_Supplier1]
    PRIMARY KEY CLUSTERED ([Supplier_ID] ASC);
GO

-- Creating primary key on [Task_ID] in table 'Task1'
ALTER TABLE [dbo].[Task1]
ADD CONSTRAINT [PK_Task1]
    PRIMARY KEY CLUSTERED ([Task_ID] ASC);
GO

-- Creating primary key on [Tender_ID] in table 'Tender1'
ALTER TABLE [dbo].[Tender1]
ADD CONSTRAINT [PK_Tender1]
    PRIMARY KEY CLUSTERED ([Tender_ID] ASC);
GO

-- Creating primary key on [User_ID] in table 'User1'
ALTER TABLE [dbo].[User1]
ADD CONSTRAINT [PK_User1]
    PRIMARY KEY CLUSTERED ([User_ID] ASC);
GO

-- Creating primary key on [Category_ID] in table 'Category2'
ALTER TABLE [dbo].[Category2]
ADD CONSTRAINT [PK_Category2]
    PRIMARY KEY CLUSTERED ([Category_ID] ASC);
GO

-- Creating primary key on [Checkout_ID] in table 'Checkout_Checkin2'
ALTER TABLE [dbo].[Checkout_Checkin2]
ADD CONSTRAINT [PK_Checkout_Checkin2]
    PRIMARY KEY CLUSTERED ([Checkout_ID] ASC);
GO

-- Creating primary key on [Checkout_Date_ID] in table 'Checkout_Checkin_Date2'
ALTER TABLE [dbo].[Checkout_Checkin_Date2]
ADD CONSTRAINT [PK_Checkout_Checkin_Date2]
    PRIMARY KEY CLUSTERED ([Checkout_Date_ID] ASC);
GO

-- Creating primary key on [Client_ID] in table 'Client2'
ALTER TABLE [dbo].[Client2]
ADD CONSTRAINT [PK_Client2]
    PRIMARY KEY CLUSTERED ([Client_ID] ASC);
GO

-- Creating primary key on [Employee_ID] in table 'Employee2'
ALTER TABLE [dbo].[Employee2]
ADD CONSTRAINT [PK_Employee2]
    PRIMARY KEY CLUSTERED ([Employee_ID] ASC);
GO

-- Creating primary key on [Equipment_ID] in table 'Equipment2'
ALTER TABLE [dbo].[Equipment2]
ADD CONSTRAINT [PK_Equipment2]
    PRIMARY KEY CLUSTERED ([Equipment_ID] ASC);
GO

-- Creating primary key on [Inventory_ID] in table 'Inventory2'
ALTER TABLE [dbo].[Inventory2]
ADD CONSTRAINT [PK_Inventory2]
    PRIMARY KEY CLUSTERED ([Inventory_ID] ASC);
GO

-- Creating primary key on [Orderline_ID] in table 'Orderline2'
ALTER TABLE [dbo].[Orderline2]
ADD CONSTRAINT [PK_Orderline2]
    PRIMARY KEY CLUSTERED ([Orderline_ID] ASC);
GO

-- Creating primary key on [Phase_ID] in table 'Phase2'
ALTER TABLE [dbo].[Phase2]
ADD CONSTRAINT [PK_Phase2]
    PRIMARY KEY CLUSTERED ([Phase_ID] ASC);
GO

-- Creating primary key on [Project_ID] in table 'Project2'
ALTER TABLE [dbo].[Project2]
ADD CONSTRAINT [PK_Project2]
    PRIMARY KEY CLUSTERED ([Project_ID] ASC);
GO

-- Creating primary key on [Rental_ID] in table 'Rental2'
ALTER TABLE [dbo].[Rental2]
ADD CONSTRAINT [PK_Rental2]
    PRIMARY KEY CLUSTERED ([Rental_ID] ASC);
GO

-- Creating primary key on [Subcontractor_ID] in table 'Subcontractor2'
ALTER TABLE [dbo].[Subcontractor2]
ADD CONSTRAINT [PK_Subcontractor2]
    PRIMARY KEY CLUSTERED ([Subcontractor_ID] ASC);
GO

-- Creating primary key on [Supplier_ID] in table 'Supplier2'
ALTER TABLE [dbo].[Supplier2]
ADD CONSTRAINT [PK_Supplier2]
    PRIMARY KEY CLUSTERED ([Supplier_ID] ASC);
GO

-- Creating primary key on [Task_ID] in table 'Task2'
ALTER TABLE [dbo].[Task2]
ADD CONSTRAINT [PK_Task2]
    PRIMARY KEY CLUSTERED ([Task_ID] ASC);
GO

-- Creating primary key on [Tender_ID] in table 'Tender2'
ALTER TABLE [dbo].[Tender2]
ADD CONSTRAINT [PK_Tender2]
    PRIMARY KEY CLUSTERED ([Tender_ID] ASC);
GO

-- Creating primary key on [User_ID] in table 'User2'
ALTER TABLE [dbo].[User2]
ADD CONSTRAINT [PK_User2]
    PRIMARY KEY CLUSTERED ([User_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Category_ID] in table 'Inventories'
ALTER TABLE [dbo].[Inventories]
ADD CONSTRAINT [FK_Inventory_Category]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Categories]
        ([Category_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_Category'
CREATE INDEX [IX_FK_Inventory_Category]
ON [dbo].[Inventories]
    ([Category_ID]);
GO

-- Creating foreign key on [Checkout_ID] in table 'Checkout_Checkin_Date'
ALTER TABLE [dbo].[Checkout_Checkin_Date]
ADD CONSTRAINT [FK_Checkout_Checkin_Date_Checkout_Checkin]
    FOREIGN KEY ([Checkout_ID])
    REFERENCES [dbo].[Checkout_Checkin]
        ([Checkout_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Checkout_Checkin_Date_Checkout_Checkin'
CREATE INDEX [IX_FK_Checkout_Checkin_Date_Checkout_Checkin]
ON [dbo].[Checkout_Checkin_Date]
    ([Checkout_ID]);
GO

-- Creating foreign key on [Tasks_Equipment_ID] in table 'Checkout_Checkin_Date'
ALTER TABLE [dbo].[Checkout_Checkin_Date]
ADD CONSTRAINT [FK_Checkout_Checkin_Date_Tasks_Equipment]
    FOREIGN KEY ([Tasks_Equipment_ID])
    REFERENCES [dbo].[Tasks_Equipment]
        ([Tasks_Equipment_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Checkout_Checkin_Date_Tasks_Equipment'
CREATE INDEX [IX_FK_Checkout_Checkin_Date_Tasks_Equipment]
ON [dbo].[Checkout_Checkin_Date]
    ([Tasks_Equipment_ID]);
GO

-- Creating foreign key on [Client_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Client]
    FOREIGN KEY ([Client_ID])
    REFERENCES [dbo].[Clients]
        ([Client_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Client'
CREATE INDEX [IX_FK_Tender_Request_Client]
ON [dbo].[Tender_Request]
    ([Client_ID]);
GO

-- Creating foreign key on [Employee_Type_ID] in table 'Employees'
ALTER TABLE [dbo].[Employees]
ADD CONSTRAINT [FK_Employee_Employee_Type]
    FOREIGN KEY ([Employee_Type_ID])
    REFERENCES [dbo].[Employee_Type]
        ([Employee_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Employee_Type'
CREATE INDEX [IX_FK_Employee_Employee_Type]
ON [dbo].[Employees]
    ([Employee_Type_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [FK_Employee_Task_Employee]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employees]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Task_Employee'
CREATE INDEX [IX_FK_Employee_Task_Employee]
ON [dbo].[Employee_Task]
    ([Employee_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Employee]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employees]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Employee'
CREATE INDEX [IX_FK_Supplier_Order_Employee]
ON [dbo].[Supplier_Order]
    ([Employee_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_User_Employee]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employees]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Employee'
CREATE INDEX [IX_FK_User_Employee]
ON [dbo].[Users]
    ([Employee_ID]);
GO

-- Creating foreign key on [Task_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [FK_Employee_Task_Task]
    FOREIGN KEY ([Task_ID])
    REFERENCES [dbo].[Tasks]
        ([Task_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Task_Task'
CREATE INDEX [IX_FK_Employee_Task_Task]
ON [dbo].[Employee_Task]
    ([Task_ID]);
GO

-- Creating foreign key on [Equipment_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [FK_Tasks_Equipment_Equipment]
    FOREIGN KEY ([Equipment_ID])
    REFERENCES [dbo].[Equipments]
        ([Equipment_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Equipment_Equipment'
CREATE INDEX [IX_FK_Tasks_Equipment_Equipment]
ON [dbo].[Tasks_Equipment]
    ([Equipment_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Inventory_On_Hand'
ALTER TABLE [dbo].[Inventory_On_Hand]
ADD CONSTRAINT [FK_Inventory_On_Hand_Inventory]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventories]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_On_Hand_Inventory'
CREATE INDEX [IX_FK_Inventory_On_Hand_Inventory]
ON [dbo].[Inventory_On_Hand]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Orderlines'
ALTER TABLE [dbo].[Orderlines]
ADD CONSTRAINT [FK_Orderline_Inventory]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventories]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orderline_Inventory'
CREATE INDEX [IX_FK_Orderline_Inventory]
ON [dbo].[Orderlines]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [FK_Phase_Inventory_Inventory]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventories]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Inventory_Inventory'
CREATE INDEX [IX_FK_Phase_Inventory_Inventory]
ON [dbo].[Phase_Inventory]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Rental_Line'
ALTER TABLE [dbo].[Rental_Line]
ADD CONSTRAINT [FK_Rental_Line_Inventory]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventories]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Line_Inventory'
CREATE INDEX [IX_FK_Rental_Line_Inventory]
ON [dbo].[Rental_Line]
    ([Inventory_ID]);
GO


-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_On_Hand_WriteOff_Inventory'
CREATE INDEX [IX_FK_Inventory_On_Hand_WriteOff_Inventory]
ON [dbo].[Inventory_On_Hand]
    ([WriteoffInventory_ID]);
GO

-- Creating foreign key on [Order_Status_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Order_Status]
    FOREIGN KEY ([Order_Status_ID])
    REFERENCES [dbo].[Order_Status]
        ([Order_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Order_Status'
CREATE INDEX [IX_FK_Supplier_Order_Order_Status]
ON [dbo].[Supplier_Order]
    ([Order_Status_ID]);
GO

-- Creating foreign key on [Password_ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_User_Password_History]
    FOREIGN KEY ([Password_ID])
    REFERENCES [dbo].[Password_History]
        ([Password_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Password_History'
CREATE INDEX [IX_FK_User_Password_History]
ON [dbo].[Users]
    ([Password_ID]);
GO

-- Creating foreign key on [Payment_Type_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Payment_Type]
    FOREIGN KEY ([Payment_Type_ID])
    REFERENCES [dbo].[Payment_Type]
        ([Payment_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Payment_Type'
CREATE INDEX [IX_FK_Supplier_Order_Payment_Type]
ON [dbo].[Supplier_Order]
    ([Payment_Type_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [FK_Phase_Inventory_Phase]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phases]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Inventory_Phase'
CREATE INDEX [IX_FK_Phase_Inventory_Phase]
ON [dbo].[Phase_Inventory]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_Status_ID] in table 'Phases'
ALTER TABLE [dbo].[Phases]
ADD CONSTRAINT [FK_Phase_Phase_Status]
    FOREIGN KEY ([Phase_Status_ID])
    REFERENCES [dbo].[Phase_Status]
        ([Phase_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Phase_Status'
CREATE INDEX [IX_FK_Phase_Phase_Status]
ON [dbo].[Phases]
    ([Phase_Status_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Phases'
ALTER TABLE [dbo].[Phases]
ADD CONSTRAINT [FK_Phase_Project]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Projects]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Project'
CREATE INDEX [IX_FK_Phase_Project]
ON [dbo].[Phases]
    ([Project_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_Project_Phase]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phases]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Phase'
CREATE INDEX [IX_FK_Project_Phase]
ON [dbo].[Projects]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [FK_Subcontractor_Phase_Phase]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phases]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Subcontractor_Phase_Phase'
CREATE INDEX [IX_FK_Subcontractor_Phase_Phase]
ON [dbo].[Subcontractor_Phase]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_Task_Phase]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phases]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Phase'
CREATE INDEX [IX_FK_Task_Phase]
ON [dbo].[Tasks]
    ([Phase_ID]);
GO

-- Creating foreign key on [Project_Status_ID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_Project_Project_Status]
    FOREIGN KEY ([Project_Status_ID])
    REFERENCES [dbo].[Project_Status]
        ([Project_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Project_Status'
CREATE INDEX [IX_FK_Project_Project_Status]
ON [dbo].[Projects]
    ([Project_Status_ID]);
GO

-- Creating foreign key on [Tender_ID] in table 'Projects'
ALTER TABLE [dbo].[Projects]
ADD CONSTRAINT [FK_Project_Tender]
    FOREIGN KEY ([Tender_ID])
    REFERENCES [dbo].[Tenders]
        ([Tender_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Tender'
CREATE INDEX [IX_FK_Project_Tender]
ON [dbo].[Projects]
    ([Tender_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Project]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Projects]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Project'
CREATE INDEX [IX_FK_Supplier_Order_Project]
ON [dbo].[Supplier_Order]
    ([Project_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Tenders'
ALTER TABLE [dbo].[Tenders]
ADD CONSTRAINT [FK_Tender_Project]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Projects]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Project'
CREATE INDEX [IX_FK_Tender_Project]
ON [dbo].[Tenders]
    ([Project_ID]);
GO

-- Creating foreign key on [Rental_Status_ID] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [FK_Rental_Rental_Status]
    FOREIGN KEY ([Rental_Status_ID])
    REFERENCES [dbo].[Rental_Status]
        ([Rental_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Rental_Status'
CREATE INDEX [IX_FK_Rental_Rental_Status]
ON [dbo].[Rentals]
    ([Rental_Status_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Rentals'
ALTER TABLE [dbo].[Rentals]
ADD CONSTRAINT [FK_Rental_Supplier]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Suppliers]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Supplier'
CREATE INDEX [IX_FK_Rental_Supplier]
ON [dbo].[Rentals]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Rental_Request_Status_ID] in table 'Rental_Request'
ALTER TABLE [dbo].[Rental_Request]
ADD CONSTRAINT [FK_Rental_Request_Rental_Request_Status]
    FOREIGN KEY ([Rental_Request_Status_ID])
    REFERENCES [dbo].[Rental_Request_Status]
        ([Rental_Request_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Request_Rental_Request_Status'
CREATE INDEX [IX_FK_Rental_Request_Rental_Request_Status]
ON [dbo].[Rental_Request]
    ([Rental_Request_Status_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Rental_Request'
ALTER TABLE [dbo].[Rental_Request]
ADD CONSTRAINT [FK_Rental_Request_Supplier]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Suppliers]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Request_Supplier'
CREATE INDEX [IX_FK_Rental_Request_Supplier]
ON [dbo].[Rental_Request]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Subcontractor_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [FK_Subcontractor_Phase_Subcontractor]
    FOREIGN KEY ([Subcontractor_ID])
    REFERENCES [dbo].[Subcontractors]
        ([Subcontractor_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Subcontractor_Phase_Subcontractor'
CREATE INDEX [IX_FK_Subcontractor_Phase_Subcontractor]
ON [dbo].[Subcontractor_Phase]
    ([Subcontractor_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Supplier]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Suppliers]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Supplier'
CREATE INDEX [IX_FK_Supplier_Order_Supplier]
ON [dbo].[Supplier_Order]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Supplier_Request_ID] in table 'Suppliers'
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT [FK_Supplier_Supplier_Request]
    FOREIGN KEY ([Supplier_Request_ID])
    REFERENCES [dbo].[Supplier_Request]
        ([Supplier_Request_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Supplier_Request'
CREATE INDEX [IX_FK_Supplier_Supplier_Request]
ON [dbo].[Suppliers]
    ([Supplier_Request_ID]);
GO

-- Creating foreign key on [Supplier_Type_ID] in table 'Suppliers'
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT [FK_Supplier_Supplier_Type]
    FOREIGN KEY ([Supplier_Type_ID])
    REFERENCES [dbo].[Supplier_Type]
        ([Supplier_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Supplier_Type'
CREATE INDEX [IX_FK_Supplier_Supplier_Type]
ON [dbo].[Suppliers]
    ([Supplier_Type_ID]);
GO

-- Creating foreign key on [Supplier_Order_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Supplier_Order]
    FOREIGN KEY ([Supplier_Order_ID])
    REFERENCES [dbo].[Supplier_Order]
        ([Supplier_Order_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Supplier_Request_Status_ID] in table 'Supplier_Request'
ALTER TABLE [dbo].[Supplier_Request]
ADD CONSTRAINT [FK_Supplier_Request_Supplier_Request_Status]
    FOREIGN KEY ([Supplier_Request_Status_ID])
    REFERENCES [dbo].[Supplier_Request_Status]
        ([Supplier_Request_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Request_Supplier_Request_Status'
CREATE INDEX [IX_FK_Supplier_Request_Supplier_Request_Status]
ON [dbo].[Supplier_Request]
    ([Supplier_Request_Status_ID]);
GO

-- Creating foreign key on [Task_Status_ID] in table 'Tasks'
ALTER TABLE [dbo].[Tasks]
ADD CONSTRAINT [FK_Task_Task_Status]
    FOREIGN KEY ([Task_Status_ID])
    REFERENCES [dbo].[Task_Status]
        ([Task_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Task_Status'
CREATE INDEX [IX_FK_Task_Task_Status]
ON [dbo].[Tasks]
    ([Task_Status_ID]);
GO

-- Creating foreign key on [Task_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [FK_Tasks_Equipment_Task]
    FOREIGN KEY ([Task_ID])
    REFERENCES [dbo].[Tasks]
        ([Task_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Equipment_Task'
CREATE INDEX [IX_FK_Tasks_Equipment_Task]
ON [dbo].[Tasks_Equipment]
    ([Task_ID]);
GO

-- Creating foreign key on [Tender_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Tender]
    FOREIGN KEY ([Tender_ID])
    REFERENCES [dbo].[Tenders]
        ([Tender_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Tender'
CREATE INDEX [IX_FK_Tender_Request_Tender]
ON [dbo].[Tender_Request]
    ([Tender_ID]);
GO

-- Creating foreign key on [Tender_Status_ID] in table 'Tenders'
ALTER TABLE [dbo].[Tenders]
ADD CONSTRAINT [FK_Tender_Tender_Status]
    FOREIGN KEY ([Tender_Status_ID])
    REFERENCES [dbo].[Tender_Status]
        ([Tender_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Tender_Status'
CREATE INDEX [IX_FK_Tender_Tender_Status]
ON [dbo].[Tenders]
    ([Tender_Status_ID]);
GO

-- Creating foreign key on [Tender_Request_Status_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Tender_Request_Status]
    FOREIGN KEY ([Tender_Request_Status_ID])
    REFERENCES [dbo].[Tender_Request_Status]
        ([Tender_Request_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Tender_Request_Status'
CREATE INDEX [IX_FK_Tender_Request_Tender_Request_Status]
ON [dbo].[Tender_Request]
    ([Tender_Request_Status_ID]);
GO

-- Creating foreign key on [User_Role_ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_User_User_Role]
    FOREIGN KEY ([User_Role_ID])
    REFERENCES [dbo].[User_Role]
        ([User_Role_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_User_Role'
CREATE INDEX [IX_FK_User_User_Role]
ON [dbo].[Users]
    ([User_Role_ID]);
GO

-- Creating foreign key on [Category_ID] in table 'Inventory1'
ALTER TABLE [dbo].[Inventory1]
ADD CONSTRAINT [FK_Inventory_Category1]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Category1]
        ([Category_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_Category1'
CREATE INDEX [IX_FK_Inventory_Category1]
ON [dbo].[Inventory1]
    ([Category_ID]);
GO

-- Creating foreign key on [Checkout_ID] in table 'Checkout_Checkin_Date1'
ALTER TABLE [dbo].[Checkout_Checkin_Date1]
ADD CONSTRAINT [FK_Checkout_Checkin_Date_Checkout_Checkin1]
    FOREIGN KEY ([Checkout_ID])
    REFERENCES [dbo].[Checkout_Checkin1]
        ([Checkout_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Checkout_Checkin_Date_Checkout_Checkin1'
CREATE INDEX [IX_FK_Checkout_Checkin_Date_Checkout_Checkin1]
ON [dbo].[Checkout_Checkin_Date1]
    ([Checkout_ID]);
GO

-- Creating foreign key on [Tasks_Equipment_ID] in table 'Checkout_Checkin_Date1'
ALTER TABLE [dbo].[Checkout_Checkin_Date1]
ADD CONSTRAINT [FK_Checkout_Checkin_Date_Tasks_Equipment1]
    FOREIGN KEY ([Tasks_Equipment_ID])
    REFERENCES [dbo].[Tasks_Equipment]
        ([Tasks_Equipment_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Checkout_Checkin_Date_Tasks_Equipment1'
CREATE INDEX [IX_FK_Checkout_Checkin_Date_Tasks_Equipment1]
ON [dbo].[Checkout_Checkin_Date1]
    ([Tasks_Equipment_ID]);
GO

-- Creating foreign key on [Client_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Client1]
    FOREIGN KEY ([Client_ID])
    REFERENCES [dbo].[Client1]
        ([Client_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Client1'
CREATE INDEX [IX_FK_Tender_Request_Client1]
ON [dbo].[Tender_Request]
    ([Client_ID]);
GO

-- Creating foreign key on [Employee_Type_ID] in table 'Employee1'
ALTER TABLE [dbo].[Employee1]
ADD CONSTRAINT [FK_Employee_Employee_Type1]
    FOREIGN KEY ([Employee_Type_ID])
    REFERENCES [dbo].[Employee_Type]
        ([Employee_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Employee_Type1'
CREATE INDEX [IX_FK_Employee_Employee_Type1]
ON [dbo].[Employee1]
    ([Employee_Type_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [FK_Employee_Task_Employee1]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employee1]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Task_Employee1'
CREATE INDEX [IX_FK_Employee_Task_Employee1]
ON [dbo].[Employee_Task]
    ([Employee_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Employee1]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employee1]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Employee1'
CREATE INDEX [IX_FK_Supplier_Order_Employee1]
ON [dbo].[Supplier_Order]
    ([Employee_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'User1'
ALTER TABLE [dbo].[User1]
ADD CONSTRAINT [FK_User_Employee1]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employee1]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Employee1'
CREATE INDEX [IX_FK_User_Employee1]
ON [dbo].[User1]
    ([Employee_ID]);
GO

-- Creating foreign key on [Task_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [FK_Employee_Task_Task1]
    FOREIGN KEY ([Task_ID])
    REFERENCES [dbo].[Task1]
        ([Task_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Task_Task1'
CREATE INDEX [IX_FK_Employee_Task_Task1]
ON [dbo].[Employee_Task]
    ([Task_ID]);
GO

-- Creating foreign key on [Equipment_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [FK_Tasks_Equipment_Equipment1]
    FOREIGN KEY ([Equipment_ID])
    REFERENCES [dbo].[Equipment1]
        ([Equipment_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Equipment_Equipment1'
CREATE INDEX [IX_FK_Tasks_Equipment_Equipment1]
ON [dbo].[Tasks_Equipment]
    ([Equipment_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Inventory_On_Hand'
ALTER TABLE [dbo].[Inventory_On_Hand]
ADD CONSTRAINT [FK_Inventory_On_Hand_Inventory1]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory1]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_On_Hand_Inventory1'
CREATE INDEX [IX_FK_Inventory_On_Hand_Inventory1]
ON [dbo].[Inventory_On_Hand]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Orderline1'
ALTER TABLE [dbo].[Orderline1]
ADD CONSTRAINT [FK_Orderline_Inventory1]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory1]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orderline_Inventory1'
CREATE INDEX [IX_FK_Orderline_Inventory1]
ON [dbo].[Orderline1]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [FK_Phase_Inventory_Inventory1]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory1]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Inventory_Inventory1'
CREATE INDEX [IX_FK_Phase_Inventory_Inventory1]
ON [dbo].[Phase_Inventory]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Rental_Line'
ALTER TABLE [dbo].[Rental_Line]
ADD CONSTRAINT [FK_Rental_Line_Inventory1]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory1]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Line_Inventory1'
CREATE INDEX [IX_FK_Rental_Line_Inventory1]
ON [dbo].[Rental_Line]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Password_ID] in table 'User1'
ALTER TABLE [dbo].[User1]
ADD CONSTRAINT [FK_User_Password_History1]
    FOREIGN KEY ([Password_ID])
    REFERENCES [dbo].[Password_History]
        ([Password_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Password_History1'
CREATE INDEX [IX_FK_User_Password_History1]
ON [dbo].[User1]
    ([Password_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [FK_Phase_Inventory_Phase1]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase1]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Inventory_Phase1'
CREATE INDEX [IX_FK_Phase_Inventory_Phase1]
ON [dbo].[Phase_Inventory]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_Status_ID] in table 'Phase1'
ALTER TABLE [dbo].[Phase1]
ADD CONSTRAINT [FK_Phase_Phase_Status1]
    FOREIGN KEY ([Phase_Status_ID])
    REFERENCES [dbo].[Phase_Status]
        ([Phase_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Phase_Status1'
CREATE INDEX [IX_FK_Phase_Phase_Status1]
ON [dbo].[Phase1]
    ([Phase_Status_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Phase1'
ALTER TABLE [dbo].[Phase1]
ADD CONSTRAINT [FK_Phase_Project1]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Project1]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Project1'
CREATE INDEX [IX_FK_Phase_Project1]
ON [dbo].[Phase1]
    ([Project_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Project1'
ALTER TABLE [dbo].[Project1]
ADD CONSTRAINT [FK_Project_Phase1]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase1]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Phase1'
CREATE INDEX [IX_FK_Project_Phase1]
ON [dbo].[Project1]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [FK_Subcontractor_Phase_Phase1]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase1]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Subcontractor_Phase_Phase1'
CREATE INDEX [IX_FK_Subcontractor_Phase_Phase1]
ON [dbo].[Subcontractor_Phase]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Task1'
ALTER TABLE [dbo].[Task1]
ADD CONSTRAINT [FK_Task_Phase1]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase1]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Phase1'
CREATE INDEX [IX_FK_Task_Phase1]
ON [dbo].[Task1]
    ([Phase_ID]);
GO

-- Creating foreign key on [Project_Status_ID] in table 'Project1'
ALTER TABLE [dbo].[Project1]
ADD CONSTRAINT [FK_Project_Project_Status1]
    FOREIGN KEY ([Project_Status_ID])
    REFERENCES [dbo].[Project_Status]
        ([Project_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Project_Status1'
CREATE INDEX [IX_FK_Project_Project_Status1]
ON [dbo].[Project1]
    ([Project_Status_ID]);
GO

-- Creating foreign key on [Tender_ID] in table 'Project1'
ALTER TABLE [dbo].[Project1]
ADD CONSTRAINT [FK_Project_Tender1]
    FOREIGN KEY ([Tender_ID])
    REFERENCES [dbo].[Tender1]
        ([Tender_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Tender1'
CREATE INDEX [IX_FK_Project_Tender1]
ON [dbo].[Project1]
    ([Tender_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Project1]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Project1]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Project1'
CREATE INDEX [IX_FK_Supplier_Order_Project1]
ON [dbo].[Supplier_Order]
    ([Project_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Tender1'
ALTER TABLE [dbo].[Tender1]
ADD CONSTRAINT [FK_Tender_Project1]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Project1]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Project1'
CREATE INDEX [IX_FK_Tender_Project1]
ON [dbo].[Tender1]
    ([Project_ID]);
GO

-- Creating foreign key on [Rental_Status_ID] in table 'Rental1'
ALTER TABLE [dbo].[Rental1]
ADD CONSTRAINT [FK_Rental_Rental_Status1]
    FOREIGN KEY ([Rental_Status_ID])
    REFERENCES [dbo].[Rental_Status]
        ([Rental_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Rental_Status1'
CREATE INDEX [IX_FK_Rental_Rental_Status1]
ON [dbo].[Rental1]
    ([Rental_Status_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Rental1'
ALTER TABLE [dbo].[Rental1]
ADD CONSTRAINT [FK_Rental_Supplier1]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Supplier1]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Supplier1'
CREATE INDEX [IX_FK_Rental_Supplier1]
ON [dbo].[Rental1]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Rental_Request'
ALTER TABLE [dbo].[Rental_Request]
ADD CONSTRAINT [FK_Rental_Request_Supplier1]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Supplier1]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Request_Supplier1'
CREATE INDEX [IX_FK_Rental_Request_Supplier1]
ON [dbo].[Rental_Request]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Subcontractor_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [FK_Subcontractor_Phase_Subcontractor1]
    FOREIGN KEY ([Subcontractor_ID])
    REFERENCES [dbo].[Subcontractor1]
        ([Subcontractor_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Subcontractor_Phase_Subcontractor1'
CREATE INDEX [IX_FK_Subcontractor_Phase_Subcontractor1]
ON [dbo].[Subcontractor_Phase]
    ([Subcontractor_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Supplier1]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Supplier1]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Supplier1'
CREATE INDEX [IX_FK_Supplier_Order_Supplier1]
ON [dbo].[Supplier_Order]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Supplier_Request_ID] in table 'Supplier1'
ALTER TABLE [dbo].[Supplier1]
ADD CONSTRAINT [FK_Supplier_Supplier_Request1]
    FOREIGN KEY ([Supplier_Request_ID])
    REFERENCES [dbo].[Supplier_Request]
        ([Supplier_Request_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Supplier_Request1'
CREATE INDEX [IX_FK_Supplier_Supplier_Request1]
ON [dbo].[Supplier1]
    ([Supplier_Request_ID]);
GO

-- Creating foreign key on [Supplier_Type_ID] in table 'Supplier1'
ALTER TABLE [dbo].[Supplier1]
ADD CONSTRAINT [FK_Supplier_Supplier_Type1]
    FOREIGN KEY ([Supplier_Type_ID])
    REFERENCES [dbo].[Supplier_Type]
        ([Supplier_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Supplier_Type1'
CREATE INDEX [IX_FK_Supplier_Supplier_Type1]
ON [dbo].[Supplier1]
    ([Supplier_Type_ID]);
GO

-- Creating foreign key on [Task_Status_ID] in table 'Task1'
ALTER TABLE [dbo].[Task1]
ADD CONSTRAINT [FK_Task_Task_Status1]
    FOREIGN KEY ([Task_Status_ID])
    REFERENCES [dbo].[Task_Status]
        ([Task_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Task_Status1'
CREATE INDEX [IX_FK_Task_Task_Status1]
ON [dbo].[Task1]
    ([Task_Status_ID]);
GO

-- Creating foreign key on [Task_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [FK_Tasks_Equipment_Task1]
    FOREIGN KEY ([Task_ID])
    REFERENCES [dbo].[Task1]
        ([Task_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Equipment_Task1'
CREATE INDEX [IX_FK_Tasks_Equipment_Task1]
ON [dbo].[Tasks_Equipment]
    ([Task_ID]);
GO

-- Creating foreign key on [Tender_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Tender1]
    FOREIGN KEY ([Tender_ID])
    REFERENCES [dbo].[Tender1]
        ([Tender_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Tender1'
CREATE INDEX [IX_FK_Tender_Request_Tender1]
ON [dbo].[Tender_Request]
    ([Tender_ID]);
GO

-- Creating foreign key on [Tender_Status_ID] in table 'Tender1'
ALTER TABLE [dbo].[Tender1]
ADD CONSTRAINT [FK_Tender_Tender_Status1]
    FOREIGN KEY ([Tender_Status_ID])
    REFERENCES [dbo].[Tender_Status]
        ([Tender_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Tender_Status1'
CREATE INDEX [IX_FK_Tender_Tender_Status1]
ON [dbo].[Tender1]
    ([Tender_Status_ID]);
GO

-- Creating foreign key on [User_Role_ID] in table 'User1'
ALTER TABLE [dbo].[User1]
ADD CONSTRAINT [FK_User_User_Role1]
    FOREIGN KEY ([User_Role_ID])
    REFERENCES [dbo].[User_Role]
        ([User_Role_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_User_Role1'
CREATE INDEX [IX_FK_User_User_Role1]
ON [dbo].[User1]
    ([User_Role_ID]);
GO

-- Creating foreign key on [Category_ID] in table 'Inventory2'
ALTER TABLE [dbo].[Inventory2]
ADD CONSTRAINT [FK_Inventory_Category2]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Category2]
        ([Category_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_Category2'
CREATE INDEX [IX_FK_Inventory_Category2]
ON [dbo].[Inventory2]
    ([Category_ID]);
GO

-- Creating foreign key on [Checkout_ID] in table 'Checkout_Checkin_Date2'
ALTER TABLE [dbo].[Checkout_Checkin_Date2]
ADD CONSTRAINT [FK_Checkout_Checkin_Date_Checkout_Checkin2]
    FOREIGN KEY ([Checkout_ID])
    REFERENCES [dbo].[Checkout_Checkin2]
        ([Checkout_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Checkout_Checkin_Date_Checkout_Checkin2'
CREATE INDEX [IX_FK_Checkout_Checkin_Date_Checkout_Checkin2]
ON [dbo].[Checkout_Checkin_Date2]
    ([Checkout_ID]);
GO

-- Creating foreign key on [Tasks_Equipment_ID] in table 'Checkout_Checkin_Date2'
ALTER TABLE [dbo].[Checkout_Checkin_Date2]
ADD CONSTRAINT [FK_Checkout_Checkin_Date_Tasks_Equipment2]
    FOREIGN KEY ([Tasks_Equipment_ID])
    REFERENCES [dbo].[Tasks_Equipment]
        ([Tasks_Equipment_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Checkout_Checkin_Date_Tasks_Equipment2'
CREATE INDEX [IX_FK_Checkout_Checkin_Date_Tasks_Equipment2]
ON [dbo].[Checkout_Checkin_Date2]
    ([Tasks_Equipment_ID]);
GO

-- Creating foreign key on [Client_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Client2]
    FOREIGN KEY ([Client_ID])
    REFERENCES [dbo].[Client2]
        ([Client_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Client2'
CREATE INDEX [IX_FK_Tender_Request_Client2]
ON [dbo].[Tender_Request]
    ([Client_ID]);
GO

-- Creating foreign key on [Employee_Type_ID] in table 'Employee2'
ALTER TABLE [dbo].[Employee2]
ADD CONSTRAINT [FK_Employee_Employee_Type2]
    FOREIGN KEY ([Employee_Type_ID])
    REFERENCES [dbo].[Employee_Type]
        ([Employee_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Employee_Type2'
CREATE INDEX [IX_FK_Employee_Employee_Type2]
ON [dbo].[Employee2]
    ([Employee_Type_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [FK_Employee_Task_Employee2]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employee2]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Task_Employee2'
CREATE INDEX [IX_FK_Employee_Task_Employee2]
ON [dbo].[Employee_Task]
    ([Employee_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Employee2]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employee2]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Employee2'
CREATE INDEX [IX_FK_Supplier_Order_Employee2]
ON [dbo].[Supplier_Order]
    ([Employee_ID]);
GO

-- Creating foreign key on [Employee_ID] in table 'User2'
ALTER TABLE [dbo].[User2]
ADD CONSTRAINT [FK_User_Employee2]
    FOREIGN KEY ([Employee_ID])
    REFERENCES [dbo].[Employee2]
        ([Employee_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Employee2'
CREATE INDEX [IX_FK_User_Employee2]
ON [dbo].[User2]
    ([Employee_ID]);
GO

-- Creating foreign key on [Task_ID] in table 'Employee_Task'
ALTER TABLE [dbo].[Employee_Task]
ADD CONSTRAINT [FK_Employee_Task_Task2]
    FOREIGN KEY ([Task_ID])
    REFERENCES [dbo].[Task2]
        ([Task_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Employee_Task_Task2'
CREATE INDEX [IX_FK_Employee_Task_Task2]
ON [dbo].[Employee_Task]
    ([Task_ID]);
GO

-- Creating foreign key on [Equipment_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [FK_Tasks_Equipment_Equipment2]
    FOREIGN KEY ([Equipment_ID])
    REFERENCES [dbo].[Equipment2]
        ([Equipment_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Equipment_Equipment2'
CREATE INDEX [IX_FK_Tasks_Equipment_Equipment2]
ON [dbo].[Tasks_Equipment]
    ([Equipment_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Inventory_On_Hand'
ALTER TABLE [dbo].[Inventory_On_Hand]
ADD CONSTRAINT [FK_Inventory_On_Hand_Inventory2]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory2]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Inventory_On_Hand_Inventory2'
CREATE INDEX [IX_FK_Inventory_On_Hand_Inventory2]
ON [dbo].[Inventory_On_Hand]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Orderline2'
ALTER TABLE [dbo].[Orderline2]
ADD CONSTRAINT [FK_Orderline_Inventory2]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory2]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Orderline_Inventory2'
CREATE INDEX [IX_FK_Orderline_Inventory2]
ON [dbo].[Orderline2]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [FK_Phase_Inventory_Inventory2]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory2]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Inventory_Inventory2'
CREATE INDEX [IX_FK_Phase_Inventory_Inventory2]
ON [dbo].[Phase_Inventory]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Inventory_ID] in table 'Rental_Line'
ALTER TABLE [dbo].[Rental_Line]
ADD CONSTRAINT [FK_Rental_Line_Inventory2]
    FOREIGN KEY ([Inventory_ID])
    REFERENCES [dbo].[Inventory2]
        ([Inventory_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Line_Inventory2'
CREATE INDEX [IX_FK_Rental_Line_Inventory2]
ON [dbo].[Rental_Line]
    ([Inventory_ID]);
GO

-- Creating foreign key on [Password_ID] in table 'User2'
ALTER TABLE [dbo].[User2]
ADD CONSTRAINT [FK_User_Password_History2]
    FOREIGN KEY ([Password_ID])
    REFERENCES [dbo].[Password_History]
        ([Password_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_Password_History2'
CREATE INDEX [IX_FK_User_Password_History2]
ON [dbo].[User2]
    ([Password_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Phase_Inventory'
ALTER TABLE [dbo].[Phase_Inventory]
ADD CONSTRAINT [FK_Phase_Inventory_Phase2]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase2]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Inventory_Phase2'
CREATE INDEX [IX_FK_Phase_Inventory_Phase2]
ON [dbo].[Phase_Inventory]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_Status_ID] in table 'Phase2'
ALTER TABLE [dbo].[Phase2]
ADD CONSTRAINT [FK_Phase_Phase_Status2]
    FOREIGN KEY ([Phase_Status_ID])
    REFERENCES [dbo].[Phase_Status]
        ([Phase_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Phase_Status2'
CREATE INDEX [IX_FK_Phase_Phase_Status2]
ON [dbo].[Phase2]
    ([Phase_Status_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Phase2'
ALTER TABLE [dbo].[Phase2]
ADD CONSTRAINT [FK_Phase_Project2]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Project2]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Phase_Project2'
CREATE INDEX [IX_FK_Phase_Project2]
ON [dbo].[Phase2]
    ([Project_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Project2'
ALTER TABLE [dbo].[Project2]
ADD CONSTRAINT [FK_Project_Phase2]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase2]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Phase2'
CREATE INDEX [IX_FK_Project_Phase2]
ON [dbo].[Project2]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [FK_Subcontractor_Phase_Phase2]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase2]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Subcontractor_Phase_Phase2'
CREATE INDEX [IX_FK_Subcontractor_Phase_Phase2]
ON [dbo].[Subcontractor_Phase]
    ([Phase_ID]);
GO

-- Creating foreign key on [Phase_ID] in table 'Task2'
ALTER TABLE [dbo].[Task2]
ADD CONSTRAINT [FK_Task_Phase2]
    FOREIGN KEY ([Phase_ID])
    REFERENCES [dbo].[Phase2]
        ([Phase_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Phase2'
CREATE INDEX [IX_FK_Task_Phase2]
ON [dbo].[Task2]
    ([Phase_ID]);
GO

-- Creating foreign key on [Project_Status_ID] in table 'Project2'
ALTER TABLE [dbo].[Project2]
ADD CONSTRAINT [FK_Project_Project_Status2]
    FOREIGN KEY ([Project_Status_ID])
    REFERENCES [dbo].[Project_Status]
        ([Project_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Project_Status2'
CREATE INDEX [IX_FK_Project_Project_Status2]
ON [dbo].[Project2]
    ([Project_Status_ID]);
GO

-- Creating foreign key on [Tender_ID] in table 'Project2'
ALTER TABLE [dbo].[Project2]
ADD CONSTRAINT [FK_Project_Tender2]
    FOREIGN KEY ([Tender_ID])
    REFERENCES [dbo].[Tender2]
        ([Tender_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Project_Tender2'
CREATE INDEX [IX_FK_Project_Tender2]
ON [dbo].[Project2]
    ([Tender_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Project2]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Project2]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Project2'
CREATE INDEX [IX_FK_Supplier_Order_Project2]
ON [dbo].[Supplier_Order]
    ([Project_ID]);
GO

-- Creating foreign key on [Project_ID] in table 'Tender2'
ALTER TABLE [dbo].[Tender2]
ADD CONSTRAINT [FK_Tender_Project2]
    FOREIGN KEY ([Project_ID])
    REFERENCES [dbo].[Project2]
        ([Project_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Project2'
CREATE INDEX [IX_FK_Tender_Project2]
ON [dbo].[Tender2]
    ([Project_ID]);
GO

-- Creating foreign key on [Rental_Status_ID] in table 'Rental2'
ALTER TABLE [dbo].[Rental2]
ADD CONSTRAINT [FK_Rental_Rental_Status2]
    FOREIGN KEY ([Rental_Status_ID])
    REFERENCES [dbo].[Rental_Status]
        ([Rental_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Rental_Status2'
CREATE INDEX [IX_FK_Rental_Rental_Status2]
ON [dbo].[Rental2]
    ([Rental_Status_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Rental2'
ALTER TABLE [dbo].[Rental2]
ADD CONSTRAINT [FK_Rental_Supplier2]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Supplier2]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Supplier2'
CREATE INDEX [IX_FK_Rental_Supplier2]
ON [dbo].[Rental2]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Rental_Request'
ALTER TABLE [dbo].[Rental_Request]
ADD CONSTRAINT [FK_Rental_Request_Supplier2]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Supplier2]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Rental_Request_Supplier2'
CREATE INDEX [IX_FK_Rental_Request_Supplier2]
ON [dbo].[Rental_Request]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Subcontractor_ID] in table 'Subcontractor_Phase'
ALTER TABLE [dbo].[Subcontractor_Phase]
ADD CONSTRAINT [FK_Subcontractor_Phase_Subcontractor2]
    FOREIGN KEY ([Subcontractor_ID])
    REFERENCES [dbo].[Subcontractor2]
        ([Subcontractor_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Subcontractor_Phase_Subcontractor2'
CREATE INDEX [IX_FK_Subcontractor_Phase_Subcontractor2]
ON [dbo].[Subcontractor_Phase]
    ([Subcontractor_ID]);
GO

-- Creating foreign key on [Supplier_ID] in table 'Supplier_Order'
ALTER TABLE [dbo].[Supplier_Order]
ADD CONSTRAINT [FK_Supplier_Order_Supplier2]
    FOREIGN KEY ([Supplier_ID])
    REFERENCES [dbo].[Supplier2]
        ([Supplier_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Order_Supplier2'
CREATE INDEX [IX_FK_Supplier_Order_Supplier2]
ON [dbo].[Supplier_Order]
    ([Supplier_ID]);
GO

-- Creating foreign key on [Supplier_Request_ID] in table 'Supplier2'
ALTER TABLE [dbo].[Supplier2]
ADD CONSTRAINT [FK_Supplier_Supplier_Request2]
    FOREIGN KEY ([Supplier_Request_ID])
    REFERENCES [dbo].[Supplier_Request]
        ([Supplier_Request_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Supplier_Request2'
CREATE INDEX [IX_FK_Supplier_Supplier_Request2]
ON [dbo].[Supplier2]
    ([Supplier_Request_ID]);
GO

-- Creating foreign key on [Supplier_Type_ID] in table 'Supplier2'
ALTER TABLE [dbo].[Supplier2]
ADD CONSTRAINT [FK_Supplier_Supplier_Type2]
    FOREIGN KEY ([Supplier_Type_ID])
    REFERENCES [dbo].[Supplier_Type]
        ([Supplier_Type_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Supplier_Supplier_Type2'
CREATE INDEX [IX_FK_Supplier_Supplier_Type2]
ON [dbo].[Supplier2]
    ([Supplier_Type_ID]);
GO

-- Creating foreign key on [Task_Status_ID] in table 'Task2'
ALTER TABLE [dbo].[Task2]
ADD CONSTRAINT [FK_Task_Task_Status2]
    FOREIGN KEY ([Task_Status_ID])
    REFERENCES [dbo].[Task_Status]
        ([Task_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Task_Status2'
CREATE INDEX [IX_FK_Task_Task_Status2]
ON [dbo].[Task2]
    ([Task_Status_ID]);
GO

-- Creating foreign key on [Task_ID] in table 'Tasks_Equipment'
ALTER TABLE [dbo].[Tasks_Equipment]
ADD CONSTRAINT [FK_Tasks_Equipment_Task2]
    FOREIGN KEY ([Task_ID])
    REFERENCES [dbo].[Task2]
        ([Task_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tasks_Equipment_Task2'
CREATE INDEX [IX_FK_Tasks_Equipment_Task2]
ON [dbo].[Tasks_Equipment]
    ([Task_ID]);
GO

-- Creating foreign key on [Tender_ID] in table 'Tender_Request'
ALTER TABLE [dbo].[Tender_Request]
ADD CONSTRAINT [FK_Tender_Request_Tender2]
    FOREIGN KEY ([Tender_ID])
    REFERENCES [dbo].[Tender2]
        ([Tender_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Request_Tender2'
CREATE INDEX [IX_FK_Tender_Request_Tender2]
ON [dbo].[Tender_Request]
    ([Tender_ID]);
GO

-- Creating foreign key on [Tender_Status_ID] in table 'Tender2'
ALTER TABLE [dbo].[Tender2]
ADD CONSTRAINT [FK_Tender_Tender_Status2]
    FOREIGN KEY ([Tender_Status_ID])
    REFERENCES [dbo].[Tender_Status]
        ([Tender_Status_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tender_Tender_Status2'
CREATE INDEX [IX_FK_Tender_Tender_Status2]
ON [dbo].[Tender2]
    ([Tender_Status_ID]);
GO

-- Creating foreign key on [User_Role_ID] in table 'User2'
ALTER TABLE [dbo].[User2]
ADD CONSTRAINT [FK_User_User_Role2]
    FOREIGN KEY ([User_Role_ID])
    REFERENCES [dbo].[User_Role]
        ([User_Role_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_User_User_Role2'
CREATE INDEX [IX_FK_User_User_Role2]
ON [dbo].[User2]
    ([User_Role_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------