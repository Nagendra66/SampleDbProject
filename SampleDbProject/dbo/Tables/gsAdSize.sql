

CREATE TABLE [dbo].[gsAdSize](
	[gsAdSizeID] [int] IDENTITY(1,1) NOT NULL,
	[AdSizeName] [varchar](50) NULL,
	[AdSizeActual] [float] NULL,
	[Cols] [decimal](18, 3) NULL,
	[Inches] [decimal](18, 3) NULL,
	[SortOrder] [int] NULL,
	[RateCardID] [int] NULL,
	[SubProductTypeID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[TempColumn] [int] NULL,
 CONSTRAINT [PK_gsAdSize] PRIMARY KEY CLUSTERED 
(
	[gsAdSizeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[gsAdSize] ADD  CONSTRAINT [DF_gsAdSize_AdSizeActual]  DEFAULT ((0)) FOR [AdSizeActual]
GO

ALTER TABLE [dbo].[gsAdSize] ADD  CONSTRAINT [DF_gsAdSize_Columns]  DEFAULT ((0)) FOR [Cols]
GO

ALTER TABLE [dbo].[gsAdSize] ADD  CONSTRAINT [DF_gsAdSize_Inches]  DEFAULT ((0)) FOR [Inches]
GO

ALTER TABLE [dbo].[gsAdSize] ADD  CONSTRAINT [DF__gsadsize__RateCa__6B99EBCE]  DEFAULT ((-1)) FOR [RateCardID]
GO


