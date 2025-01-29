USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Account_Dim]    Script Date: 1/28/2025 1:32:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Account_Dim](
	[Account_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID_FK] [int] NOT NULL,
	[Account_number_BK] [int] NOT NULL,
	[Account_type] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Balance] [float] NULL,
	[Branch_ID_FK] [int] NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [bit] NULL,
	[SSC] [nchar](10) NULL,
 CONSTRAINT [PK_Account_Dim] PRIMARY KEY CLUSTERED 
(
	[Account_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Account_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Account_Dim_Customer_Dim] FOREIGN KEY([Customer_ID_FK])
REFERENCES [dbo].[Customer_Dim] ([Customer_ID_SK])
GO

ALTER TABLE [dbo].[Account_Dim] CHECK CONSTRAINT [FK_Account_Dim_Customer_Dim]
GO

