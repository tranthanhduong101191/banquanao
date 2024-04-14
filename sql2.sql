USE [BanQuanAo1]
GO
/****** Object:  Table [dbo].[ChiTietAnhSanPham]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietAnhSanPham](
	[MaAnhChitiet] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NULL,
	[Anh] [varchar](500) NULL,
 CONSTRAINT [PK_ChiTietAnhSanPham] PRIMARY KEY CLUSTERED 
(
	[MaAnhChitiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaMua] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhap]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhap](
	[MaChiTiet] [int] NOT NULL,
	[MaSanPham] [int] NULL,
	[MaHoaDonNhap] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [float] NULL,
 CONSTRAINT [PK_ChiTietHoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonXuat]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonXuat](
	[MaChiTietHoaDonXuat] [int] NOT NULL,
	[MaHoaDonXuat] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [float] NOT NULL,
	[ChietKhau] [float] NULL,
	[TraLai] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDonXuat] PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDonXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKho]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKho](
	[MaChiTietKho] [int] NOT NULL,
	[MaKho] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[KhayKhe] [nvarchar](1500) NULL,
 CONSTRAINT [PK_ChiTietKho] PRIMARY KEY CLUSTERED 
(
	[MaChiTietKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKhuyenMai]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKhuyenMai](
	[MaChiTietKhuyenMai] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[MaKhuyenMai] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_ChiTietKhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaChiTietKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietKiemKho]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietKiemKho](
	[MaChiTietKiemKho] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaKiemKho] [int] NOT NULL,
	[SoLuongDemDuoc] [int] NULL,
	[SoLuongTinhToan] [int] NULL,
	[SoLuongThayDoi] [int] NULL,
 CONSTRAINT [PK_ChiTietKiemKho] PRIMARY KEY CLUSTERED 
(
	[MaChiTietKiemKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhom]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhom](
	[MaChiTietNhom] [int] IDENTITY(1,1) NOT NULL,
	[MaNhomSanPham] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietNhom] PRIMARY KEY CLUSTERED 
(
	[MaChiTietNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMucCha] [int] NULL,
	[TenDanhMuc] [nvarchar](250) NOT NULL,
	[STT] [int] NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[NgayDat] [datetime] NULL,
	[TrangThaiDonHang] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[MaDonViTinh] [int] IDENTITY(1,1) NOT NULL,
	[TenDonViTinh] [nvarchar](100) NULL,
 CONSTRAINT [PK_DonViTinh] PRIMARY KEY CLUSTERED 
(
	[MaDonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [int] NOT NULL,
	[MaSanPham] [int] NULL,
	[PhanTram] [float] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaSanPham]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaSanPham](
	[MaGiaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[NgayBatDau] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_GiaSanPham_1] PRIMARY KEY CLUSTERED 
(
	[MaGiaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHoaDonNhap] [int] NOT NULL,
	[SoHoaDon] [nchar](50) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[MaNguoiDung] [int] NOT NULL,
	[MaNhaCungCap] [int] NOT NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonXuat]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonXuat](
	[MaHoaDonXuat] [int] NOT NULL,
	[SoHoaDon] [nchar](50) NULL,
	[NgayXuat] [datetime] NULL,
	[MaKhachHang] [int] NULL,
	[MaNguoiDung] [int] NULL,
 CONSTRAINT [PK_HoaDonXuat] PRIMARY KEY CLUSTERED 
(
	[MaHoaDonXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](1500) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kho]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho](
	[MaKho] [int] NOT NULL,
	[TenKho] [nvarchar](250) NOT NULL,
	[DiaChi] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Kho] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKhuyenMai] [int] NOT NULL,
	[TenKhuyenMai] [nvarchar](250) NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiemKho]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiemKho](
	[MaKiemKho] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[ThoiGianBatDau] [datetime] NULL,
	[ThoiGianKetThuc] [datetime] NULL,
	[TrangThaiKho] [int] NULL,
	[MaKho] [int] NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_KiemKho] PRIMARY KEY CLUSTERED 
(
	[MaKiemKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGiaBan]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGiaBan](
	[MaGiaBan] [int] NOT NULL,
	[MaSanPham] [int] NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[Gia] [float] NULL,
 CONSTRAINT [PK_LichSuGiaBan] PRIMARY KEY CLUSTERED 
(
	[MaGiaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMenu] [int] NOT NULL,
	[TenMenu] [nvarchar](250) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] NOT NULL,
	[HoTen] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](1500) NULL,
	[Email] [nvarchar](100) NULL,
	[DienThoai] [char](20) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNhaCungCap] [int] NOT NULL,
	[TenNhaCungCap] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SoDienThoai] [char](20) NULL,
	[Email] [char](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaSanXuat] [nvarchar](250) NOT NULL,
	[MoTa] [ntext] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSanPham]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPham](
	[MaNhomSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenNhom] [nvarchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_NhomSanPham] PRIMARY KEY CLUSTERED 
(
	[MaNhomSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaDanhMuc] [int] NOT NULL,
	[TenSanPham] [nvarchar](250) NOT NULL,
	[MoTaSanPham] [ntext] NOT NULL,
	[AnhDaiDien] [varchar](500) NOT NULL,
	[MaNhaSanXuat] [int] NOT NULL,
	[MaDonViTinh] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[Giatien] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/20/2022 11:17:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] NOT NULL,
	[MaNguoiDung] [int] NULL,
	[TaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](100) NULL,
	[NgayBatDau] [datetime] NULL,
	[NgayKetThuc] [datetime] NULL,
	[TrangThai] [bit] NULL,
	[LoaiQuyet] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (0, 0, 70, 10, 10)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (1, 1, 10, 10, 10)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (2, 3, 10, 10, 10)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (3, 4, 10, 10, 10)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (4, 5, 10, 10, 10)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (5, 6, 71, 4, 250000)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (6, 7, 0, 3, 0)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (7, 7, 0, 2, 0)
INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [GiaMua]) VALUES (8, 7, 70, 1, 26000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (7, 0, N'Áo len', 0, 1)
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [MaDanhMucCha], [TenDanhMuc], [STT], [TrangThai]) VALUES (12, 0, N'Áo khoác', 0, 1)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (0, 526360027, CAST(N'2022-12-16T17:46:20.603' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (1, 1270518065, CAST(N'2022-12-16T18:01:29.697' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (2, 1270518066, CAST(N'2022-12-16T18:10:50.033' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (3, 1270518067, CAST(N'2022-12-16T18:17:16.453' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (4, 1270518068, CAST(N'2022-12-16T18:23:33.557' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (5, 1270518069, CAST(N'2022-12-16T18:29:35.267' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (6, 1270518070, CAST(N'2022-12-16T19:01:39.427' AS DateTime), 1)
INSERT [dbo].[DonHang] ([MaDonHang], [MaKhachHang], [NgayDat], [TrangThaiDonHang]) VALUES (7, 1270518071, CAST(N'2022-12-20T09:39:39.163' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([MaDonViTinh], [TenDonViTinh]) VALUES (1, N'Cái')
INSERT [dbo].[DonViTinh] ([MaDonViTinh], [TenDonViTinh]) VALUES (2, N'Chiếc')
INSERT [dbo].[DonViTinh] ([MaDonViTinh], [TenDonViTinh]) VALUES (3, N'Họp')
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[GiaSanPham] ON 

INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (64, 4, CAST(N'2022-08-10T04:49:58.000' AS DateTime), CAST(N'2023-08-10T04:49:58.000' AS DateTime), 9082)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (65, 5, CAST(N'2022-08-10T04:49:58.000' AS DateTime), CAST(N'2023-08-10T04:49:58.000' AS DateTime), 3489)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (66, 7, CAST(N'2022-08-10T04:49:58.003' AS DateTime), CAST(N'2023-08-10T04:49:58.003' AS DateTime), 1981)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (67, 8, CAST(N'2022-08-10T04:49:58.003' AS DateTime), CAST(N'2023-08-10T04:49:58.003' AS DateTime), 3344)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (68, 10, CAST(N'2022-08-10T04:49:58.003' AS DateTime), CAST(N'2023-08-10T04:49:58.003' AS DateTime), 3911)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (69, 11, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 2733)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (70, 12, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 3714)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (71, 13, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 4774)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (72, 14, CAST(N'2022-08-10T04:49:58.007' AS DateTime), CAST(N'2023-08-10T04:49:58.007' AS DateTime), 8441)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (73, 15, CAST(N'2022-08-10T04:49:58.010' AS DateTime), CAST(N'2023-08-10T04:49:58.010' AS DateTime), 4484)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (74, 16, CAST(N'2022-08-10T04:49:58.010' AS DateTime), CAST(N'2023-08-10T04:49:58.010' AS DateTime), 7493)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (75, 17, CAST(N'2022-08-10T04:49:58.010' AS DateTime), CAST(N'2023-08-10T04:49:58.010' AS DateTime), 5856)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (76, 18, CAST(N'2022-08-10T04:49:58.013' AS DateTime), CAST(N'2023-08-10T04:49:58.013' AS DateTime), 2888)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (77, 19, CAST(N'2022-08-10T04:49:58.013' AS DateTime), CAST(N'2023-08-10T04:49:58.013' AS DateTime), 1744)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (78, 20, CAST(N'2022-08-10T04:49:58.013' AS DateTime), CAST(N'2023-08-10T04:49:58.013' AS DateTime), 1875)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (79, 21, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 8218)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (80, 22, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 2551)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (81, 23, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 8924)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (82, 24, CAST(N'2022-08-10T04:49:58.017' AS DateTime), CAST(N'2023-08-10T04:49:58.017' AS DateTime), 6335)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (83, 25, CAST(N'2022-08-10T04:49:58.020' AS DateTime), CAST(N'2023-08-10T04:49:58.020' AS DateTime), 9820)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (84, 26, CAST(N'2022-08-10T04:49:58.020' AS DateTime), CAST(N'2023-08-10T04:49:58.020' AS DateTime), 9192)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (85, 27, CAST(N'2022-08-10T04:49:58.020' AS DateTime), CAST(N'2023-08-10T04:49:58.020' AS DateTime), 3735)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (86, 28, CAST(N'2022-08-10T04:49:58.023' AS DateTime), CAST(N'2023-08-10T04:49:58.023' AS DateTime), 1316)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (87, 29, CAST(N'2022-08-10T04:49:58.023' AS DateTime), CAST(N'2023-08-10T04:49:58.023' AS DateTime), 3647)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (88, 30, CAST(N'2022-08-10T04:49:58.023' AS DateTime), CAST(N'2023-08-10T04:49:58.023' AS DateTime), 3101)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (89, 31, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 3237)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (90, 32, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 6844)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (91, 33, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 9433)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (92, 34, CAST(N'2022-08-10T04:49:58.027' AS DateTime), CAST(N'2023-08-10T04:49:58.027' AS DateTime), 1728)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (93, 35, CAST(N'2022-08-10T04:49:58.030' AS DateTime), CAST(N'2023-08-10T04:49:58.030' AS DateTime), 7269)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (94, 36, CAST(N'2022-08-10T04:49:58.030' AS DateTime), CAST(N'2023-08-10T04:49:58.030' AS DateTime), 2259)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (95, 37, CAST(N'2022-08-10T04:49:58.030' AS DateTime), CAST(N'2023-08-10T04:49:58.030' AS DateTime), 5530)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (96, 38, CAST(N'2022-08-10T04:49:58.033' AS DateTime), CAST(N'2023-08-10T04:49:58.033' AS DateTime), 3099)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (97, 39, CAST(N'2022-08-10T04:49:58.033' AS DateTime), CAST(N'2023-08-10T04:49:58.033' AS DateTime), 8170)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (98, 40, CAST(N'2022-08-10T04:49:58.033' AS DateTime), CAST(N'2023-08-10T04:49:58.033' AS DateTime), 9834)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (99, 41, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 7092)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (100, 42, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 8950)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (101, 43, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 6091)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (102, 44, CAST(N'2022-08-10T04:49:58.037' AS DateTime), CAST(N'2023-08-10T04:49:58.037' AS DateTime), 2538)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (103, 45, CAST(N'2022-08-10T04:49:58.040' AS DateTime), CAST(N'2023-08-10T04:49:58.040' AS DateTime), 7910)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (104, 46, CAST(N'2022-08-10T04:49:58.040' AS DateTime), CAST(N'2023-08-10T04:49:58.040' AS DateTime), 9743)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (105, 47, CAST(N'2022-08-10T04:49:58.040' AS DateTime), CAST(N'2023-08-10T04:49:58.040' AS DateTime), 4758)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (106, 48, CAST(N'2022-08-10T04:49:58.043' AS DateTime), CAST(N'2023-08-10T04:49:58.043' AS DateTime), 1203)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (107, 49, CAST(N'2022-08-10T04:49:58.043' AS DateTime), CAST(N'2023-08-10T04:49:58.043' AS DateTime), 1124)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (108, 50, CAST(N'2022-08-10T04:49:58.043' AS DateTime), CAST(N'2023-08-10T04:49:58.043' AS DateTime), 2851)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (109, 51, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 3350)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (110, 52, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 7228)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (111, 53, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 7075)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (112, 54, CAST(N'2022-08-10T04:49:58.047' AS DateTime), CAST(N'2023-08-10T04:49:58.047' AS DateTime), 4856)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (113, 55, CAST(N'2022-08-10T04:49:58.050' AS DateTime), CAST(N'2023-08-10T04:49:58.050' AS DateTime), 6415)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (114, 56, CAST(N'2022-08-10T04:49:58.050' AS DateTime), CAST(N'2023-08-10T04:49:58.050' AS DateTime), 1726)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (115, 57, CAST(N'2022-08-10T04:49:58.050' AS DateTime), CAST(N'2023-08-10T04:49:58.050' AS DateTime), 8161)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (116, 58, CAST(N'2022-08-10T04:49:58.053' AS DateTime), CAST(N'2023-08-10T04:49:58.053' AS DateTime), 6634)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (117, 59, CAST(N'2022-08-10T04:49:58.053' AS DateTime), CAST(N'2023-08-10T04:49:58.053' AS DateTime), 1148)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (118, 60, CAST(N'2022-08-10T04:49:58.053' AS DateTime), CAST(N'2023-08-10T04:49:58.053' AS DateTime), 9960)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (119, 61, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 3859)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (120, 62, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 3750)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (121, 63, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 4440)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (122, 64, CAST(N'2022-08-10T04:49:58.057' AS DateTime), CAST(N'2023-08-10T04:49:58.057' AS DateTime), 9543)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (123, 65, CAST(N'2022-08-10T04:49:58.060' AS DateTime), CAST(N'2023-08-10T04:49:58.060' AS DateTime), 8949)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (124, 66, CAST(N'2022-08-10T04:49:58.060' AS DateTime), CAST(N'2023-08-10T04:49:58.060' AS DateTime), 2923)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (125, 67, CAST(N'2022-08-10T04:49:58.060' AS DateTime), CAST(N'2023-08-10T04:49:58.060' AS DateTime), 2628)
INSERT [dbo].[GiaSanPham] ([MaGiaSanPham], [MaSanPham], [NgayBatDau], [NgayKetThuc], [Gia]) VALUES (126, 68, CAST(N'2022-08-10T04:49:58.063' AS DateTime), CAST(N'2023-08-10T04:49:58.063' AS DateTime), 9995)
SET IDENTITY_INSERT [dbo].[GiaSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (1270518069, N'a', N'a', N'1331', N'a')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (1270518070, N'aaaaaaa', N'adadad', N'1313131113', N'adadad')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChi], [SoDienThoai], [Email]) VALUES (1270518071, N'Dương', N'Hưng Yên', N'1313131333', N'a@dabcd')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [HoTen], [DiaChi], [Email], [DienThoai], [TrangThai]) VALUES (1, N'Tran Thanh Dương', N'Hưng YÊN', N'td@gmail', N'03131313            ', 1)
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [MoTa]) VALUES (1, N'Nhà sản xuất 1', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [MoTa]) VALUES (2, N'Nhà sản xuất 2', NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[NhomSanPham] ON 

INSERT [dbo].[NhomSanPham] ([MaNhomSanPham], [TenNhom], [TrangThai]) VALUES (1, N'PC VĂN PHÒNG, AIO, MINI PC', 1)
INSERT [dbo].[NhomSanPham] ([MaNhomSanPham], [TenNhom], [TrangThai]) VALUES (2, N'LAPTOP, MÁY TÍNH XÁCH TAY', 1)
SET IDENTITY_INSERT [dbo].[NhomSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao], [Giatien]) VALUES (69, 12, N'hoodie Nâus', N'ok', N'product_1.png', 1, 0, CAST(N'2022-12-20T10:47:37.647' AS DateTime), 10000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao], [Giatien]) VALUES (70, 1, N'Áo cúc', N'ok', N'product_9.png', 1, 0, CAST(N'2022-12-14T09:17:16.610' AS DateTime), 26000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao], [Giatien]) VALUES (71, 1, N'Áo len tay dài', N'ok', N'product_10.png', 1, 0, CAST(N'2022-12-14T09:17:47.943' AS DateTime), 250000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao], [Giatien]) VALUES (72, 1, N'Áo khoác uj067', N'ok', N'uj067.jpg', 1, 0, CAST(N'2022-12-14T09:27:38.260' AS DateTime), 350000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao], [Giatien]) VALUES (73, 1, N'Áo len tròng cổ', N'ok', N'aolentrongco.jpg', 1, 0, CAST(N'2022-12-14T09:28:07.040' AS DateTime), 350000)
INSERT [dbo].[SanPham] ([MaSanPham], [MaDanhMuc], [TenSanPham], [MoTaSanPham], [AnhDaiDien], [MaNhaSanXuat], [MaDonViTinh], [NgayTao], [Giatien]) VALUES (74, 1, N'Áo len baby 4217', N'ok', N'aolenbaby4217.jpg', 1, 0, CAST(N'2022-12-14T09:29:14.630' AS DateTime), 313131)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [MaNguoiDung], [TaiKhoan], [MatKhau], [NgayBatDau], [NgayKetThuc], [TrangThai], [LoaiQuyet]) VALUES (1, 1, N'duong', N'123456', NULL, NULL, 1, 1)
GO
ALTER TABLE [dbo].[ChiTietAnhSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietAnhSanPham_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietAnhSanPham] CHECK CONSTRAINT [FK_ChiTietAnhSanPham_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_HoaDonNhap] FOREIGN KEY([MaHoaDonNhap])
REFERENCES [dbo].[HoaDonNhap] ([MaHoaDonNhap])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_HoaDonNhap]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonXuat_HoaDonXuat] FOREIGN KEY([MaHoaDonXuat])
REFERENCES [dbo].[HoaDonXuat] ([MaHoaDonXuat])
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat] CHECK CONSTRAINT [FK_ChiTietHoaDonXuat_HoaDonXuat]
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonXuat_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDonXuat] CHECK CONSTRAINT [FK_ChiTietHoaDonXuat_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKho_Kho] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[ChiTietKho] CHECK CONSTRAINT [FK_ChiTietKho_Kho]
GO
ALTER TABLE [dbo].[ChiTietKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKho_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKho] CHECK CONSTRAINT [FK_ChiTietKho_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_KhuyenMai] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_KhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKhuyenMai_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKhuyenMai] CHECK CONSTRAINT [FK_ChiTietKhuyenMai_SanPham]
GO
ALTER TABLE [dbo].[ChiTietKiemKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiemKho_KiemKho] FOREIGN KEY([MaKiemKho])
REFERENCES [dbo].[KiemKho] ([MaKiemKho])
GO
ALTER TABLE [dbo].[ChiTietKiemKho] CHECK CONSTRAINT [FK_ChiTietKiemKho_KiemKho]
GO
ALTER TABLE [dbo].[ChiTietKiemKho]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietKiemKho_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietKiemKho] CHECK CONSTRAINT [FK_ChiTietKiemKho_SanPham]
GO
ALTER TABLE [dbo].[ChiTietNhom]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhom_NhomSanPham] FOREIGN KEY([MaNhomSanPham])
REFERENCES [dbo].[NhomSanPham] ([MaNhomSanPham])
GO
ALTER TABLE [dbo].[ChiTietNhom] CHECK CONSTRAINT [FK_ChiTietNhom_NhomSanPham]
GO
ALTER TABLE [dbo].[ChiTietNhom]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietNhom_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietNhom] CHECK CONSTRAINT [FK_ChiTietNhom_SanPham]
GO
ALTER TABLE [dbo].[GiamGia]  WITH CHECK ADD  CONSTRAINT [FK_GiamGia_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[GiamGia] CHECK CONSTRAINT [FK_GiamGia_SanPham]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NguoiDung]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonXuat]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonXuat_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDonXuat] CHECK CONSTRAINT [FK_HoaDonXuat_KhachHang]
GO
ALTER TABLE [dbo].[KiemKho]  WITH CHECK ADD  CONSTRAINT [FK_KiemKho_Kho] FOREIGN KEY([MaKho])
REFERENCES [dbo].[Kho] ([MaKho])
GO
ALTER TABLE [dbo].[KiemKho] CHECK CONSTRAINT [FK_KiemKho_Kho]
GO
ALTER TABLE [dbo].[LichSuGiaBan]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaBan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[LichSuGiaBan] CHECK CONSTRAINT [FK_LichSuGiaBan_SanPham]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NguoiDung] FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NguoiDung]
GO
