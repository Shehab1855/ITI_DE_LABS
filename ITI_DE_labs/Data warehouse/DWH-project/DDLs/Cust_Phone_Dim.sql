USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Cust_Phone_Dim]    Script Date: 1/28/2025 1:33:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cust_Phone_Dim](
	[Cust_Phone_SK] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID_FK] [int] NOT NULL,
	[Customer_ID_BK] [int] NOT NULL,
	[Mobile_number] [varchar](50) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [nchar](10) NULL,
	[SSC] [bit] NULL,
 CONSTRAINT [PK_Cust_Phone_Dim_1] PRIMARY KEY CLUSTERED 
(
	[Cust_Phone_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cust_Phone_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Cust_Phone_Dim_Customer_Dim] FOREIGN KEY([Customer_ID_FK])
REFERENCES [dbo].[Customer_Dim] ([Customer_ID_SK])
GO

ALTER TABLE [dbo].[Cust_Phone_Dim] CHECK CONSTRAINT [FK_Cust_Phone_Dim_Customer_Dim]
GO

