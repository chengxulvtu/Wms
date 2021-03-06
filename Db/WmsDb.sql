SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Company_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[Coded] [varchar](20) NULL,
	[Named] [nvarchar](50) NULL,
	[ShortName] [nvarchar](50) NULL,
	[InCompany] [nvarchar](50) NULL,
	[ContactMan] [nvarchar](20) NULL,
	[ContactPhone] [varchar](20) NULL,
	[TelPhone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[PostCode] [varchar](50) NULL,
	[Address] [nvarchar](256) NULL,
	[CompanyAbout] [nvarchar](max) NULL,
	[CompanyType] [nvarchar](20) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Company', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Customer](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Customer_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[Coded] [varchar](30) NULL,
	[Named] [nvarchar](50) NULL,
	[ShortName] [nvarchar](20) NULL,
	[ContactMan] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[TelPhone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Postcode] [varchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Customer', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeatureUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FeatureUser](
	[UserId] [uniqueidentifier] NOT NULL,
	[FeatureId] [uniqueidentifier] NOT NULL,
	[TypeName] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_FeatureUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[FeatureId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'FeatureUser', @level2type=N'COLUMN', @level2name=N'UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'FeatureUser', @level2type=N'COLUMN', @level2name=N'FeatureId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogisticsDistribution]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LogisticsDistribution](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_LogisticsDistribution_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](20) NULL,
	[RefOrders] [varchar](1000) NULL,
	[CompanyId] [uniqueidentifier] NULL,
	[Vehicles] [varchar](1000) NULL,
	[TotalPackage] [float] NULL,
	[TotalVolume] [float] NULL,
	[TotalWeight] [float] NULL,
	[ToAddress] [nvarchar](100) NULL,
	[TypeName] [nvarchar](20) NULL,
	[Remark] [nvarchar](300) NULL,
	[DeliveryVehicleID] [nvarchar](20) NULL,
	[DriverName] [nvarchar](30) NULL,
	[DriverPhone] [varchar](20) NULL,
	[DeliveryStartTime] [datetime] NULL,
	[CauseAbout] [nvarchar](300) NULL,
	[DeliveryStatus] [nvarchar](20) NULL,
	[Status] [nvarchar](20) NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_LogisticsDistribution] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'LogisticsDistribution', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Menus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Menus](
	[ApplicationId] [uniqueidentifier] NULL,
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Menus_Id]  DEFAULT (newid()),
	[ParentId] [uniqueidentifier] NULL,
	[IdStep] [varchar](1000) NULL,
	[Title] [nvarchar](20) NULL,
	[Url] [varchar](256) NULL,
	[Descr] [nvarchar](50) NULL,
	[AllowRoles] [nvarchar](1000) NULL,
	[DenyUsers] [nvarchar](1000) NULL,
	[Sort] [int] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Menus', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MesCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MesCategory](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_MesCategory_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](100) NULL,
	[Step] [varchar](1000) NULL,
	[WorkStation] [nvarchar](256) NULL,
	[StandardHours] [float] NULL,
	[Barcode] [varchar](36) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MesCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'MesCategory', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MesOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MesOrder](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_MesOrder_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OBarcode] [varchar](36) NULL,
	[PBarcode] [varchar](36) NULL,
	[PdBarcode] [varchar](36) NULL,
	[PtBarcode] [varchar](max) NULL,
	[Qty] [float] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MesOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'MesOrder', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MesProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MesProduct](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_MesProduct_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](100) NULL,
	[UseQty] [float] NULL,
	[Barcode] [varchar](36) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_MesProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'MesProduct', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderMap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderMap](
	[UserId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](20) NULL,
	[Lnglat] [varchar](100) NULL,
	[IP] [varchar](20) NULL,
	[ProvinceCity] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Platform] [varchar](10) NULL,
	[LastUpdatedDate] [datetime] NULL
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderMap', @level2type=N'COLUMN', @level2name=N'OrderCode'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderPicked]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderPicked](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OrderPicked_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](20) NULL,
	[TotalStayQty] [float] NULL,
	[TotalQty] [float] NULL,
	[Status] [tinyint] NULL,
	[Remark] [nvarchar](100) NULL,
	[Sort] [int] NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderPicked] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderPicked', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderPickProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderPickProduct](
	[OrderPickId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[StayQty] [float] NULL,
	[Qty] [float] NULL,
	[StockLocations] [varchar](max) NULL,
	[Status] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderPickProduct] PRIMARY KEY CLUSTERED 
