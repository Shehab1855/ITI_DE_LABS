USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[ATM_Dim]    Script Date: 1/28/2025 1:33:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ATM_Dim](
	[ATM_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[ATM_ID_BK] [int] NULL,
	[Location] [nvarchar](255) NULL,
	[ATM_status] [nvarchar](255) NULL,
	[Branch_ID_FK] [int] NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [bit] NULL,
	[SSC] [nchar](10) NULL,
 CONSTRAINT [PK_ATM_Dim] PRIMARY KEY CLUSTERED 
(
	[ATM_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

