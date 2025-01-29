USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Card_Dim]    Script Date: 1/28/2025 1:33:36 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Card_Dim](
	[Card_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Card_number_BK] [varchar](50) NOT NULL,
	[Account_Number_FK] [int] NOT NULL,
	[Account_Number_BK] [int] NOT NULL,
	[Card_type] [nvarchar](50) NULL,
	[Card_status] [nvarchar](50) NULL,
	[Exp_date] [date] NULL,
	[Csv] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[SSC] [nchar](10) NULL,
	[is_current] [bit] NULL,
 CONSTRAINT [PK_Card_Dim] PRIMARY KEY CLUSTERED 
(
	[Card_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

