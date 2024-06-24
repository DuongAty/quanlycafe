USE [master]
GO
/****** Object:  Database [QLCP]    Script Date: 19/05/2024 10:47:42 SA ******/
CREATE DATABASE [QLCP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLCP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER03\MSSQL\DATA\QLCP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLCP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER03\MSSQL\DATA\QLCP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLCP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLCP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLCP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLCP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLCP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLCP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLCP] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLCP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLCP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLCP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLCP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLCP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLCP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLCP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLCP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLCP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLCP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLCP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLCP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLCP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLCP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLCP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLCP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLCP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLCP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLCP] SET  MULTI_USER 
GO
ALTER DATABASE [QLCP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLCP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLCP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLCP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLCP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLCP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLCP', N'ON'
GO
ALTER DATABASE [QLCP] SET QUERY_STORE = OFF
GO
USE [QLCP]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[MaBan] [nvarchar](10) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUC]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUC](
	[MaCongThuc] [nvarchar](10) NOT NULL,
	[TenCongThuc] [nvarchar](50) NULL,
	[MaThucDon] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUCCHITIET]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUCCHITIET](
	[MaCongThucCT] [nvarchar](10) NOT NULL,
	[MaCongThuc] [nvarchar](10) NULL,
	[MaHangHoa] [nvarchar](10) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThucCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONVI]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONVI](
	[MaDonVi] [nvarchar](10) NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[Gia] [decimal](18, 0) NULL,
	[MaDonVi] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [uniqueidentifier] NOT NULL,
	[NgayVao] [datetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[PhuThu] [decimal](18, 0) NULL,
	[PhuThuTheoPhanTram] [bit] NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[GiamGiaTheoPhanTram] [bit] NULL,
	[NgayThanhToan] [datetime] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[DaThanhToan] [bit] NOT NULL,
	[MaBan] [nvarchar](10) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBANHANG](
	[MaHDBH] [nvarchar](10) NOT NULL,
	[NgayBan] [datetime] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaNCC] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHDCT] [uniqueidentifier] NOT NULL,
	[MaHD] [uniqueidentifier] NOT NULL,
	[MaThucDon] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[MaLKH] [nvarchar](10) NULL,
	[MaQuyen] [int] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKhuVuc] [nvarchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [nvarchar](10) NOT NULL,
	[TenKM] [nvarchar](50) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NoiDung] [nvarchar](50) NULL,
	[GiaTri] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKHAHANG]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKHAHANG](
	[MaLKH] [nvarchar](10) NOT NULL,
	[TenLKH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[LoaiHang_NCC] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCDON]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCDON](
	[MaThucDon] [nvarchar](10) NOT NULL,
	[TenThucDon] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHO](
	[MaTonKho] [nvarchar](10) NOT NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[MaKho] [nvarchar](10) NULL,
 CONSTRAINT [PK_TONKHO] PRIMARY KEY CLUSTERED 
(
	[MaTonKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'A23', N'24', N'KV05')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B01', N'01', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B02', N'02', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B03', N'03', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B04', N'04', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B05', N'05', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B06', N'06', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B07', N'07', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B08', N'08', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B09', N'09', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B10', N'10', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B11', N'11', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B12', N'12', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B13', N'13', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B14', N'14', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B15', N'15', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B16', N'16', N'KV02')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B17', N'17', N'KV03')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B18', N'18', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B19', N'19', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B20', N'20', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B21', N'21', N'KV04')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B22', N'22', N'KV01')
