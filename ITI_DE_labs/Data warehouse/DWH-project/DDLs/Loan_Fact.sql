USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Loan_Fact]    Script Date: 1/28/2025 1:35:02 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Loan_Fact](
	[Loan_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID_FK] [int] NOT NULL,
	[Branch_ID_FK] [int] NOT NULL,
	[Start_Date_ID_FK] [int] NOT NULL,
	[End_Date_ID_FK] [int] NULL,
	[Loan_ID_BK] [int] NOT NULL,
	[Amount] [varchar](50) NULL,
	[Loan_months_terms] [varchar](50) NULL,
	[loan_type] [varchar](50) NULL,
	[Interest_rate] [float] NULL,
	[SSC] [bit] NULL,
 CONSTRAINT [PK_Loan_Fact] PRIMARY KEY CLUSTERED 
(
	[Loan_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Loan_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Fact_Branch_Dim] FOREIGN KEY([Branch_ID_FK])
REFERENCES [dbo].[Branch_Dim] ([Branch_ID_SK])
GO

ALTER TABLE [dbo].[Loan_Fact] CHECK CONSTRAINT [FK_Loan_Fact_Branch_Dim]
GO

ALTER TABLE [dbo].[Loan_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Fact_Customer_Dim] FOREIGN KEY([Customer_ID_FK])
REFERENCES [dbo].[Customer_Dim] ([Customer_ID_SK])
GO

ALTER TABLE [dbo].[Loan_Fact] CHECK CONSTRAINT [FK_Loan_Fact_Customer_Dim]
GO

ALTER TABLE [dbo].[Loan_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Loan_Fact_DimDate] FOREIGN KEY([Start_Date_ID_FK])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Loan_Fact] CHECK CONSTRAINT [FK_Loan_Fact_DimDate]
GO