(
	[OrderPickId] ASC,
	[OrderId] ASC,
	[ProductId] ASC,
	[CustomerId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderPickProduct', @level2type=N'COLUMN', @level2name=N'OrderPickId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderPickProduct', @level2type=N'COLUMN', @level2name=N'OrderId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderPickProduct', @level2type=N'COLUMN', @level2name=N'ProductId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderPickProduct', @level2type=N'COLUMN', @level2name=N'CustomerId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderRandom]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderRandom](
	[OrderCode] [varchar](20) NOT NULL,
	[Prefix] [varchar](10) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderRandom] PRIMARY KEY CLUSTERED 
(
	[OrderCode] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderRandom', @level2type=N'COLUMN', @level2name=N'OrderCode'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderReceipt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderReceipt](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OrderReceipt_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](20) NULL,
	[OrderType] [int] NULL,
	[PreOrderCode] [varchar](20) NULL,
	[PurchaseOrderCode] [varchar](20) NULL,
	[TypeName] [nvarchar](20) NULL,
	[SettlementDate] [datetime] NULL,
	[RecordDate] [datetime] NULL,
	[IsStopNext] [bit] NULL,
	[Status] [tinyint] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderReceipt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderReceipt', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderReceiptAttr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderReceiptAttr](
	[OrderId] [uniqueidentifier] NOT NULL,
	[LastTakeDate] [datetime] NULL,
	[ExpectTakeDate] [datetime] NULL,
	[SendDate] [datetime] NULL,
	[PlanSendDate] [datetime] NULL,
	[RMA] [varchar](20) NULL,
	[ExpectVolume] [float] NULL,
	[GW] [float] NULL,
	[CustomAttr] [nvarchar](3000) NULL,
 CONSTRAINT [PK_OrderReceiptAttr] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderReceiptAttr', @level2type=N'COLUMN', @level2name=N'OrderId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderReceiptProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderReceiptProduct](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OrderReceiptProduct_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OrderId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[PackageId] [uniqueidentifier] NULL,
	[Unit] [nvarchar](10) NULL,
	[ExpectedQty] [float] NULL,
	[ReceiptQty] [float] NULL,
	[RecordDate] [datetime] NULL,
	[PreOrderCode] [varchar](20) NULL,
	[PurchaseOrderCode] [varchar](20) NULL,
	[Status] [nvarchar](20) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderReceiptProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderReceiptProduct', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderReceiptProductAttr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderReceiptProductAttr](
	[OrderProductId] [uniqueidentifier] NOT NULL,
	[PackageName] [nvarchar](20) NULL,
	[SupplierName] [nvarchar](20) NULL,
	[ProduceDate] [varchar](20) NULL,
	[QualityStatus] [nvarchar](20) NULL,
	[PurchaseOrderCode] [varchar](20) NULL,
 CONSTRAINT [PK_OrderReceiptProductAttr] PRIMARY KEY CLUSTERED 
(
	[OrderProductId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderReceiptProductAttr', @level2type=N'COLUMN', @level2name=N'OrderProductId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderReceiptProductQuality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderReceiptProductQuality](
	[OrderProductId] [uniqueidentifier] NOT NULL,
	[CheckQuantity] [float] NOT NULL,
	[RejectQuantity] [float] NULL,
	[QCStatus] [nvarchar](20) NULL,
	[IsQCNeed] [bit] NULL,
 CONSTRAINT [PK_OrderReceiptProductQuality] PRIMARY KEY CLUSTERED 
(
	[OrderProductId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderReceiptProductQuality', @level2type=N'COLUMN', @level2name=N'OrderProductId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderReceiptRecord]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderReceiptRecord](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OrderReceiptRecord_Id]  DEFAULT (newid()),
	[OrderId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[PackageId] [uniqueidentifier] NULL,
	[StockLocationId] [uniqueidentifier] NULL,
	[Unit] [nvarchar](10) NULL,
	[Qty] [float] NULL,
	[LPN] [varchar](36) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderReceiptRecord] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderReceiptRecord', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderSend]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderSend](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_OrderSend_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](20) NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[StayQty] [float] NULL,
	[Qty] [float] NULL,
	[Remark] [nvarchar](100) NULL,
	[Status] [tinyint] NULL,
	[Sort] [int] NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderSend] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderSend', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderSendProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderSendProduct](
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[Qty] [float] NULL,
	[PickQty] [float] NULL,
	[Status] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_OrderSendProduct] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC,
	[CustomerId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderSendProduct', @level2type=N'COLUMN', @level2name=N'OrderId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderSendProduct', @level2type=N'COLUMN', @level2name=N'ProductId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'OrderSendProduct', @level2type=N'COLUMN', @level2name=N'CustomerId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Package]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Package](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Package_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[CustomerId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[PackageCode] [varchar](36) NULL,
	[TotalPiece] [float] NULL,
	[TotalInsidePackage] [float] NULL,
	[TotalBox] [float] NULL,
	[TotalTray] [float] NULL,
	[UnitXml] [nvarchar](3000) NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Package', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pandian]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pandian](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Pandian_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](36) NULL,
	[Named] [nvarchar](256) NULL,
	[AllowUsers] [varchar](1000) NULL,
	[Remark] [nvarchar](300) NULL,
	[StockStartDate] [datetime] NULL,
	[StockEndDate] [datetime] NULL,
	[Customers] [varchar](1000) NULL,
	[Zones] [varchar](1000) NULL,
	[StockLocations] [varchar](max) NULL,
	[TotalQty] [float] NULL,
	[Status] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Pandian] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Pandian', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PandianProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PandianProduct](
	[PandianId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Zones] [varchar](1000) NULL,
	[StockLocations] [varchar](max) NULL,
	[StayQty] [float] NULL,
	[UpdatedZones] [varchar](1000) NULL,
	[UpdatedStockLocations] [varchar](max) NULL,
	[Qty] [float] NULL,
	[FailQty] [float] NULL,
	[Status] [nvarchar](20) NULL,
	[Remark] [nvarchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_PandianProduct] PRIMARY KEY CLUSTERED 
(
	[PandianId] ASC,
	[ProductId] ASC,
	[CustomerId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PandianProduct', @level2type=N'COLUMN', @level2name=N'PandianId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PandianProduct', @level2type=N'COLUMN', @level2name=N'ProductId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'PandianProduct', @level2type=N'COLUMN', @level2name=N'CustomerId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Product_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[CategoryId] [uniqueidentifier] NULL,
	[SupplierId] [uniqueidentifier] NULL,
	[ProductCode] [varchar](30) NULL,
	[ProductName] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Specs] [nvarchar](256) NULL,
	[Price] [decimal](18, 2) NULL,
	[MaterialQuality] [nvarchar](100) NULL,
	[Weight] [float] NULL,
	[MaxStore] [int] NULL,
	[MinStore] [int] NULL,
	[OutPackVolume] [float] NULL,
	[OutPackWeight] [float] NULL,
	[InPackVolume] [float] NULL,
	[InPackWeight] [float] NULL,
	[OutPackQty] [int] NULL,
	[InPackQty] [int] NULL,
	[ShelfLife] [int] NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Product', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductDateMake]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductDateMake](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ProductDateMake_Id]  DEFAULT (newid()),
	[ProductId] [uniqueidentifier] NOT NULL,
	[TakeQty] [float] NULL,
	[SendQty] [float] NULL,
	[RecordDate] [datetime] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ProductDateMake] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ProductDateMake', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RFID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RFID](
	[TID] [varchar](50) NOT NULL,
	[EPC] [varchar](50) NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_RFID] PRIMARY KEY CLUSTERED 
