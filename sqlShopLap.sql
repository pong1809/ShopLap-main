USE [shopLaptop]
GO
/****** Object:  Table [dbo].[account]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK__account__3213E83F66F5B138] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[ida] [int] NULL,
	[username] [varchar](50) NULL,
	[image] [nvarchar](max) NOT NULL,
	[pname] [nvarchar](max) NOT NULL,
	[amount] [int] NOT NULL,
	[total] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](max) NOT NULL,
	[isCate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[info_account]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info_account](
	[ida] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[hoten] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[diachi] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NULL,
	[ghichu] [nvarchar](max) NULL,
	[res] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[info_laptop]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info_laptop](
	[pid] [int] NOT NULL,
	[tenmay] [nvarchar](max) NULL,
	[ocung] [nvarchar](max) NULL,
	[cpu] [nvarchar](max) NULL,
	[ram] [nvarchar](max) NULL,
	[cardDH] [nvarchar](max) NULL,
	[manhinh] [nvarchar](max) NULL,
	[trongluong] [nvarchar](max) NULL,
	[hdh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[info_phukien]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[info_phukien](
	[pid] [int] NOT NULL,
	[xuatxu] [nvarchar](max) NULL,
	[tenpk] [nvarchar](max) NULL,
	[loai] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[pname] [nvarchar](max) NOT NULL,
	[price] [money] NOT NULL,
	[slc] [int] NOT NULL,
	[daban] [int] NULL,
	[tittle] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[isDiscount] [int] NOT NULL,
	[discount] [float] NULL,
	[cid] [int] NULL,
	[isCate] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[voucher]    Script Date: 5/12/2022 10:45:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[voucher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vname] [nvarchar](max) NULL,
	[giatri] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account] ON 
GO
INSERT [dbo].[account] ([id], [username], [password], [isAdmin]) VALUES (1, N'admin', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1)
GO
INSERT [dbo].[account] ([id], [username], [password], [isAdmin]) VALUES (2, N'cuong', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', NULL)
GO
INSERT [dbo].[account] ([id], [username], [password], [isAdmin]) VALUES (3, N'emcuong', N'6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', NULL)
GO
SET IDENTITY_INSERT [dbo].[account] OFF
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (4, N'cuong', N'images/demo.webp', N'Macbook', 1, N'20.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (4, N'cuong', N'images/demo.webp', N'Mac', 1, N'7.900.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (4, N'cuong', N'images/demo.webp', N'Mac', 1, N'7.900.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (6, N'cuong', N'images/demo.webp', N'Mac', 1, N'7.900.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (6, N'cuong', N'images/demo.webp', N'Lenovo Legion 5', 1, N'15.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (7, N'emcuong', N'images/demo.webp', N'Mac', 1, N'7.900.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (7, N'emcuong', N'images/demo.webp', N'Tai nghe nè 1 dây', 1, N'35.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (7, N'emcuong', N'images/demo.webp', N'Lenovo Legion 5', 1, N'48.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (7, N'emcuong', N'images/demo.webp', N'Tai nghe nè 1 dây', 1, N'35.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (8, N'cuong', N'images/demo.webp', N'Lenovo Legion 5', 1, N'15.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (9, N'cuong', N'images/demo.webp', N'Lenovo Ne', 1, N'10.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (9, N'cuong', N'images/demo.webp', N'Chuột 1 dây', 1, N'35.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (10, N'emcuong', N'images/demo.webp', N'Lenovo Legion 5', 2, N'30.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (10, N'emcuong', N'images/demo.webp', N'Lenovo Legion 5', 3, N'24.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (11, N'emcuong', N'images/demo.webp', N'Lenovo 6', 2, N'20.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (11, N'emcuong', N'images/demo.webp', N'Lenovo Legion 5', 2, N'16.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (12, N'emcuong', N'images/demo.webp', N'Lenovo 6', 1, N'10.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (12, N'emcuong', N'images/demo.webp', N'Chuột không dây', 1, N'40.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (13, N'emcuong', N'images/demo.webp', N'Lenovo 6', 1, N'10.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (13, N'emcuong', N'images/demo.webp', N'ThinkPad ', 1, N'16.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (14, N'cuong', N'images/demo.webp', N'Lenovo 12', 1, N'18.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (14, N'cuong', N'images/demo.webp', N'Tai nghe dây dây', 1, N'40.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (15, N'cuong', N'images/demo.webp', N'Lenovo 1', 2, N'20.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (6, N'cuong', N'images/demo.webp', N'Chuột có dây', 1, N'35.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (8, N'cuong', N'images/demo.webp', N'Mac', 1, N'7.900.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (7, N'emcuong', N'images/demo.webp', N'Lenovo Legion 5', 1, N'48.000.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (7, N'emcuong', N'images/demo.webp', N'Mac', 1, N'7.900.000')
GO
INSERT [dbo].[cart] ([ida], [username], [image], [pname], [amount], [total]) VALUES (8, N'cuong', N'images/demo.webp', N'Chuột không dây', 1, N'40.000')
GO
SET IDENTITY_INSERT [dbo].[category] ON 
GO
INSERT [dbo].[category] ([cid], [cname], [isCate]) VALUES (1, N'Lenovo', 1)
GO
INSERT [dbo].[category] ([cid], [cname], [isCate]) VALUES (2, N'Macbook', 1)
GO
INSERT [dbo].[category] ([cid], [cname], [isCate]) VALUES (4, N'Chuột', 0)
GO
INSERT [dbo].[category] ([cid], [cname], [isCate]) VALUES (5, N'Tai nghe', 0)
GO
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[info_account] ON 
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (4, N'cuong', N'Cuong', N'45543345', N'13131', N'', N'qweqweqw', N'35.800.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (6, N'cuong', N'Phung Cuong', N'12313', N'23123123', N'', N'13213123', N'22.935.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (7, N'emcuong', N'Phung Cuong', N'45543345', N'13131', N'', N'313213', N'55.935.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (8, N'cuong', N'Phung Cuong', N'12321', N'qưeqewqe', N'', N'qeqưeqưe', N'22.940.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (9, N'cuong', N'Phung Cuong Ne', N'45543345', N'12312312', N'', N'123123', N'10.035.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (10, N'emcuong', N'Phung Cuong', N'45543345', N'qưeqewqe', N'', N'qeqweqweqwe', N'54.000.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (11, N'emcuong', N'Phung Cuong', N'45543345', N'23123123', N'', N'qweqweqwe', N'36.000.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (12, N'emcuong', N'Phung Cuong', N'2342423', N'rwerwer', N'', N'qưeqưeqưe', N'10.040.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (13, N'emcuong', N'Phung Cuong', N'45543345', N'qưeqewqe', N'', N'qưqưeqưe', N'26.000.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (14, N'cuong', N'Phung Cuong', N'45543345', N'qưeqewqe', N'', N'sadasdasd', N'18.040.000')
GO
INSERT [dbo].[info_account] ([ida], [username], [hoten], [phone], [diachi], [email], [ghichu], [res]) VALUES (15, N'cuong', N'Phung Cuong', N'45543345', N'23123123', N'', N'wqeqweqwe', N'20.000.000')
GO
SET IDENTITY_INSERT [dbo].[info_account] OFF
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (1, N'qwe', N'qwe', N'qwe', N'qwe', N'qwe', N'qwe', N'qwe', N'qwe')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (2, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (3, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (4, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (5, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (6, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (7, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (8, N'Lenovo thoi', N'hhd', N'Không có', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (14, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'full HD', N'2kg', N'Window')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (15, N'Lenovo thoi', N'hhd', N'asd', N'asd', N'asd', N'asd', N'asd', N'asd')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (16, N'Laptop Lenovo', N'hhd', N'Ko có CPU', N'16GB', N'Không card', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (17, N'Laptop Lenovo', N'hhd', N'Ko có CPU', N'16GB', N'nividia', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (18, N'Laptop Lenovo', N'hhd', N'Ko có CPU', N'16GB', N'nividia', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (19, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'16GB', N'nividia', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (20, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'16GB', N'nividia', N'full', N'2kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (21, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'full', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (22, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (23, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (24, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (25, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (26, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (27, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (28, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (29, N'Laptop Lenovo', N'ssd', N'asd', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (30, N'Laptop Lenovo', N'ssd', N'asd', N'8GB', N'nividia', N'hd', N'1kg', N'Window 11')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (31, N'Laptop Lenovo', N'ssd', N'CPU nè', N'8GB', N'nividia', N'full hd', N'1.5kg', N'win 10')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (55, N'Laptop Lenovo', N'ssd', N'Ko có CPU', N'8GB', N'nividia', N'full HD', N'2kg', N'Window')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (72, N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', N'asd')
GO
INSERT [dbo].[info_laptop] ([pid], [tenmay], [ocung], [cpu], [ram], [cardDH], [manhinh], [trongluong], [hdh]) VALUES (73, N'Lenovo 5 ', N'asd', N'asd', N'asd', N'asd', N'asd', N'asd', N'asd')
GO
INSERT [dbo].[info_phukien] ([pid], [xuatxu], [tenpk], [loai]) VALUES (32, N'ok', N'ok', N'ok')
GO
INSERT [dbo].[info_phukien] ([pid], [xuatxu], [tenpk], [loai]) VALUES (33, N'Trung Quoc', N'Chuột China', N'có dây')
GO
INSERT [dbo].[info_phukien] ([pid], [xuatxu], [tenpk], [loai]) VALUES (34, N'Trung Quoc', N'Chuột China', N'có dây')
GO
INSERT [dbo].[info_phukien] ([pid], [xuatxu], [tenpk], [loai]) VALUES (35, N'Trung Quoc', N'Chuột China', N'có dây')
GO
INSERT [dbo].[info_phukien] ([pid], [xuatxu], [tenpk], [loai]) VALUES (36, N'Trung Quoc', N'Chuột China', N'có dây')
GO
INSERT [dbo].[info_phukien] ([pid], [xuatxu], [tenpk], [loai]) VALUES (40, N'Hà Nội', N'Chuột dùng cho máy tính', N'Chuột có dâu')
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (1, N'images/demo.webp', N'Lenovo 1', 10000000.0000, 10, 9, N'Laptop hãng Lenovo', N'qwe', 0, 0, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (2, N'images/demo.webp', N'Lenovo 2', 10000000.0000, 5, 8, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 20, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (3, N'images/mac.png', N'Macbook 1', 10000000.0000, 10, 0, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 1, 21, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (4, N'images/demo.webp', N'Lenovo 3', 10000000.0000, 8, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (5, N'images/demo.webp', N'Lenovo 4', 10000000.0000, 9, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (6, N'images/mac.png', N'Macbook 2', 10000000.0000, 0, 3, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (7, N'images/demo.webp', N'Lenovo 5', 30000000.0000, 6, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (8, N'images/demo.webp', N'Lenovo 6', 60000000.0000, 8, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 20, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (14, N'images/demo.webp', N'Lenovo 7', 12000000.0000, 10, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 20, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (15, N'images/demo.webp', N'Lenovo 8', 3000000.0000, 10, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (16, N'images/mac.png', N'Macbook 3', 50000000.0000, 0, 3, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (17, N'images/demo.webp', N'Lenovo 9', 11000000.0000, 10, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (18, N'images/demo.webp', N'Lenovo 10', 10000000.0000, 0, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (19, N'images/mac.png', N'Macbook 4', 10000000.0000, 10, 3, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (20, N'images/demo.webp', N'Lenovo 11', 10000000.0000, 0, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 20, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (21, N'images/demo.webp', N'Lenovo 12', 10000000.0000, 4, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (22, N'images/mac.png', N'Macbook 5', 10000000.0000, 10, 3, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 1, 20, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (23, N'images/demo.webp', N'Lenovo 13 ', 10000000.0000, 0, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (24, N'images/mac.png', N'Macbook 6', 10000000.0000, 8, 3, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (25, N'images/demo.webp', N'Lenovo 14', 10000000.0000, 10, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (26, N'images/demo.webp', N'Lenovo 15', 10000000.0000, 9, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (27, N'images/demo.webp', N'Lenovo 16', 12000000.0000, 10, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (28, N'images/mac.png', N'Macbook 7', 10000000.0000, 10, 3, N'Laptop hãng Macbook', N'Máy gaming chỉ dùng để chơi game', 1, 20, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (29, N'images/demo.webp', N'Lenovo 17', 10000000.0000, 8, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 0, NULL, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (30, N'images/demo.webp', N'Lenovo 18', 10000000.0000, 10, 3, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 20, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (31, N'images/demo.webp', N'Lenovo 19', 10000000.0000, 8, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (32, N'images/demo.webp', N'Chuột 1', 40000.0000, 2, 3, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (33, N'images/demo.webp', N'Chuột 2', 50000.0000, 8, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 1, 30, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (34, N'images/demo.webp', N'Chuột 3', 40000.0000, 8, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (35, N'images/demo.webp', N'Chuột 4', 50000.0000, 5, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 1, 30, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (36, N'images/demo.webp', N'Tai nghe 1', 40000.0000, 2, 3, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 5, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (37, N'images/demo.webp', N'Tai nghe 2', 50000.0000, 7, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 1, 30, 5, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (38, N'images/demo.webp', N'Tai nghe 3', 40000.0000, 0, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 5, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (40, N'images/demo.webp', N'Chuột 5', 40000.0000, 2, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (42, N'images/demo.webp', N'Chuột 7', 40000.0000, 3, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (43, N'images/demo.webp', N'Chuột8', 40000.0000, 3, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 4, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (45, N'images/demo.webp', N'Tai nghe 5', 40000.0000, 3, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 5, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (47, N'images/demo.webp', N'Tai nghe 6', 40000.0000, 0, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 0, NULL, 5, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (48, N'images/demo.webp', N'Tai nghe 7', 50000.0000, 0, 2, N'Chuột xịn', N'Chuột này không có dây nên không có dây', 1, 30, 5, 0)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (49, N'images/demo.webp', N'Lenovo 21', 10000000.0000, 2, 0, N'Laptop hãng Lenovo', N'Máy gaming chỉ dùng để chơi game', 1, 21, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (55, N'images/mac.png', N'Macbook 9', 20000000.0000, 0, 2, N'Laptop hãng Macbook', N'Macbook này không mua hơi phí', 0, NULL, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (56, N'images/demo.webp', N'Lenovo 22', 20000000.0000, 8, 1, N'Laptop hãng Lenovo', N'khong', 1, 20, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (57, N'images/mac.png', N'Macbook 10', 20000000.0000, 9, NULL, N'Laptop hãng Macbook', N'weqweqweqwe', 0, 0, 2, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (72, N'images/demo.webp', N'Lenovo Ne', 20000000.0000, 5, 1, N'Laptop hãng Lenovo', N'qwe', 1, 10, 1, 1)
GO
INSERT [dbo].[product] ([pid], [image], [pname], [price], [slc], [daban], [tittle], [description], [isDiscount], [discount], [cid], [isCate]) VALUES (73, N'images/demo.webp', N'Lenovo 34', 10000000.0000, 9, NULL, N'Laptop hãng Lenovo', N'qưeqưe', 0, 0, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([ida])
REFERENCES [dbo].[info_account] ([ida])
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[info_account]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[account] ([username])
GO
ALTER TABLE [dbo].[info_laptop]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([pid])
GO
ALTER TABLE [dbo].[info_phukien]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[product] ([pid])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[category] ([cid])
GO
ALTER TABLE [shopLaptop].[dbo].[cart]
ADD [isApproved] BIT;
ALTER TABLE [shopLaptop].[dbo].[cart]
ADD [orderDate] DATETIME;