INSERT [dbo].[BAN] ([MaBan], [TenBan], [MaKhuVuc]) VALUES (N'B23', N'23', N'KV05')
GO
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT01', N'Nước Cam', N'TD03')
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT02', N'Cà phê', N'TD01')
INSERT [dbo].[CONGTHUC] ([MaCongThuc], [TenCongThuc], [MaThucDon]) VALUES (N'CT03', N'Đào', N'TD06')
GO
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT01', N'CT01', N'HH01', N'Kg', CAST(0.20 AS Decimal(18, 2)))
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT02', N'CT03', N'HH03', N'Trai', CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CONGTHUCCHITIET] ([MaCongThucCT], [MaCongThuc], [MaHangHoa], [MaDonVi], [SoLuong]) VALUES (N'CTCT03', N'CT02', N'HH02', N'Kg', CAST(0.03 AS Decimal(18, 2)))
GO
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Chai', N'Chai')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Kg', N'Kí lô gam')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Ly', N'Ly')
INSERT [dbo].[DONVI] ([MaDonVi], [TenDonVi]) VALUES (N'Trai', N'Trái')
GO
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH01', N'Cam', N'', CAST(20000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH02', N'Cà phê', N'NCC03', CAST(200000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH03', N'Dừa', NULL, CAST(5000 AS Decimal(18, 0)), N'Trái')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH04', N'Đào', NULL, CAST(20000 AS Decimal(18, 0)), N'Kg')
INSERT [dbo].[HANGHOA] ([MaHangHoa], [TenHangHoa], [MaNCC], [Gia], [MaDonVi]) VALUES (N'HH05', N'Nho', NULL, CAST(100000 AS Decimal(18, 0)), N'Kg')
GO
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'35941dc6-7893-4491-9302-3667c49c55a6', CAST(N'2022-11-29T00:09:08.507' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B30')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', CAST(N'2022-06-30T13:08:22.673' AS DateTime), N'KH01', N'NV02', CAST(10 AS Decimal(18, 0)), 0, CAST(110 AS Decimal(18, 0)), 0, CAST(N'2022-06-30T13:09:55.000' AS DateTime), CAST(1435900 AS Decimal(18, 0)), 1, N'B01')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', CAST(N'2022-11-29T00:07:57.630' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:08:00.000' AS DateTime), CAST(1663000 AS Decimal(18, 0)), 1, N'B02')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'88dd0ebf-6291-4e69-8ab5-4dd61731a94a', CAST(N'2024-05-17T13:13:11.940' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2024-05-17T13:13:15.470' AS DateTime), CAST(0 AS Decimal(18, 0)), 1, N'B02')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'78a4135f-ffe7-437a-8d26-5fbba983563c', CAST(N'2022-10-22T10:31:23.063' AS DateTime), N'KH05', N'NV02', CAST(1000 AS Decimal(18, 0)), 0, CAST(5 AS Decimal(18, 0)), 1, CAST(N'2022-10-22T10:31:49.000' AS DateTime), CAST(789500 AS Decimal(18, 0)), 1, N'B03')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'd204ab64-d893-4494-9326-60b15295b63c', CAST(N'2022-11-29T00:08:45.013' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B38')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'30915360-ace1-4912-9d49-686e4cea5ce2', CAST(N'2024-05-19T09:46:28.587' AS DateTime), N'KH01', N'NV01', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2024-05-19T09:46:31.707' AS DateTime), CAST(15000 AS Decimal(18, 0)), 1, N'B07')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'74724245-c24e-4a5a-8e52-79607a2a14fd', CAST(N'2022-11-29T00:08:28.143' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B35')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', CAST(N'2022-11-29T00:09:38.060' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B48')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'1648abba-ab7b-4256-8fba-9521c56acf76', CAST(N'2022-11-29T00:09:27.870' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B22')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', CAST(N'2022-11-29T00:08:35.477' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B26')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'f67135b6-a755-4dc0-85b7-9be8b12aed0b', CAST(N'2022-11-29T00:09:04.100' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B45')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'14f372ac-bb4b-40eb-8193-aa5a6c6edf5d', CAST(N'2022-06-30T13:15:28.263' AS DateTime), N'KH02', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'6176ce90-f532-4d6d-8408-b829bdf14381', CAST(N'2022-11-29T00:09:20.157' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B50')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'df51a489-9952-47c9-8717-c0527574d89d', CAST(N'2022-11-29T00:09:12.827' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B34')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'95f65f1d-829e-401e-b0e0-c074e73b15fe', CAST(N'2022-11-29T00:07:53.997' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:07:56.000' AS DateTime), CAST(663000 AS Decimal(18, 0)), 1, N'B11')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'aefbea37-1b96-4ec0-8be1-cba26dab8527', CAST(N'2022-11-29T00:08:17.437' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B11')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'aa054d7b-8a4d-4562-8518-d266081cbea8', CAST(N'2022-11-29T00:08:22.333' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B39')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'edc9ec9e-b970-4cd8-9cd5-d55d5a266ad7', CAST(N'2024-05-17T13:13:25.810' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2024-05-17T13:14:03.750' AS DateTime), CAST(54000 AS Decimal(18, 0)), 1, N'B20')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'6b002bf6-f637-40d1-9f83-da089eb94c4b', CAST(N'2024-05-19T10:18:54.233' AS DateTime), N'KH01', N'NV01', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2024-05-19T10:18:56.137' AS DateTime), CAST(944000 AS Decimal(18, 0)), 1, N'B15')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', CAST(N'2022-11-29T00:08:41.077' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, NULL, CAST(0 AS Decimal(18, 0)), 0, N'B24')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'2082d918-aa0e-43e3-a34b-e7816550933b', CAST(N'2022-11-29T00:08:00.797' AS DateTime), N'KH05', N'NV02', CAST(0 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2022-11-29T00:08:02.000' AS DateTime), CAST(5000 AS Decimal(18, 0)), 1, N'B05')
INSERT [dbo].[HOADON] ([MaHD], [NgayVao], [MaKH], [MaNV], [PhuThu], [PhuThuTheoPhanTram], [GiamGia], [GiamGiaTheoPhanTram], [NgayThanhToan], [ThanhTien], [DaThanhToan], [MaBan]) VALUES (N'e11f2d66-c2ad-4e4e-8bff-e8ce3fa6213a', CAST(N'2024-05-19T08:55:36.207' AS DateTime), N'KH06', N'NV02', CAST(5 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), 1, CAST(N'2024-05-19T08:56:02.747' AS DateTime), CAST(304500 AS Decimal(18, 0)), 1, N'B10')
GO
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ffad7405-378a-4281-a150-0015e346c062', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2ba0cf06-632f-44ed-b97a-03c956872318', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cc1138f2-cf89-4877-9460-04c0652999c5', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'41a2c409-b3f3-4411-b6ac-06cdc795b008', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'84cb2243-fbf5-4d54-aa79-06e38dafc2c6', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'75f4149b-36c9-46d5-b843-06ec79b43592', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'f30f580b-a11e-4e2f-930b-073ebc4e7d40', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'47438f30-614f-4300-b201-0abc6f67d620', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'53910169-4694-4fa5-8b60-0c49cea2f884', N'e11f2d66-c2ad-4e4e-8bff-e8ce3fa6213a', N'TD02', 5, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd1012c35-d8f5-4962-8572-0c4cf2f09354', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5c2ecc4f-6ade-440d-8335-0dd2aa96b87d', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD03', 2, N'1 ly không đường')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'74f43c2f-1569-4736-8c84-0e907ea55e15', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD11', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'21c0c225-a0be-4d1e-a8f2-148665513865', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4acc9b24-872f-479e-9919-17b7ebdafeb4', N'30915360-ace1-4912-9d49-686e4cea5ce2', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ed8572a4-95bc-4155-a072-18662ac1cc01', N'35941dc6-7893-4491-9302-3667c49c55a6', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'afd45272-fddd-4fe2-922d-1a0302adb9df', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'7fcf70ad-d0b6-4e58-a3de-1a898c9cf396', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd6cfe2e1-140f-4a67-b4e0-1c692aca558e', N'd204ab64-d893-4494-9326-60b15295b63c', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'72f87290-3d15-47e3-8731-1d691cc4dffa', N'd204ab64-d893-4494-9326-60b15295b63c', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5a0042b6-c89d-46c1-956c-21e686b99aff', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'40e68259-f647-4ddc-9100-237788534f99', N'd204ab64-d893-4494-9326-60b15295b63c', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a591ecf3-cd8a-4aa1-b1e7-240f4b562cff', N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4c97f9db-42c8-44b7-899e-2f01eefdc159', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'04954479-7201-4919-8403-312704a03f99', N'35941dc6-7893-4491-9302-3667c49c55a6', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'8b81c404-a571-481a-b7ca-33be137e7b77', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'3b3196e1-ef42-42e8-9175-33bf973dd66e', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'f335c178-a0dd-42b9-b0b2-343c85d33bab', N'35941dc6-7893-4491-9302-3667c49c55a6', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'9df0c8de-b1fa-4409-89b5-387f488f2cab', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b7233115-8aed-47a0-a5cb-38ac393a1a2a', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b02cf318-77af-4ea2-8cc4-39aeb90b88f9', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'794434a1-7695-44aa-bea8-3b6417f4b7f4', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD12', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'06d8417e-b174-4138-a7b1-3c6c392ae0c3', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD11', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b83ca1a3-8314-41da-9d8d-3f1f39baa268', N'aefbea37-1b96-4ec0-8be1-cba26dab8527', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'64ed2693-5092-4400-9a48-3fb2731e86a9', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'31d8a1e8-ebee-4a3c-b581-40d3a8bf6999', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'f99f127f-903a-4215-8198-432783e7f2da', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2bb92b44-6881-48a3-b299-4e6afcb714dc', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD12', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'914d4179-43b9-4111-8da4-4f18afe0d3ba', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD14', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'8296ae0d-e725-440c-9ebc-52663c0150dd', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'dfe3380c-a845-4c8c-9124-56955b3e240b', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'56840c53-a614-435d-8a7a-5a514ea35ed4', N'df51a489-9952-47c9-8717-c0527574d89d', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'893057b1-7a28-400e-8a0d-5aab3a46621e', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD05', 3, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'772cb637-2fca-4adc-b35a-5b0ef2d94b00', N'edc9ec9e-b970-4cd8-9cd5-d55d5a266ad7', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'0926b4c4-4e2d-41f3-afba-5dcb871e41a2', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd12f69f9-9cf4-4be3-a422-605c65464035', N'00000000-0000-0000-0000-000000000000', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'139cceda-0047-4143-8d89-63ccc06723a1', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'16e20397-3390-426d-98d3-64d8836902cd', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'86156dc2-cf86-4f31-8cfa-65bac09492e2', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'c783536a-c435-42df-857c-65bbba7dbda2', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cddd8848-e267-4d48-b7cc-6676b0503101', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'eec2d832-81c1-4724-b76d-696b9832dd44', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'c48506a0-2fdd-46bb-92a0-6b1e998f73b3', N'df51a489-9952-47c9-8717-c0527574d89d', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'69d51603-3ef4-4264-8ac2-72fdf7986fa2', N'aefbea37-1b96-4ec0-8be1-cba26dab8527', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'bb6619a6-380e-4b99-bd40-7486711f94ad', N'edc9ec9e-b970-4cd8-9cd5-d55d5a266ad7', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'010dbb36-403a-4dd7-8763-777f697b753d', N'edc9ec9e-b970-4cd8-9cd5-d55d5a266ad7', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'18aedb8e-c192-495c-9407-78c3e22fa2f3', N'2082d918-aa0e-43e3-a34b-e7816550933b', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'26e1b3d7-7109-47ff-9cae-7ceadbab7d11', N'e11f2d66-c2ad-4e4e-8bff-e8ce3fa6213a', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'44025dd2-f812-4bc4-966c-7ed0ff29c87b', N'aefbea37-1b96-4ec0-8be1-cba26dab8527', N'TD10', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'fa88cf01-2364-4a3a-a0da-7edcbe84cb37', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'c08649a9-b868-44f3-86ab-814128358d58', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD04', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'29fdd043-548a-4831-bef2-829d32174061', N'edc9ec9e-b970-4cd8-9cd5-d55d5a266ad7', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'62e3bce4-377c-4c77-b80b-82a592f78a35', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cfa44d47-258f-43c9-8c89-833d56dba635', N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'41a77d92-600f-496d-9667-83ce55b7b825', N'df51a489-9952-47c9-8717-c0527574d89d', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'581d50b5-e7f7-4953-82d5-868b486ed4f7', N'74724245-c24e-4a5a-8e52-79607a2a14fd', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'0d500072-63ff-4fea-b62c-89a79f256aaf', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd7ecf228-eed9-4294-9d85-8ae87c00eea5', N'f67135b6-a755-4dc0-85b7-9be8b12aed0b', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'db4ce160-326a-4143-aa2f-9919592b57a1', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'75f86301-0fa8-4693-8089-9be4fb8629f4', N'e11f2d66-c2ad-4e4e-8bff-e8ce3fa6213a', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'3e5e2e6c-3d97-4743-8ccc-a01c42b99f3c', N'6176ce90-f532-4d6d-8408-b829bdf14381', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'e651a16c-1d73-4102-9fe2-a0597b674263', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'5683d7ef-6548-4214-9ba9-a094b292d8f0', N'95f65f1d-829e-401e-b0e0-c074e73b15fe', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'9bc150c2-f66e-4ce3-b33d-a73c9e1dfd9b', N'88dd0ebf-6291-4e69-8ab5-4dd61731a94a', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'17f6f5eb-3384-4b02-b8ee-ab1f50f22714', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD07', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'72f332fd-2b62-4266-8010-ae53d54b5e08', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD14', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'80931e01-b64b-4ce6-bd3a-ae9a78290cd5', N'88dd0ebf-6291-4e69-8ab5-4dd61731a94a', N'TD01', 2, N'không đá
')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'6b998594-bd12-4a74-8578-af4ddd875180', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD06', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'423eb87e-e97c-4177-b277-b1ae41b9c864', N'1648abba-ab7b-4256-8fba-9521c56acf76', N'TD07', 2, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'4d924dac-005d-43a9-8b2e-b39efb62ae93', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'bd8de05e-abd6-4d8b-bad1-b4d51e757ee0', N'6176ce90-f532-4d6d-8408-b829bdf14381', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'cf659211-9ab6-4437-8446-c15886b07226', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'02c0dcba-21bd-43d0-a0f4-c1d76e884e5e', N'78a4135f-ffe7-437a-8d26-5fbba983563c', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'fa3485b0-bbb3-4aec-890a-c33744dbbeeb', N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a30a8666-8ca9-4e70-b11d-c9512b1545ca', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd60c102d-9acd-40f3-b688-d03b3ab199b6', N'ad8199ae-21f2-4f5f-9e21-37d41756fd48', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'50d8a4fa-5401-4595-a8c2-d22919b461b1', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD12', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'790af0e7-993c-4403-bb0a-da0b2ed60a8e', N'14f372ac-bb4b-40eb-8193-aa5a6c6edf5d', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'9b028a8f-b660-4873-a5f2-e00bee6e8af3', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD13', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'88386549-cd63-4f37-ab05-e9fdd8c45884', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD05', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd56c8f26-883a-4d7d-bf28-ea8e61e91e8e', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'ea58d2d8-0432-4051-98e6-eca406082a4d', N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', N'TD03', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'03c16595-9fb1-44d4-8794-ee167e518f8b', N'd22a5688-2a98-4c52-84a6-36cbafabcdc6', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a844124a-5fb0-427c-bd4a-f3adafb35e9f', N'bbf9b4b8-7782-4d6d-9414-dabbec2e0b2f', N'TD02', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b524b638-a7c3-47cf-a27c-f7a86e9a2f08', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'2e2ac857-4582-45b9-a220-f83b53908a4f', N'c8196286-e6a5-4e78-bc1d-8f595dd5a335', N'TD08', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'd113aaae-fd9b-425b-b959-f8d4993a294e', N'518e8cfd-d229-4052-b7cd-97ef6a8d71d1', N'TD01', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'b162beb2-45d9-42f9-93e1-f8e3915edfc9', N'aa054d7b-8a4d-4562-8518-d266081cbea8', N'TD09', 1, N'')
INSERT [dbo].[HOADONCHITIET] ([MaHDCT], [MaHD], [MaThucDon], [SoLuong], [GhiChu]) VALUES (N'a4bba4c9-d01d-465d-a646-fd244be97844', N'6b002bf6-f637-40d1-9f83-da089eb94c4b', N'TD11', 1, N'')
GO
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH01', N'TRINH THỊ KIM OANH', N'20 ĐA MẶN ĐÔNG 3', N'093098394', N'lbchloan@gmail.com', N'', 1, N'TTKO1', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH02', N'ĐẶNG NGỌC HẢI', N'20 ĐA MẶN ĐÔNG 3', N'093098394', N'lbchloan@gmail.com', N'', 1, N'nvqt1', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH03', N'ĐẶNG XUÂN ĐÔNG', N'20 ĐA MẶN ĐÔNG 3', N'093098394', N'lbchloan@gmail.com', N'', 1, N'dnh1', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH04', N'DƯƠNG TRẦN', N'20 ĐA MẶN ĐÔNG 3', N'093098394', N'lbchloan@gmail.com', N'', 1, N'TTKO1', N'123')
INSERT [dbo].[KHACHHANG] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [MaLKH], [MaQuyen], [TenDangNhap], [MatKhau]) VALUES (N'KH05', N'NGUYỄN VĂN QUANG THÁI', N'20 ĐA MẶN ĐÔNG 3', N'093098394', N'lbchloan@gmail.com', N'', 1, N'nvqt1', N'123')
GO
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV01', N'Tầng trệt')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV02', N'Lầu 1')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV03', N'Lầu 2')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV04', N'Phòng lạnh')
INSERT [dbo].[KHUVUC] ([MaKhuVuc], [TenKhuVuc]) VALUES (N'KV05', N'Sân Thượng')
GO
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC01', N'PepsiCo Việt Nam', N'Thành phố Hồ Chí Minh', N'19001220', N'pepsi@gmail.com', N'Nước suối')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC02', N'CoCaCoLa', N'Thành phố Hồ Chí Minh', N'1900555584', N'cocola@gmal.com', N'Sữa trái cây')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC03', N'Trung Nguyên', N'Thành phố Buôn Ma Thuột', N'0909300096', NULL, N'Cà phê')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC04', N'Lavie', N'Long An', N'0723511801', NULL, N'Nước suối')
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [LoaiHang_NCC]) VALUES (N'NCC05', N'Red Bull', N'Bình Dương', N'0274374916', NULL, N'Nước tăng lực')
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV01', N'NGUYỄN VĂN QUANG THAI', N'Số 152L, Huyện Phú Tân', N'912602546', N'dnghngnhi@gmail.com', N'thai', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV02', N'ĐẶNG NGỌC HẢI', N'Số 152L, Huyện Phú Tân', N'912602546', N'dnghngnhi@gmail.com', N'hai', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV03', N'ĐẶNG XUÂN ĐÔNG', N'Số 152L, Huyện Phú Tân', N'912602546', N'dnghngnhi@gmail.com', N'dong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV04', N'VŨ HƯU CÔNG', N'Số 152L, Huyện Phú Tân', N'912602546', N'dnghngnhi@gmail.com', N'cong', N'1234', N'1')
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [DiaChi], [SDT], [Email], [TenDangNhap], [MatKhau], [MaQuyen]) VALUES (N'NV05', N'DƯƠNG TRẦN', N'Số 152L, Huyện Phú Tân', N'912602546', N'dnghngnhi@gmail.com', N'duong', N'1234', N'1')
GO
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD01', N'Cà phê', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD02', N'Nước dừa', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD03', N'Ép cam', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD04', N'Nước suối', CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD05', N'Nutri Boost', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD06', N'Trà đào', CAST(15000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD07', N'Nước tăng lực', CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD08', N'Sinh tố bơ', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD09', N'Sinh tố sầu riêng', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD10', N'Sinh tố sầu riêng', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD11', N'Ép nho', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD12', N'Ép lê', CAST(150000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD13', N'Chanh dây', CAST(200000 AS Decimal(18, 0)))
INSERT [dbo].[THUCDON] ([MaThucDon], [TenThucDon], [Gia]) VALUES (N'TD14', N'Soda', CAST(250000 AS Decimal(18, 0)))
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_MaHD]  DEFAULT (newid()) FOR [MaHD]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NgayVao]  DEFAULT (getdate()) FOR [NgayVao]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_PhuThuTheoPhanTram]  DEFAULT ((1)) FOR [PhuThuTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_GiamGiaTheoPhanTram]  DEFAULT ((1)) FOR [GiamGiaTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HOADONCHITIET_MaHDCT]  DEFAULT (newid()) FOR [MaHDCT]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HoaDonChiTiet_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThu]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BaoCaoDoanhThu]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT NgayVao = FORMAT(HOADON.NgayVao, 'dd/MM/yyyy HH:mm:ss')
	, Ban.TenBan
	, dbo.KHUVUC.TenKhuVuc
	, dbo.KHACHHANG.TenKH
	, dbo.NHANVIEN.TenNV
	, dbo.THUCDON.TenThucDon
	, dbo.THUCDON.Gia
	, dbo.HOADONCHITIET.SoLuong
	, ThanhTien = (dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong)
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.BAN, dbo.KHUVUC, dbo.KHACHHANG, dbo.NHANVIEN, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADON.MaBan = dbo.BAN.MaBan
	AND dbo.KHUVUC.MaKhuVuc = dbo.BAN.MaKhuVuc
	AND dbo.HOADON.MaKH = dbo.KHACHHANG.MaKH
	AND dbo.HOADON.MaNV = dbo.NHANVIEN.MaNV
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllHoaDonChiTiet]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllHoaDonChiTiet]
@MaHD UNIQUEIDENTIFIER
AS
BEGIN
SELECT
	MaHDCT
	,MaHD
	,MaThucDon
	,TenThucDon = (SELECT TenThucDon FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,Gia = (SELECT Gia FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,SoLuong
	,GhiChu
FROM HOADONCHITIET
WHERE MaHD = (SELECT MaHD FROM dbo.HOADON WHERE MaHD = @MaHD AND DaThanhToan = 0)
END
GO
/****** Object:  StoredProcedure [dbo].[LayChiTietHoaDon]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 4. Get chi tiết hóa đơn theo mã hóa đơn
CREATE PROC [dbo].[LayChiTietHoaDon]
@MaHD nvarchar(10)
AS
Begin
SELECT MaHD, MaThucDon, SoLuong, GhiChu FROM dbo.HoaDonChiTiet WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachBan]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[LayDanhSachBan] 
@MaKhuVuc nvarchar(10)
AS
Begin
SELECT MaBan, TenBan, MaKhuVuc, DaThanhToan = ISNULL((SELECT TOP 1 ISNULL(DaThanhToan, 1) FROM dbo.HOADON WHERE MaBan = Ban.MaBan ORDER BY NgayVao DESC), 1) FROM BAN 
WHERE 

MaKhuVuc = (CASE WHEN @MaKhuVuc = '' THEN MaKhuVuc ELSE @MaKhuVuc END) ORDER BY TenBan
END
GO
/****** Object:  StoredProcedure [dbo].[LayHoaDonMoiNhat]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayHoaDonMoiNhat]
@MaBan nvarchar(10)
AS
Begin
SELECT TOP 1 MaHD, NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, NgayThanhToan, ThanhTien, DaThanhToan, MaBan  FROM dbo.HOADON WHERE MaBan = @MaBan ORDER BY NgayVao DESC
END

GO
/****** Object:  StoredProcedure [dbo].[LayTatCaKhuVuc]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 1. Get tất cả khu vực
CREATE PROCEDURE [dbo].[LayTatCaKhuVuc]
AS
SELECT MaKhuVuc = '', TenKhuVuc = N'Tất cả' UNION SELECT MaKhuVuc, TenKhuVuc FROM KHUVUC ORDER BY MaKhuVuc
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDon]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDon]
	@NgayVao datetime
	,@MaKH nvarchar(10)
	,@MaNV nvarchar(10)
	,@PhuThu decimal(18,0)
	,@PhuThuTheoPhanTram bit
	,@GiamGia decimal(18,0)
	,@GiamGiaTheoPhanTram bit
	,@MaBan nvarchar(10)
AS
BEGIN
INSERT INTO HOADON
(
	NgayVao
	,MaKH
	,MaNV
	,PhuThu
	,PhuThuTheoPhanTram
	,GiamGia
	,GiamGiaTheoPhanTram
	,MaBan
)
OUTPUT Inserted.MaHD
VALUES
(
	@NgayVao
	,@MaKH
	,@MaNV
	,@PhuThu
	,@PhuThuTheoPhanTram
	,@GiamGia
	,@GiamGiaTheoPhanTram
	,@MaBan
)
END
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDonChiTiet]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDonChiTiet]
	@Loai NVARCHAR(10)
	,@MaHDCT uniqueidentifier
	,@MaHD uniqueidentifier
	,@MaThucDon nvarchar(10)
	,@SoLuong int
	,@GhiChu nvarchar(200)
AS
BEGIN
IF(@Loai='them')
BEGIN
INSERT INTO HOADONCHITIET
(
	MaHD
	,MaThucDon
	,SoLuong
	,GhiChu
)
OUTPUT Inserted.MaHDCT
VALUES
(
	@MaHD
	,@MaThucDon
	,@SoLuong
	,@GhiChu
)
END
ELSE
BEGIN
UPDATE HOADONCHITIET
SET 
	MaHD = @MaHD
	,MaThucDon = @MaThucDon
	,SoLuong = @SoLuong
	,GhiChu = @GhiChu
OUTPUT Inserted.MaHDCT
WHERE MaHDCT = @MaHDCT
END
END
GO
/****** Object:  StoredProcedure [dbo].[PhanQuyen]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PhanQuyen]
@Username nvarchar(20),
@Password nvarchar(20),
@NhanVien bit
as
BEGIN
IF @NhanVien = 1
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV, MaKH = '', TenNV, TenKH = '' FROM dbo.NHANVIEN WHERE TenDangNhap = @Username AND MatKhau = @Password
ELSE
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV = '', MaKH, TenNV = '', TenKH FROM dbo.KHACHHANG WHERE TenDangNhap = @Username AND MatKhau = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDon]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDon]
@MaHD UNIQUEIDENTIFIER, @NgayVao datetime, @MaKH nvarchar(10), @MaNV nvarchar(10), @PhuThu DECIMAL(18,0), @PhuThuTheoPhanTram bit, @GiamGia DECIMAL(18,0), @GiamGiaTheoPhanTram bit, @NgayThanhToan datetime, @ThanhTien DECIMAL(18,0), @DaThanhToan bit, @MaBan nvarchar(10)
AS
Begin
UPDATE dbo.HOADON SET NgayVao = @NgayVao, MaKH = @MaKH, MaNV = @MaNV, PhuThu = @PhuThu, PhuThuTheoPhanTram = @PhuThuTheoPhanTram, GiamGia = @GiamGia, GiamGiaTheoPhanTram = @GiamGiaTheoPhanTram, NgayThanhToan = @NgayThanhToan, ThanhTien = @ThanhTien, DaThanhToan = @DaThanhToan, MaBan = @MaBan WHERE MaHD = @MaHD
END
-- 10. Xóa hóa đơn
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDonChiTiet]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER, @SoLuong int, @GhiChu nvarchar(200)
AS
Begin
UPDATE dbo.HoaDonChiTiet SET SoLuong = @SoLuong, GhiChu = @GhiChu WHERE MaHDCT = @MaHDCT
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDon]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemHoaDon]
@NgayVao DATETIME
, @MaKH nvarchar(10)
, @MaNV nvarchar(10)
, @PhuThu DECIMAL(18,0)
, @PhuThuTheoPhanTram BIT
, @GiamGia DECIMAL(18,0)
, @GiamGiaTheoPhanTram BIT
, @MaBan nvarchar(10)
AS
Begin
INSERT INTO dbo.HOADON 
(NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, MaBan, DaThanhToan)
OUTPUT Inserted.MaHD
VALUES (@NgayVao, @MaKH, @MaNV, @PhuThu, @PhuThuTheoPhanTram, @GiamGia, @GiamGiaTheoPhanTram, @MaBan, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDonChiTiet]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 5.  thêm hóa đơn chi tiết
CREATE PROC [dbo].[ThemHoaDonChiTiet]
@MaHD nvarchar(10), @MaThucDid nvarchar(10), @SoLuong int, @GhiChu nvarchar(50)
AS
Begin
INSERT INTO dbo.HoaDonChiTiet (MaHD, MaThucDon, SoLuong, GhiChu) VALUES (@MaHD, @MaThucDid, @SoLuong, @GhiChu)
END
-- 6. sửa hóa đơn chi tiết
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTien]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTien]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT SUM(dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong) AS Tong
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNam]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNam]
@Nam datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE YEAR(NgayVao) = YEAR(@Nam)
END
-- 14. tính tổng thành tiền theo tuần
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNgay]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNgay]
@Ngay datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE Day(NgayVao) = @Ngay
END
-- 12. tính tổng thành tiền theo tháng
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoThang]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoThang]
@Thang datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE MONTH(NgayVao) = MONTH(@Thang)
END
-- 13. tính tổng thành tiền theo năm
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoTuan]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoTuan]
@Tuan int
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE DATEPART(WEEK, NgayVao) = @Tuan
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDon]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDon]
@MaHD UNIQUEIDENTIFIER
AS
Begin
	DELETE FROM dbo.HOADON WHERE MaHD = @MaHD
	DELETE FROM dbo.HOADONCHITIET WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDonChiTiet]    Script Date: 19/05/2024 10:47:43 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER
AS
Begin
DELETE FROM dbo.HoaDonChiTiet WHERE MaHDCT = @MaHDCT
END
-- 8. Thêm hóa đơn
GO
USE [master]
GO
ALTER DATABASE [QLCP] SET  READ_WRITE 
GO
