USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Customer_Dim]    Script Date: 1/28/2025 1:34:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer_Dim](
	[Customer_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID_BK] [int] NOT NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[Age] [int] NULL,
	[Gender] [varchar](50) NULL,
	[BD] [date] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[SSC] [nchar](10) NULL,
	[is_current] [bit] NULL,
 CONSTRAINT [PK_Customer_Dim] PRIMARY KEY CLUSTERED 
(
	[Customer_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

