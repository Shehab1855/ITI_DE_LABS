USE [Bank_DWH]
GO

/****** Object:  Table [dbo].[Transaction_Fact]    Script Date: 1/28/2025 1:35:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transaction_Fact](
	[Transaction_ID_SK] [int] IDENTITY(1,1) NOT NULL,
	[Card_ID_FK] [int] NOT NULL,
	[ATM_ID_FK] [int] NOT NULL,
	[Account_ID_FK] [int] NOT NULL,
	[Time_ID_FK] [int] NULL,
	[Date_ID_FK] [int] NOT NULL,
	[Transaction_ID_BK] [bigint] NOT NULL,
	[Transaction_type_ID_BK] [int] NOT NULL,
	[Transaction_type] [varchar](100) NULL,
	[Amount] [money] NULL,
	[SSC] [nchar](10) NULL,
 CONSTRAINT [PK_Transaction_Fact] PRIMARY KEY CLUSTERED 
(
	[Transaction_ID_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Transaction_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Fact_Account_Dim] FOREIGN KEY([Account_ID_FK])
REFERENCES [dbo].[Account_Dim] ([Account_ID_SK])
GO

ALTER TABLE [dbo].[Transaction_Fact] CHECK CONSTRAINT [FK_Transaction_Fact_Account_Dim]
GO

ALTER TABLE [dbo].[Transaction_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Fact_ATM_Dim] FOREIGN KEY([ATM_ID_FK])
REFERENCES [dbo].[ATM_Dim] ([ATM_ID_SK])
GO

ALTER TABLE [dbo].[Transaction_Fact] CHECK CONSTRAINT [FK_Transaction_Fact_ATM_Dim]
GO

ALTER TABLE [dbo].[Transaction_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Fact_Card_Dim] FOREIGN KEY([Card_ID_FK])
REFERENCES [dbo].[Card_Dim] ([Card_ID_SK])
GO

ALTER TABLE [dbo].[Transaction_Fact] CHECK CONSTRAINT [FK_Transaction_Fact_Card_Dim]
GO

ALTER TABLE [dbo].[Transaction_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Fact_DimDate] FOREIGN KEY([Date_ID_FK])
REFERENCES [dbo].[DimDate] ([DateSK])
GO

ALTER TABLE [dbo].[Transaction_Fact] CHECK CONSTRAINT [FK_Transaction_Fact_DimDate]
GO

ALTER TABLE [dbo].[Transaction_Fact]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Fact_DimTime] FOREIGN KEY([Time_ID_FK])
REFERENCES [dbo].[DimTime] ([TimeSK])
GO

ALTER TABLE [dbo].[Transaction_Fact] CHECK CONSTRAINT [FK_Transaction_Fact_DimTime]
GO

