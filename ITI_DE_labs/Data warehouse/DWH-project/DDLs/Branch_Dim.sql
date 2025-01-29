USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Branch_Dim]    Script Date: 1/28/2025 1:33:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Branch_Dim](
	[Branch_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Branch_ID_BK] [int] NOT NULL,
	[Branch_name] [nvarchar](255) NULL,
	[Location] [nvarchar](255) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [bit] NULL,
	[SSC] [nchar](10) NULL,
 CONSTRAINT [PK_Branch_Dim] PRIMARY KEY CLUSTERED 
(
	[Branch_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