(
	[TID] ASC,
	[EPC] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RFID', @level2type=N'COLUMN', @level2name=N'TID'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RFID', @level2type=N'COLUMN', @level2name=N'EPC'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RoleMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RoleMenu](
	[RoleId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[OperationAccess] [varchar](300) NULL,
 CONSTRAINT [PK_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[MenuId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RoleMenu', @level2type=N'COLUMN', @level2name=N'RoleId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'RoleMenu', @level2type=N'COLUMN', @level2name=N'MenuId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShelfMission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShelfMission](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_ShelfMission_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[OrderCode] [varchar](20) NULL,
	[TotalStayQty] [float] NULL,
	[TotalQty] [float] NULL,
	[Status] [nvarchar](20) NULL,
	[Remark] [nvarchar](100) NULL,
	[Sort] [int] NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ShelfMission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ShelfMission', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShelfMissionProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShelfMissionProduct](
	[ShelfMissionId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[StayQty] [float] NULL,
	[Qty] [float] NULL,
	[StockLocations] [varchar](max) NOT NULL,
	[Status] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ShelfMissionProduct] PRIMARY KEY CLUSTERED 
(
	[ShelfMissionId] ASC,
	[OrderId] ASC,
	[ProductId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ShelfMissionProduct', @level2type=N'COLUMN', @level2name=N'ShelfMissionId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ShelfMissionProduct', @level2type=N'COLUMN', @level2name=N'OrderId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'ShelfMissionProduct', @level2type=N'COLUMN', @level2name=N'ProductId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SitePicture]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SitePicture](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SitePicture_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[FileName] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[FileExtension] [varchar](50) NULL,
	[FileDirectory] [nvarchar](100) NULL,
	[RandomFolder] [varchar](20) NULL,
	[FunType] [varchar](50) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SitePicture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'SitePicture', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockLocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StockLocation](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_StockLocation_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ZoneId] [uniqueidentifier] NULL,
	[Code] [varchar](30) NULL,
	[Named] [nvarchar](50) NULL,
	[Width] [float] NULL,
	[Wide] [float] NULL,
	[High] [float] NULL,
	[Volume] [float] NULL,
	[Cubage] [float] NULL,
	[Row] [float] NULL,
	[Layer] [float] NULL,
	[Col] [float] NULL,
	[Passway] [float] NULL,
	[Xc] [float] NULL,
	[Yc] [float] NULL,
	[Zc] [float] NULL,
	[Orientation] [float] NULL,
	[StockLocationType] [nvarchar](20) NULL,
	[StackLimit] [float] NULL,
	[GroundTrayQty] [float] NULL,
	[StockLocationDeal] [nvarchar](20) NULL,
	[CarryWeight] [float] NULL,
	[UseStatus] [nvarchar](20) NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_StockLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StockLocation', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockLocationCtr]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StockLocationCtr](
	[StockLocationId] [uniqueidentifier] NOT NULL,
	[RouteSeq] [nvarchar](256) NULL,
	[IsMixPlace] [bit] NULL,
	[IsBatchNum] [bit] NULL,
	[IsLoseId] [bit] NULL,
	[Status] [nvarchar](20) NULL,
	[Warehouse] [nvarchar](50) NULL,
	[LevelNum] [float] NULL,
	[CtrType] [nvarchar](20) NULL,
	[ABC] [char](1) NULL,
	[InsertTaskSeq] [float] NULL,
	[PickArea] [nvarchar](20) NULL,
	[PickMethod] [nvarchar](50) NULL,
	[InventoryGroupId] [float] NULL,
 CONSTRAINT [PK_StockLocationCtr] PRIMARY KEY CLUSTERED 
(
	[StockLocationId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StockLocationCtr', @level2type=N'COLUMN', @level2name=N'StockLocationId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockLocationProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StockLocationProduct](
	[StockLocationId] [uniqueidentifier] NOT NULL,
	[ProductAttr] [varchar](max) NULL,
	[MaxVolume] [float] NULL,
 CONSTRAINT [PK_StockLocationProduct] PRIMARY KEY CLUSTERED 
(
	[StockLocationId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StockLocationProduct', @level2type=N'COLUMN', @level2name=N'StockLocationId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StockProduct](
	[ProductId] [uniqueidentifier] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[Qty] [float] NULL,
	[UnQty] [float] NULL,
	[FreezeQty] [float] NULL,
	[StepCode] [varchar](50) NULL,
	[LastStepName] [nvarchar](20) NULL,
	[Status] [nvarchar](20) NULL,
	[StockLocations] [varchar](max) NULL,
	[WarnMsg] [nvarchar](256) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_StockProduct_1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CustomerId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StockProduct', @level2type=N'COLUMN', @level2name=N'ProductId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StockProduct', @level2type=N'COLUMN', @level2name=N'CustomerId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockWarning]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StockWarning](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_StockWarning_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ZoneId] [uniqueidentifier] NULL,
	[StockLocationId] [uniqueidentifier] NULL,
	[Coded] [varchar](36) NULL,
	[ZoneProperty] [nvarchar](20) NULL,
	[StockLocationProperty] [nvarchar](20) NULL,
	[StockAmount] [decimal](18, 2) NULL,
	[OverdueDay] [int] NULL,
	[MinQty] [float] NULL,
	[MaxQty] [float] NULL,
	[Remark] [nvarchar](100) NULL,
	[Sort] [int] NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_StockWarning] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'StockWarning', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplier]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Supplier](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Supplier_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[SupplierCode] [varchar](30) NULL,
	[SupplierName] [nvarchar](50) NULL,
	[ShortName] [nvarchar](20) NULL,
	[ContactMan] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[TelPhone] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[Postcode] [varchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Supplier', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysApp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysApp](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SysApp_Id]  DEFAULT (newid()),
	[Coded] [varchar](36) NULL,
	[Named] [nvarchar](50) NULL,
	[ConnString] [varchar](300) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SysApp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'SysApp', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysEnumItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysEnumItem](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SysEnumItem_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[EnumTypeId] [uniqueidentifier] NULL,
	[Coded] [varchar](30) NULL,
	[Named] [nvarchar](50) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SysEnumItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'SysEnumItem', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SysEnumType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SysEnumType](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_SysEnumType_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Coded] [varchar](30) NULL,
	[Named] [nvarchar](30) NULL,
	[Step] [varchar](1000) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SysEnumType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'SysEnumType', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserMenu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserMenu](
	[UserId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[OperationAccess] [varchar](300) NULL,
 CONSTRAINT [PK_UserMenu] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[MenuId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UserMenu', @level2type=N'COLUMN', @level2name=N'UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'UserMenu', @level2type=N'COLUMN', @level2name=N'MenuId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vehicle](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Vehicle_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[VehicleID] [nvarchar](20) NULL,
	[VehicleModel] [nvarchar](100) NULL,
	[Licence] [varchar](20) NULL,
	[LicPic] [uniqueidentifier] NULL,
	[OffenceRecord] [nvarchar](256) NULL,
	[DriverID] [varchar](22) NULL,
	[DriverIDPicture] [uniqueidentifier] NULL,
	[RewardRecord] [nvarchar](256) NULL,
	[Remark] [nvarchar](100) NULL,
	[Sort] [int] NULL,
	[IsDisable] [bit] NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Vehicle', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Zone]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Zone](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Zone_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ZoneCode] [varchar](30) NULL,
	[ZoneName] [nvarchar](50) NULL,
	[Square] [nvarchar](20) NULL,
	[Descr] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Zone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Zone', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AppUser](
	[UserId] [uniqueidentifier] NOT NULL,
	[AppId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUser_1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'AppUser', @level2type=N'COLUMN', @level2name=N'UserId'

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'AppUser', @level2type=N'COLUMN', @level2name=N'AppId'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BarcodeTemplate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BarcodeTemplate](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_BarcodeTemplate_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[Title] [nvarchar](256) NULL,
	[JContent] [nvarchar](max) NULL,
	[IsDefault] [bit] NULL,
	[TypeName] [nvarchar](20) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_BarcodeTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'BarcodeTemplate', @level2type=N'COLUMN', @level2name=N'Id'

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[Id] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Category_Id]  DEFAULT (newid()),
	[UserId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[CategoryCode] [varchar](30) NULL,
	[CategoryName] [nvarchar](30) NULL,
	[Step] [varchar](1000) NULL,
	[Sort] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号ID' ,@level0type=N'SCHEMA', @level0name=N'dbo', @level1type=N'TABLE', @level1name=N'Category', @level2type=N'COLUMN', @level2name=N'Id'

