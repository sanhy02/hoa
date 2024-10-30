CREATE DATABASE HoaTuoiDB
GO
USE [HoaTuoiDB]
GO
/****** Object:  Table [dbo].[Hoa]    Script Date: 9/29/2023 8:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa](
	[MaHoa] [int] IDENTITY(1,1) NOT NULL,
	[TenHoa] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[Hinh] [varchar](50) NOT NULL,
	[MaLoai] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_Hoa] PRIMARY KEY CLUSTERED 
(
	[MaHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 9/29/2023 8:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hoa] ON 

INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (1, N'Pink Lyly ', 350000, N'1.png', 1, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (2, N'Christmas Plant', 300000, N'hoagio001.png', 2, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (3, N'Everlasting ', 350000, N'2.png', 1, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (4, N'Chung vui', 350000, N'3.png', 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (5, N'Chia sẽ', 259000, N'4.png', 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (6, N'Mặt trời bé con', 249000, N'5.png', 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (7, N'Ánh vàng', 200000, N'6.png', 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (8, N'I miss you', 249000, N'7.png', 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (9, N'Ngày ấy', 279000, N'hoagio002.png', 2, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (10, N'Hồng thắm', 179000, N'hoagio003.png', 2, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (11, N'Yêu kiều', 300000, N'hoagio004.png', 2, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (12, N'Rộn rã', 400000, N'hoagio005.png', 2, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (13, N'Spring Tulip III', 499000, N'binh001.png', 3, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (14, N'Dân giã', 190000, N'vp001.png', 4, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [TenHoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (15, N'Hoa cưới', 233000, N'hc001.png', 6, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Hoa] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (1, N'Hoa tươi bó')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (2, N'Hoa tươi giỏ')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (3, N'Hoa tươi bình')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (4, N'Hoa văn phòng')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (5, N'Hoa chúc mừng')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (6, N'Hoa cưới')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
ALTER TABLE [dbo].[Hoa]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_DanhMuc] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[Hoa] CHECK CONSTRAINT [FK_Hoa_DanhMuc]
GO