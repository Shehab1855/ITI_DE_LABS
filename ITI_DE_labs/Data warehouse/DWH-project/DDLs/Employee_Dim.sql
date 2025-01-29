USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Employee_Dim]    Script Date: 1/28/2025 1:34:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee_Dim](
	[Employee_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Branch_ID_FK] [int] NOT NULL,
	[Employee_ID_BK] [int] NOT NULL,
	[Branch_ID_BK] [int] NOT NULL,
	[First_name] [varchar](50) NULL,
	[Last_name] [varchar](50) NULL,
	[Salary] [float] NULL,
	[Position] [varchar](50) NULL,
	[Supervisor_ID_BK] [nchar](10) NULL,
	[DNO] [int] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [bit] NULL,
	[SSC] [nchar](10) NULL,
 CONSTRAINT [PK_Employee_Dim] PRIMARY KEY CLUSTERED 
(
	[Employee_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Employee_Dim]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Dim_Branch_Dim] FOREIGN KEY([Branch_ID_FK])
REFERENCES [dbo].[Branch_Dim] ([Branch_ID_SK])
GO

ALTER TABLE [dbo].[Employee_Dim] CHECK CONSTRAINT [FK_Employee_Dim_Branch_Dim]
GO

