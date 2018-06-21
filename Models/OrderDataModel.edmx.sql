
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/21/2018 12:06:46
-- Generated from EDMX file: C:\Users\MSI\source\repos\MyService\MyService\Models\OrderDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DongToanDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AccountOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_AccountOrder];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Products1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products1];
GO
IF OBJECT_ID(N'[dbo].[Accounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Accounts];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Products1'
CREATE TABLE [dbo].[Products1] (
    [id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [Quantity] smallint  NOT NULL,
    [Detail] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Accounts'
CREATE TABLE [dbo].[Accounts] (
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Fullname] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Company] nvarchar(max)  NOT NULL,
    [Contact_Detail] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Order_Number] bigint IDENTITY(1,1) NOT NULL,
    [Order_Name] nvarchar(max)  NOT NULL,
    [Order_Status] smallint  NOT NULL,
    [Cost] int  NOT NULL,
    [Payment] int  NOT NULL,
    [Name_Of_Place] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Type] smallint  NOT NULL,
    [Elevation_System_Requered] nvarchar(max)  NOT NULL,
    [AccountUsername] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Products1'
ALTER TABLE [dbo].[Products1]
ADD CONSTRAINT [PK_Products1]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Username] in table 'Accounts'
ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT [PK_Accounts]
    PRIMARY KEY CLUSTERED ([Username] ASC);
GO

-- Creating primary key on [Order_Number] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Order_Number] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AccountUsername] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_AccountOrder]
    FOREIGN KEY ([AccountUsername])
    REFERENCES [dbo].[Accounts]
        ([Username])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AccountOrder'
CREATE INDEX [IX_FK_AccountOrder]
ON [dbo].[Orders]
    ([AccountUsername]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------