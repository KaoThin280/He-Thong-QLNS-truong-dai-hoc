USE [master]
GO
/****** Object:  Database [QLNS]    Script Date: 06/06/2024 6:36:11 SA ******/
CREATE DATABASE [QLNS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYAO\MSSQL\DATA\QLNS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLNS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MAYAO\MSSQL\DATA\QLNS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLNS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNS] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNS] SET RECOVERY FULL 
GO
ALTER DATABASE [QLNS] SET  MULTI_USER 
GO
ALTER DATABASE [QLNS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLNS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLNS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLNS', N'ON'
GO
ALTER DATABASE [QLNS] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLNS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLNS]
GO
/****** Object:  Table [dbo].[BanThanOCheDoCu]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanThanOCheDoCu](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[DonVi] [nvarchar](50) NULL,
	[DiaDiem] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoHiem]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHiem](
	[MaBH] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[BHXH] [nvarchar](50) NULL,
	[BHTN] [nvarchar](50) NULL,
	[BHYT] [nvarchar](50) NULL,
	[TongTienLuongDong] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
	[TyLeBHXH] [nvarchar](50) NULL,
	[TyLeBHTN] [nvarchar](50) NULL,
	[TyLeBHYT] [nvarchar](50) NULL,
	[TongHSLuong] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BCHD]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BCHD](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[LoaiHinh] [nvarchar](50) NULL,
	[NgayTD] [nvarchar](50) NULL,
	[NgayKT] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[VBQD] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BiBatBiTu]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BiBatBiTu](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[VanDe] [nvarchar](50) NULL,
	[KhaiBaoCho] [nvarchar](50) NULL,
	[ODau] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BietPhai]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BietPhai](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[PhongBan] [nvarchar](50) NULL,
	[NgayBD] [nvarchar](50) NULL,
	[NgayKT] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[ChucVuBanDau] [nvarchar](50) NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[VBQD] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoiDuongANQP]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoiDuongANQP](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[ChungChi] [nvarchar](50) NULL,
	[TenCSDT] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoiDuongChuyenMon]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoiDuongChuyenMon](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[HinhThucDT] [nvarchar](50) NULL,
	[ChuyenNganhDT] [nvarchar](50) NULL,
	[TenCSDT] [nvarchar](50) NULL,
	[VanBang] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoiDuongLyLuanChinhTri]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoiDuongLyLuanChinhTri](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[HinhThucDT] [nvarchar](50) NULL,
	[TenCSDT] [nvarchar](50) NULL,
	[VanBang] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoiDuongNgoaiNguDanToc]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoiDuongNgoaiNguDanToc](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[TenNNDT] [nvarchar](50) NULL,
	[ChungChi] [nvarchar](50) NULL,
	[TenCSDT] [nvarchar](50) NULL,
	[DiemSo] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoiDuongQuanLyNhaNuoc]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoiDuongQuanLyNhaNuoc](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[ChungChi] [nvarchar](50) NULL,
	[TenCSDT] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoiDuongTinHoc]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoiDuongTinHoc](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[ChungChi] [nvarchar](50) NULL,
	[TenCSDT] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[ID] [nvarchar](50) NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
	[TenChucDanh] [nvarchar](50) NULL,
	[HeSoPC] [nvarchar](50) NULL,
	[HeSoPCKN] [nvarchar](50) NULL,
	[MaNgach] [nvarchar](50) NULL,
	[NhomNgach] [nvarchar](50) NULL,
	[BacCaoNhat] [nvarchar](50) NULL,
	[HSBanDau] [nvarchar](50) NULL,
	[HSTang] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongTacDangDoan]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongTacDangDoan](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[ToChucDang] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[LoaiToChuc] [nvarchar](50) NULL,
	[NgayBD] [nvarchar](50) NULL,
	[NgayKT] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViecChinh]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViecChinh](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[MaCV] [nvarchar](50) NULL,
	[NgayBD] [nvarchar](50) NULL,
	[NgayKT] [nvarchar](50) NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[VBQD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuDiHoc]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuDiHoc](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[ChuongTrinhDT] [nvarchar](50) NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[LoaiTrinhDo] [nvarchar](50) NULL,
	[ChuyenNganh] [nvarchar](50) NULL,
	[NamNhapHoc] [nvarchar](50) NULL,
	[NamTNDK] [nvarchar](50) NULL,
	[NguonKinhPhi] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[VBQD] [nvarchar](50) NULL,
	[NienKhoa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangDoan]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangDoan](
	[ID] [nvarchar](50) NOT NULL,
	[MaNS] [nvarchar](50) NULL,
	[LoaiToChuc] [nvarchar](50) NULL,
	[NgayVao] [nvarchar](50) NULL,
	[NgayChinhThuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhHieuNhaNuocTang]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhHieuNhaNuocTang](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[DanhHieu] [nvarchar](50) NULL,
	[NgayNhan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoKhauThuongTru]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoKhauThuongTru](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[Huyen] [nvarchar](50) NULL,
	[Xa] [nvarchar](50) NULL,
	[Tinh] [nvarchar](50) NULL,
	[XomThon] [nvarchar](50) NULL,
	[SoNha] [nvarchar](50) NULL,
	[DuongPho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KiemNhiem]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KiemNhiem](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[MaCV] [nvarchar](50) NULL,
	[NgayBD] [nvarchar](50) NULL,
	[NgayKT] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[VBQD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KTvaKL]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KTvaKL](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[LyDo] [nvarchar](50) NULL,
	[Nam] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[VBQD] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LSDN]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LSDN](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[LogInTime] [nvarchar](50) NULL,
	[LogOutTime] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuongThuong]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuongThuong](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[TongHeSo] [nvarchar](50) NULL,
	[PCTNVK] [nvarchar](50) NULL,
	[TongNhan] [nvarchar](50) NULL,
	[NgayNhan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NangLuongTruocHan]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NangLuongTruocHan](
	[ID] [nvarchar](50) NOT NULL,
	[MaLuong] [nvarchar](50) NULL,
	[TDCTDS] [nvarchar](50) NULL,
	[ChenhLechBaoLuu] [nvarchar](50) NULL,
	[ThoiDiemDungHan] [nvarchar](50) NULL,
	[SoThangNangTruocHan] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[VBQD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NghiHuu]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NghiHuu](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[DonViTiepNhan] [nvarchar](50) NULL,
	[NgayNghiHuu] [nvarchar](50) NULL,
	[NgayQD] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[VBQD] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapNgu]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapNgu](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[QuanHam] [nvarchar](50) NULL,
	[NgayNhapNgu] [nvarchar](50) NULL,
	[NgayXuatNgu] [nvarchar](50) NULL,
	[NgayTaiNgu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiLamViec]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiLamViec](
	[ID] [nvarchar](50) NOT NULL,
	[TenNoiLamViec] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiOHienTai]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiOHienTai](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[Huyen] [nvarchar](50) NULL,
	[Xa] [nvarchar](50) NULL,
	[Tinh] [nvarchar](50) NULL,
	[XomThon] [nvarchar](50) NULL,
	[SoNha] [nvarchar](50) NULL,
	[DuongPho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiSinh]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiSinh](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[Xa] [nvarchar](50) NULL,
	[Phuong] [nvarchar](50) NULL,
	[Huyen] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhuCap]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhuCap](
	[ID] [nvarchar](50) NOT NULL,
	[MaLuong] [nvarchar](50) NULL,
	[LoaiPhuCap] [nvarchar](50) NULL,
	[SoTienHuong] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QHGD]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QHGD](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[MoiQH] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[ThongTin] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QHTCNuocNgoai]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QHTCNuocNgoai](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[TenTC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[CongViec] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuaTrinhLuong]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuaTrinhLuong](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
	[HeSo] [nvarchar](50) NULL,
	[MaNgach] [nvarchar](50) NULL,
	[Bac] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueQuan]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueQuan](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[Xa] [nvarchar](50) NULL,
	[Phuong] [nvarchar](50) NULL,
	[Huyen] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaGV] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThamGiaToChucCTXH]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThamGiaToChucCTXH](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[NgayTD] [nvarchar](50) NULL,
	[CoQuan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinCCCD]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinCCCD](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[SoCCCD] [nvarchar](50) NULL,
	[NgayCap] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinHoSoGV]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHoSoGV](
	[MaGV] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[QXa] [nvarchar](50) NULL,
	[QTinh] [nvarchar](50) NULL,
	[QHuyen] [nvarchar](50) NULL,
	[NSXa] [nvarchar](50) NULL,
	[NSTinh] [nvarchar](50) NULL,
	[NSHuyen] [nvarchar](50) NULL,
	[DanToc] [nvarchar](50) NULL,
	[TonGiao] [nvarchar](50) NULL,
	[TenGoiKhac] [nvarchar](50) NULL,
	[DoiTuongCS] [nvarchar](50) NULL,
	[XuatThan] [nvarchar](50) NULL,
	[HocHam] [nvarchar](50) NULL,
	[NgayVao] [nvarchar](50) NULL,
	[ChieuCao] [nvarchar](50) NULL,
	[CanNang] [nvarchar](50) NULL,
	[NhomMau] [nvarchar](50) NULL,
	[NhanXet] [nvarchar](50) NULL,
	[AnhMau] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TomTatQuaTrinhCongTac]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TomTatQuaTrinhCongTac](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[SoQD] [nvarchar](50) NULL,
	[CoQuanQD] [nvarchar](50) NULL,
	[NgayBanHanh] [nvarchar](50) NULL,
	[CachThuc] [nvarchar](50) NULL,
	[TuNgay] [nvarchar](50) NULL,
	[DenNgay] [nvarchar](50) NULL,
	[DonViCongTac] [nvarchar](50) NULL,
	[ChucVu] [nvarchar](50) NULL,
	[HeSoChucVu] [nvarchar](50) NULL,
	[NgayBoNhiem] [nvarchar](50) NULL,
	[HinhThuc] [nvarchar](50) NULL,
	[VBQD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoChuyenMonCaoNhat]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoChuyenMonCaoNhat](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[VanBangHocHam] [nvarchar](50) NULL,
	[ChuyenNganh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDoGDPhoThong]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDoGDPhoThong](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[TotNghiepLop] [nvarchar](50) NULL,
	[He] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenDungLanDau]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenDungLanDau](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[NgayTD] [nvarchar](50) NULL,
	[CoQuan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ViTriViecLam]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTriViecLam](
	[ID] [nvarchar](50) NOT NULL,
	[MaCV] [nvarchar](50) NULL,
	[MaNLV] [nvarchar](50) NULL,
	[Bac] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XacThuc]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XacThuc](
	[ID] [nvarchar](50) NOT NULL,
	[MaGV] [nvarchar](50) NULL,
	[OTP_Code] [nvarchar](50) NULL,
	[VerifyTime] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoHiem] ([MaBH], [MaGV], [BHXH], [BHTN], [BHYT], [TongTienLuongDong], [TuNgay], [DenNgay], [TyLeBHXH], [TyLeBHTN], [TyLeBHYT], [TongHSLuong]) VALUES (N'01', N'GV1', N'4353554991', N'4353554991', N'4353554991', N'.', N'19/05/2023', N'19/05/2025', N'8%', N'1%', N'3%', N'.')
INSERT [dbo].[BaoHiem] ([MaBH], [MaGV], [BHXH], [BHTN], [BHYT], [TongTienLuongDong], [TuNgay], [DenNgay], [TyLeBHXH], [TyLeBHTN], [TyLeBHYT], [TongHSLuong]) VALUES (N'02', N'GV2', N'3221224522', N'3221224522', N'3221224522', N'.', N'19/05/2022', N'19/05/2025', N'8%', N'1%', N'1,5%', N'.')
INSERT [dbo].[BaoHiem] ([MaBH], [MaGV], [BHXH], [BHTN], [BHYT], [TongTienLuongDong], [TuNgay], [DenNgay], [TyLeBHXH], [TyLeBHTN], [TyLeBHYT], [TongHSLuong]) VALUES (N'03', N'GV3', N'4564561222', N'4564561222', N'4564561222', N'.', N'19/05/2023', N'19/05/2025', N'8%', N'1%', N'1,5%', N'.')
INSERT [dbo].[BaoHiem] ([MaBH], [MaGV], [BHXH], [BHTN], [BHYT], [TongTienLuongDong], [TuNgay], [DenNgay], [TyLeBHXH], [TyLeBHTN], [TyLeBHYT], [TongHSLuong]) VALUES (N'04', N'GV4', N'4995324199', N'4995324199', N'4995324199', N'.', N'19/05/2022', N'19/05/2025', N'8%', N'1%', N'3%', N'.')
INSERT [dbo].[BaoHiem] ([MaBH], [MaGV], [BHXH], [BHTN], [BHYT], [TongTienLuongDong], [TuNgay], [DenNgay], [TyLeBHXH], [TyLeBHTN], [TyLeBHYT], [TongHSLuong]) VALUES (N'05', N'GV5', N'4321364321', N'4321364321', N'4321364321', N'.', N'19/05/2024', N'19/05/2026', N'8%', N'1%', N'3%', N'.')
INSERT [dbo].[BaoHiem] ([MaBH], [MaGV], [BHXH], [BHTN], [BHYT], [TongTienLuongDong], [TuNgay], [DenNgay], [TyLeBHXH], [TyLeBHTN], [TyLeBHYT], [TongHSLuong]) VALUES (N'06', N'GV6', N'4122144112', N'4122144112', N'4122144112', N'.', N'19/05/2023', N'19/05/2025', N'8%', N'1%', N'3%', N'.')
GO
INSERT [dbo].[BCHD] ([ID], [MaGV], [LoaiHinh], [NgayTD], [NgayKT], [SoQD], [CoQuanQD], [NgayQD], [VBQD]) VALUES (N'01', N'GV1', N'Hợp đồng làm việc', N'2012', N'2030', N'44/2011', N'Bộ GDDT', N'10/10/2011', NULL)
INSERT [dbo].[BCHD] ([ID], [MaGV], [LoaiHinh], [NgayTD], [NgayKT], [SoQD], [CoQuanQD], [NgayQD], [VBQD]) VALUES (N'02', N'GV2', N'Thỉnh giảng', N'2017', N'2025', N'44/2011', N'Bộ GDDT', N'10/10/2011', NULL)
INSERT [dbo].[BCHD] ([ID], [MaGV], [LoaiHinh], [NgayTD], [NgayKT], [SoQD], [CoQuanQD], [NgayQD], [VBQD]) VALUES (N'03', N'GV3', N'Thỉnh giảng', N'2015', N'2030', N'44/2011', N'Bộ GDDT', N'10/10/2011', NULL)
INSERT [dbo].[BCHD] ([ID], [MaGV], [LoaiHinh], [NgayTD], [NgayKT], [SoQD], [CoQuanQD], [NgayQD], [VBQD]) VALUES (N'04', N'GV4', N'Hợp đồng làm việc', N'2005', N'2030', N'44/2011', N'Bộ GDDT', N'10/10/2011', NULL)
INSERT [dbo].[BCHD] ([ID], [MaGV], [LoaiHinh], [NgayTD], [NgayKT], [SoQD], [CoQuanQD], [NgayQD], [VBQD]) VALUES (N'05', N'GV5', N'Hợp đồng làm việc', N'2003', N'2025', N'44/2011', N'Bộ GDDT', N'10/10/2011', NULL)
INSERT [dbo].[BCHD] ([ID], [MaGV], [LoaiHinh], [NgayTD], [NgayKT], [SoQD], [CoQuanQD], [NgayQD], [VBQD]) VALUES (N'06', N'GV6', N'Hợp đồng làm việc', N'2001', N'2031', N'44/2011', N'Bộ GDDT', N'10/10/2011', NULL)
GO
INSERT [dbo].[BietPhai] ([ID], [MaGV], [SoQD], [CoQuanQD], [ChucVu], [PhongBan], [NgayBD], [NgayKT], [NgayQD], [ChucVuBanDau], [HinhThuc], [VBQD]) VALUES (N'01', N'GV1', N'58/2010', N'Đại học Sài Gòn', N'Trưởng bộ môn', N'CNTT', N'03/01/2021', N'03/01/2024', N'15/11/2010', N'Giảng viên', N'Biệt phái', NULL)
INSERT [dbo].[BietPhai] ([ID], [MaGV], [SoQD], [CoQuanQD], [ChucVu], [PhongBan], [NgayBD], [NgayKT], [NgayQD], [ChucVuBanDau], [HinhThuc], [VBQD]) VALUES (N'02', N'GV2', N'58/2010', N'Đại học Sài Gòn', N'Trợ lý khoa học', N'Quản trị kinh doanh', N'18/05/2022', N'18/05/2025', N'15/11/2010', N'Giảng viên', N'Biệt phái', NULL)
INSERT [dbo].[BietPhai] ([ID], [MaGV], [SoQD], [CoQuanQD], [ChucVu], [PhongBan], [NgayBD], [NgayKT], [NgayQD], [ChucVuBanDau], [HinhThuc], [VBQD]) VALUES (N'03', N'GV3', N'58/2010', N'Đại học Sài Gòn', N'Kế toán trưởng', N'Kế toán', N'12/03/2019', N'12/03/2025', N'15/11/2010', N'Giảng viên', N'Biệt phái', NULL)
INSERT [dbo].[BietPhai] ([ID], [MaGV], [SoQD], [CoQuanQD], [ChucVu], [PhongBan], [NgayBD], [NgayKT], [NgayQD], [ChucVuBanDau], [HinhThuc], [VBQD]) VALUES (N'04', N'GV4', N'58/2010', N'Đại học Sài Gòn', N'Trợ lý giáo vụ', N'Quản trị văn phòng', N'21/06/2018', N'21/06/2023', N'15/11/2010', N'Giảng viên', N'Biệt phái', NULL)
INSERT [dbo].[BietPhai] ([ID], [MaGV], [SoQD], [CoQuanQD], [ChucVu], [PhongBan], [NgayBD], [NgayKT], [NgayQD], [ChucVuBanDau], [HinhThuc], [VBQD]) VALUES (N'05', N'GV5', N'58/2010', N'Đại học Sài Gòn', N'Trợ lý khoa học', N'CNTT', N'11/9/2016', N'11/09/2024', N'15/11/2010', N'Giảng viên', N'Biệt phái', NULL)
INSERT [dbo].[BietPhai] ([ID], [MaGV], [SoQD], [CoQuanQD], [ChucVu], [PhongBan], [NgayBD], [NgayKT], [NgayQD], [ChucVuBanDau], [HinhThuc], [VBQD]) VALUES (N'06', N'GV6', N'58/2010', N'Đại học Sài Gòn', N'Trưởng khoa', N'CNTT', N'21/10/2020', N'21/10/2025', N'15/11/2010', N'Phó khoa', N'Biệt phái', NULL)
GO
INSERT [dbo].[BoiDuongANQP] ([ID], [MaGV], [ChungChi], [TenCSDT], [TuNgay], [DenNgay]) VALUES (N'01', N'GV1', N'Quốc phòng cơ bản', N'Đại học Sài Gòn', N'04/06/2022', N'04/06/2025')
INSERT [dbo].[BoiDuongANQP] ([ID], [MaGV], [ChungChi], [TenCSDT], [TuNgay], [DenNgay]) VALUES (N'02', N'GV2', N'Quốc phòng cơ bản', N'Đại học Sài Gòn', N'04/06/2022', N'04/06/2025')
INSERT [dbo].[BoiDuongANQP] ([ID], [MaGV], [ChungChi], [TenCSDT], [TuNgay], [DenNgay]) VALUES (N'03', N'GV5', N'Quốc phòng cơ bản', N'Đại học Sài Gòn', N'04/06/2022', N'04/06/2025')
GO
INSERT [dbo].[BoiDuongChuyenMon] ([ID], [MaGV], [HinhThucDT], [ChuyenNganhDT], [TenCSDT], [VanBang], [TuNgay], [DenNgay]) VALUES (N'01', N'GV1', N'Chính quy', N'CNTT', N'Đại học Sài Gòn', N'Thạc sĩ', N'22/03/2005', N'Không thời hạn')
INSERT [dbo].[BoiDuongChuyenMon] ([ID], [MaGV], [HinhThucDT], [ChuyenNganhDT], [TenCSDT], [VanBang], [TuNgay], [DenNgay]) VALUES (N'02', N'GV2', N'Chính quy', N'Quản trị kinh doanh', N'Đại học Sài Gòn', N'Tiến sĩ', N'20/11/2019', N'Không thời hạn')
INSERT [dbo].[BoiDuongChuyenMon] ([ID], [MaGV], [HinhThucDT], [ChuyenNganhDT], [TenCSDT], [VanBang], [TuNgay], [DenNgay]) VALUES (N'03', N'GV4', N'Chính quy', N'Quản trị văn phòng', N'Đại học Sài Gòn', N'Tiến sĩ', N'20/11/2019', N'Không thời hạn')
GO
INSERT [dbo].[BoiDuongLyLuanChinhTri] ([ID], [MaGV], [HinhThucDT], [TenCSDT], [VanBang], [TuNgay], [DenNgay]) VALUES (N'01', N'GV1', N'Chính quy', N'Đại học Sài Gòn', N'Cử nhân Tư tưởng HCM', N'12/05/2000', N'Không thời hạn')
INSERT [dbo].[BoiDuongLyLuanChinhTri] ([ID], [MaGV], [HinhThucDT], [TenCSDT], [VanBang], [TuNgay], [DenNgay]) VALUES (N'02', N'GV2', N'Chính quy', N'Đại học Sài Gòn', N'Thạc sĩ lý luận chính trị', N'30/11/2015', N'Không thời hạn')
INSERT [dbo].[BoiDuongLyLuanChinhTri] ([ID], [MaGV], [HinhThucDT], [TenCSDT], [VanBang], [TuNgay], [DenNgay]) VALUES (N'03', N'GV3', N'Chính quy', N'Đại học Sài Gòn', N'Cử nhânChủ nghĩa Mác-LêNin', N'22/12/2003', N'Không thời hạn')
GO
INSERT [dbo].[BoiDuongNgoaiNguDanToc] ([ID], [MaGV], [TenNNDT], [ChungChi], [TenCSDT], [DiemSo], [TuNgay], [DenNgay]) VALUES (N'01', N'GV1', N'Tiếng anh', N'Toeic', N'ETS', N'730', N'04/06/2022', N'04/06/2024')
INSERT [dbo].[BoiDuongNgoaiNguDanToc] ([ID], [MaGV], [TenNNDT], [ChungChi], [TenCSDT], [DiemSo], [TuNgay], [DenNgay]) VALUES (N'02', N'GV2', N'Tiếng anh', N'Ielts', N'IDP', N'6.0', N'12/10/2023', N'12/10/2025')
INSERT [dbo].[BoiDuongNgoaiNguDanToc] ([ID], [MaGV], [TenNNDT], [ChungChi], [TenCSDT], [DiemSo], [TuNgay], [DenNgay]) VALUES (N'03', N'GV3', N'Tiếng anh', N'Toeic', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'01', N'GV1', N'Đảng cộng sản Việt Nam ', N'Đảng ủy viên', N'Tốt', N'22/06/2021', N'22/06/2025')
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'02', N'GV2', N'Đảng cộng sản Việt Nam ', N'Đảng ủy viên', N'Tốt', N'22/06/2021', N'22/06/2025')
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'03 ', N'GV3', N'Đảng cộng sản Việt Nam ', N'Đảng ủy viên', N'Tốt', N'22/06/2021', N'22/06/2025')
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'04', N'GV3', N'Đảng cộng sản Việt Nam ', N'Phó Bí thư Đảng ủy', N'Tốt', N'22/03/2022', N'22/03/2026')
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'05', N'GV4', N'Đảng cộng sản Việt Nam ', N'Đảng ủy viên', N'Tốt', N'22/06/2021', N'22/06/2025')
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'06', N'GV5', N'Đảng cộng sản Việt Nam ', N'Ủy viên Ban Thường vụ', N'Tốt', N'22/06/2021', N'22/06/2025')
INSERT [dbo].[CongTacDangDoan] ([ID], [MaGV], [ToChucDang], [ChucVu], [LoaiToChuc], [NgayBD], [NgayKT]) VALUES (N'07', N'GV6', N'Đảng cộng sản Việt Nam ', N'Bí thư Đảng ủy', N'Tốt', N'22/03/2022', N'22/03/2026')
GO
INSERT [dbo].[CuDiHoc] ([ID], [MaGV], [ChuongTrinhDT], [HinhThuc], [LoaiTrinhDo], [ChuyenNganh], [NamNhapHoc], [NamTNDK], [NguonKinhPhi], [NgayQD], [SoQD], [CoQuanQD], [VBQD], [NienKhoa]) VALUES (N'01', N'GV1', N'Tiến sĩ', N'Chính quy', N'Thạc sĩ', N'CNTT', N'2024', N'2027', N'16 triệu đồng', N'01/08/2014', N'1877', N'Đại học Sài Gòn', NULL, N'2024-2027')
INSERT [dbo].[CuDiHoc] ([ID], [MaGV], [ChuongTrinhDT], [HinhThuc], [LoaiTrinhDo], [ChuyenNganh], [NamNhapHoc], [NamTNDK], [NguonKinhPhi], [NgayQD], [SoQD], [CoQuanQD], [VBQD], [NienKhoa]) VALUES (N'02', N'GV2', N'Tiến sĩ', N'Chính quy', N'Thạc sĩ', N'Quản trị kinh doanh', N'2015', N'2019', N'18 triệu đồng', N'01/08/2014', N'1877', N'Đại học Sài Gòn', NULL, N'2015-2019')
INSERT [dbo].[CuDiHoc] ([ID], [MaGV], [ChuongTrinhDT], [HinhThuc], [LoaiTrinhDo], [ChuyenNganh], [NamNhapHoc], [NamTNDK], [NguonKinhPhi], [NgayQD], [SoQD], [CoQuanQD], [VBQD], [NienKhoa]) VALUES (N'03', N'GV3', N'Tiến sĩ', N'Chính quy', N'Thạc sĩ', N'Kế toán', N'2024', N'2027', N'16 triệu đồng', N'01/08/2014', N'1877', N'Đại học Sài Gòn', NULL, N'2024-2027')
INSERT [dbo].[CuDiHoc] ([ID], [MaGV], [ChuongTrinhDT], [HinhThuc], [LoaiTrinhDo], [ChuyenNganh], [NamNhapHoc], [NamTNDK], [NguonKinhPhi], [NgayQD], [SoQD], [CoQuanQD], [VBQD], [NienKhoa]) VALUES (N'04', N'GV4', N'Tiến sĩ', N'Chính quy', N'Thạc sĩ', N'Quản trị văn phòng', N'2015', N'2019', N'18 triệu đồng', N'01/08/2014', N'1877', N'Đại học Sài Gòn', NULL, N'2015-2019')
INSERT [dbo].[CuDiHoc] ([ID], [MaGV], [ChuongTrinhDT], [HinhThuc], [LoaiTrinhDo], [ChuyenNganh], [NamNhapHoc], [NamTNDK], [NguonKinhPhi], [NgayQD], [SoQD], [CoQuanQD], [VBQD], [NienKhoa]) VALUES (N'05', N'GV5', N'Tiến sĩ', N'Chính quy', N'Thạc sĩ', N'CNTT', N'2024', N'2027', N'16 triệu đồng', N'01/08/2014', N'1877', N'Đại học Sài Gòn', NULL, N'2024-2027')
GO
INSERT [dbo].[DangDoan] ([ID], [MaNS], [LoaiToChuc], [NgayVao], [NgayChinhThuc]) VALUES (N'01', N'GV1', N'Tốt', N'13/04/2018', N'13/04/2019')
INSERT [dbo].[DangDoan] ([ID], [MaNS], [LoaiToChuc], [NgayVao], [NgayChinhThuc]) VALUES (N'02', N'GV2', N'Tốt', N'26/05/2020', N'26/05/2021')
INSERT [dbo].[DangDoan] ([ID], [MaNS], [LoaiToChuc], [NgayVao], [NgayChinhThuc]) VALUES (N'03', N'GV3', N'Tốt', N'10/02/2015', N'10/02/2016')
INSERT [dbo].[DangDoan] ([ID], [MaNS], [LoaiToChuc], [NgayVao], [NgayChinhThuc]) VALUES (N'04', N'GV4', N'Tốt', N'16/01/2015', N'16/01/2016')
INSERT [dbo].[DangDoan] ([ID], [MaNS], [LoaiToChuc], [NgayVao], [NgayChinhThuc]) VALUES (N'05', N'GV5', N'Tốt', N'20/12/2016', N'20/12/2017')
INSERT [dbo].[DangDoan] ([ID], [MaNS], [LoaiToChuc], [NgayVao], [NgayChinhThuc]) VALUES (N'06', N'GV6', N'Tốt', N'18/03/2012', N'18/03/2013')
GO
INSERT [dbo].[KTvaKL] ([ID], [MaGV], [HinhThuc], [LyDo], [Nam], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'01', N'GV1', N'Khen thưởng', N'Giảng viên ưu tú', N'2022', N'20/09/2022', N'2147', N'Đại học Sài Gòn', NULL)
INSERT [dbo].[KTvaKL] ([ID], [MaGV], [HinhThuc], [LyDo], [Nam], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'02', N'GV2', N'Khen thưởng', N'Chiến sĩ thi đua', N'2023', N'08/08/2023', N'1746', N'Đại học Sài Gòn', NULL)
INSERT [dbo].[KTvaKL] ([ID], [MaGV], [HinhThuc], [LyDo], [Nam], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'03', N'GV3', N'Khen thưởng', N'Chiến sĩ thi đua', N'2023', N'08/08/2023', N'1746', N'Đại học Sài Gòn', NULL)
INSERT [dbo].[KTvaKL] ([ID], [MaGV], [HinhThuc], [LyDo], [Nam], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'04', N'GV4', N'Khen thưởng', N'Giảng viên ưu tú', N'2022', N'20/09/2022', N'2147', N'Đại học Sài Gòn', NULL)
INSERT [dbo].[KTvaKL] ([ID], [MaGV], [HinhThuc], [LyDo], [Nam], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'05', N'GV5', N'Khen thưởng', N'Chiến sĩ thi đua', N'2023', N'08/08/2023', N'1746', N'Đại học Sài Gòn', NULL)
INSERT [dbo].[KTvaKL] ([ID], [MaGV], [HinhThuc], [LyDo], [Nam], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'06', N'GV6', N'Khen thưởng', N'Chiến sĩ thi đua', N'2023', N'08/08/2023', N'1746', N'Đại học Sài Gòn', NULL)
GO
INSERT [dbo].[NghiHuu] ([ID], [MaGV], [DonViTiepNhan], [NgayNghiHuu], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'01', N'GV1', N'Đại học Sài Gòn', N'17/05/2036', N'18/11/2020', N'135', N'Cơ Quan Nhà nước', NULL)
INSERT [dbo].[NghiHuu] ([ID], [MaGV], [DonViTiepNhan], [NgayNghiHuu], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'02', N'GV2', N'Đại học Sài Gòn', N'17/06/2053', N'18/11/2020', N'135', N'Cơ Quan Nhà nước', NULL)
INSERT [dbo].[NghiHuu] ([ID], [MaGV], [DonViTiepNhan], [NgayNghiHuu], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'03', N'GV3', N'Đại học Sài Gòn', N'05/05/2036', N'18/11/2020', N'135', N'Cơ Quan Nhà nước', NULL)
INSERT [dbo].[NghiHuu] ([ID], [MaGV], [DonViTiepNhan], [NgayNghiHuu], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'04', N'GV4', N'Đại học Sài Gòn', N'22/11/2035', N'18/11/2020', N'135', N'Cơ Quan Nhà nước', NULL)
INSERT [dbo].[NghiHuu] ([ID], [MaGV], [DonViTiepNhan], [NgayNghiHuu], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'05', N'GV5', N'Đại học Sài Gòn', N'19/12/2046', N'18/11/2020', N'135', N'Cơ Quan Nhà nước', NULL)
INSERT [dbo].[NghiHuu] ([ID], [MaGV], [DonViTiepNhan], [NgayNghiHuu], [NgayQD], [SoQD], [CoQuanQD], [VBQD]) VALUES (N'06', N'GV6', N'Đại học Sài Gòn', N'30/05/2031', N'18/11/2020', N'135', N'Cơ Quan Nhà nước', NULL)
GO
INSERT [dbo].[TaiKhoan] ([MaGV], [MatKhau], [Email]) VALUES (N'GV1', N'123', N'thinhthinhhay2002@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaGV], [MatKhau], [Email]) VALUES (N'GV2', N'123', N'tranminhman1706@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaGV], [MatKhau], [Email]) VALUES (N'GV3', N'456', N'kimhue@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaGV], [MatKhau], [Email]) VALUES (N'GV4', N'456', N'lttrang@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaGV], [MatKhau], [Email]) VALUES (N'GV5', N'132', N'thonghoang@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaGV], [MatKhau], [Email]) VALUES (N'GV6', N'132', N'lyvan@gmail.com')
GO
INSERT [dbo].[ThongTinHoSoGV] ([MaGV], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Email], [QXa], [QTinh], [QHuyen], [NSXa], [NSTinh], [NSHuyen], [DanToc], [TonGiao], [TenGoiKhac], [DoiTuongCS], [XuatThan], [HocHam], [NgayVao], [ChieuCao], [CanNang], [NhomMau], [NhanXet], [AnhMau]) VALUES (N'GV1', N'Nguyễn Cao Thịnh', N'17/05/1975', N'Nam', N'0971325872', N'thinhthinhhay2002@gmail.com', N'Phú Tây ', N'TPHCM', N'Bình Chánh', N'Phú Tây', N'TPHCM', N'Bình Chánh', N'Kinh', N'Không', N'David', N'Không', N'Viên chức', N'Thạc sĩ', N'20/10/2015', N'1m70', N'65', N'A', N'Hòa đồng, vui tính', NULL)
INSERT [dbo].[ThongTinHoSoGV] ([MaGV], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Email], [QXa], [QTinh], [QHuyen], [NSXa], [NSTinh], [NSHuyen], [DanToc], [TonGiao], [TenGoiKhac], [DoiTuongCS], [XuatThan], [HocHam], [NgayVao], [ChieuCao], [CanNang], [NhomMau], [NhanXet], [AnhMau]) VALUES (N'GV2', N'Trần Minh Mẩn', N'17/06/1992', N'Nam', N'0703213796', N'tranminhman1706@gmail.com', N'Phú Đông', N'Đồng Nai', N'Nhơn Trạch', N'Phú Đông', N'Đồng Nai', N'Nhơn Trạch', N'Kinh', N'Không', N'Không', N'Không', N'Nông dân', N'Tiến sĩ', N'13/09/2019', N'1m68', N'63', N'O', N'Nhiệt tình, Nghiêm túc', NULL)
INSERT [dbo].[ThongTinHoSoGV] ([MaGV], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Email], [QXa], [QTinh], [QHuyen], [NSXa], [NSTinh], [NSHuyen], [DanToc], [TonGiao], [TenGoiKhac], [DoiTuongCS], [XuatThan], [HocHam], [NgayVao], [ChieuCao], [CanNang], [NhomMau], [NhanXet], [AnhMau]) VALUES (N'GV3', N'Trịnh Kim Huệ', N'05/05/1980', N'Nữ', N'0779821765', N'kimhue@gmail.com', N'Bình Mỹ', N'TPHCM', N'Củ Chi', N'Bình Mỹ', N'TPHCM', N'Củ Chi', N'Kinh', N'Không', N'Huệ Trịnh', N'Không', N'Tiểu thương', N'Thạc sĩ', N'10/02/2017', N'1m58', N'45', N'B', N'Vui Tính, Trách nhiệm', NULL)
INSERT [dbo].[ThongTinHoSoGV] ([MaGV], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Email], [QXa], [QTinh], [QHuyen], [NSXa], [NSTinh], [NSHuyen], [DanToc], [TonGiao], [TenGoiKhac], [DoiTuongCS], [XuatThan], [HocHam], [NgayVao], [ChieuCao], [CanNang], [NhomMau], [NhanXet], [AnhMau]) VALUES (N'GV4', N'Lê Thị Trang', N'22/11/1979', N'Nữ', N'0732145376', N'lttrang@gmail.com', N'Huyền Hội', N'Trà Vinh', N'Càng Long', N'Huyền Hội', N'Trà Vinh', N'Càng Long', N'Kinh', N'Không', N'Lisa', N'Không', N'Viên chức', N'Tiến sĩ', N'14/02/2010', N'1m59', N'50', N'A', N'Trách nhiệm, siêng năng', NULL)
INSERT [dbo].[ThongTinHoSoGV] ([MaGV], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Email], [QXa], [QTinh], [QHuyen], [NSXa], [NSTinh], [NSHuyen], [DanToc], [TonGiao], [TenGoiKhac], [DoiTuongCS], [XuatThan], [HocHam], [NgayVao], [ChieuCao], [CanNang], [NhomMau], [NhanXet], [AnhMau]) VALUES (N'GV5', N'Nguyễn Hoàng Thông', N'19/12/1985', N'Nam', N'0782939872', N'thonghoang@gmail.com', N'Tân Thạnh Đông', N'TPHCM', N'Củ Chi', N'Tân Thạnh Đông', N'TPHCM', N'Củ Chi', N'Kinh', N'Không', N'Không', N'Không', N'Viên chức', N'Thạc sĩ', N'11/07/2019', N'1m77', N'60', N'O', N'Nhiệt tình, Sáng tạo', NULL)
INSERT [dbo].[ThongTinHoSoGV] ([MaGV], [HoTen], [NgaySinh], [GioiTinh], [SDT], [Email], [QXa], [QTinh], [QHuyen], [NSXa], [NSTinh], [NSHuyen], [DanToc], [TonGiao], [TenGoiKhac], [DoiTuongCS], [XuatThan], [HocHam], [NgayVao], [ChieuCao], [CanNang], [NhomMau], [NhanXet], [AnhMau]) VALUES (N'GV6', N'Lý Văn', N'30/05/1970', N'Nam', N'0965201039', N'lyvan@gmail.com', N'Kim Long', N'BRVT', N'Châu Đức', N'Kim Long', N'BRVT', N'Châu Đức', N'Kinh', N'Không', N'Không', N'Không', N'Viên chức', N'Phó giáo sư, Tiến sĩ', N'07/02/2008', N'1m72', N'70', N'A', N'Nghiêm túc, Sáng tạo', NULL)
GO
ALTER TABLE [dbo].[BanThanOCheDoCu]  WITH CHECK ADD  CONSTRAINT [FKBTOCDCGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BanThanOCheDoCu] CHECK CONSTRAINT [FKBTOCDCGV]
GO
ALTER TABLE [dbo].[BaoHiem]  WITH CHECK ADD  CONSTRAINT [FKBHGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BaoHiem] CHECK CONSTRAINT [FKBHGV]
GO
ALTER TABLE [dbo].[BCHD]  WITH CHECK ADD  CONSTRAINT [FKBCHDGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BCHD] CHECK CONSTRAINT [FKBCHDGV]
GO
ALTER TABLE [dbo].[BiBatBiTu]  WITH CHECK ADD  CONSTRAINT [FKBBBTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BiBatBiTu] CHECK CONSTRAINT [FKBBBTGV]
GO
ALTER TABLE [dbo].[BietPhai]  WITH CHECK ADD  CONSTRAINT [FKBPGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BietPhai] CHECK CONSTRAINT [FKBPGV]
GO
ALTER TABLE [dbo].[BoiDuongANQP]  WITH CHECK ADD  CONSTRAINT [FKBDANQPGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BoiDuongANQP] CHECK CONSTRAINT [FKBDANQPGV]
GO
ALTER TABLE [dbo].[BoiDuongChuyenMon]  WITH CHECK ADD  CONSTRAINT [FKBDCMGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BoiDuongChuyenMon] CHECK CONSTRAINT [FKBDCMGV]
GO
ALTER TABLE [dbo].[BoiDuongLyLuanChinhTri]  WITH CHECK ADD  CONSTRAINT [FKBDLLCTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BoiDuongLyLuanChinhTri] CHECK CONSTRAINT [FKBDLLCTGV]
GO
ALTER TABLE [dbo].[BoiDuongNgoaiNguDanToc]  WITH CHECK ADD  CONSTRAINT [FKBDNNDTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BoiDuongNgoaiNguDanToc] CHECK CONSTRAINT [FKBDNNDTGV]
GO
ALTER TABLE [dbo].[BoiDuongQuanLyNhaNuoc]  WITH CHECK ADD  CONSTRAINT [FKBDQLNNGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BoiDuongQuanLyNhaNuoc] CHECK CONSTRAINT [FKBDQLNNGV]
GO
ALTER TABLE [dbo].[BoiDuongTinHoc]  WITH CHECK ADD  CONSTRAINT [FKBDTHGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[BoiDuongTinHoc] CHECK CONSTRAINT [FKBDTHGV]
GO
ALTER TABLE [dbo].[CongTacDangDoan]  WITH CHECK ADD  CONSTRAINT [FKCTDDGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[CongTacDangDoan] CHECK CONSTRAINT [FKCTDDGV]
GO
ALTER TABLE [dbo].[CongViecChinh]  WITH CHECK ADD  CONSTRAINT [FKCVCGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[CongViecChinh] CHECK CONSTRAINT [FKCVCGV]
GO
ALTER TABLE [dbo].[CongViecChinh]  WITH CHECK ADD  CONSTRAINT [FKCVCVTVL] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ViTriViecLam] ([ID])
GO
ALTER TABLE [dbo].[CongViecChinh] CHECK CONSTRAINT [FKCVCVTVL]
GO
ALTER TABLE [dbo].[CuDiHoc]  WITH CHECK ADD  CONSTRAINT [FKCDHGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[CuDiHoc] CHECK CONSTRAINT [FKCDHGV]
GO
ALTER TABLE [dbo].[DangDoan]  WITH CHECK ADD  CONSTRAINT [FKDDGV] FOREIGN KEY([MaNS])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[DangDoan] CHECK CONSTRAINT [FKDDGV]
GO
ALTER TABLE [dbo].[DanhHieuNhaNuocTang]  WITH CHECK ADD  CONSTRAINT [FKDHNNTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[DanhHieuNhaNuocTang] CHECK CONSTRAINT [FKDHNNTGV]
GO
ALTER TABLE [dbo].[HoKhauThuongTru]  WITH CHECK ADD  CONSTRAINT [FKHKTTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[HoKhauThuongTru] CHECK CONSTRAINT [FKHKTTGV]
GO
ALTER TABLE [dbo].[KiemNhiem]  WITH CHECK ADD  CONSTRAINT [FKKNGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[KiemNhiem] CHECK CONSTRAINT [FKKNGV]
GO
ALTER TABLE [dbo].[KiemNhiem]  WITH CHECK ADD  CONSTRAINT [FKKNVTVL] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ViTriViecLam] ([ID])
GO
ALTER TABLE [dbo].[KiemNhiem] CHECK CONSTRAINT [FKKNVTVL]
GO
ALTER TABLE [dbo].[KTvaKL]  WITH CHECK ADD  CONSTRAINT [FKKTKLGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[KTvaKL] CHECK CONSTRAINT [FKKTKLGV]
GO
ALTER TABLE [dbo].[LSDN]  WITH CHECK ADD  CONSTRAINT [FKLSDNGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[LSDN] CHECK CONSTRAINT [FKLSDNGV]
GO
ALTER TABLE [dbo].[LuongThuong]  WITH CHECK ADD  CONSTRAINT [FKLTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[LuongThuong] CHECK CONSTRAINT [FKLTGV]
GO
ALTER TABLE [dbo].[NangLuongTruocHan]  WITH CHECK ADD  CONSTRAINT [FKNLTHLT] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[LuongThuong] ([ID])
GO
ALTER TABLE [dbo].[NangLuongTruocHan] CHECK CONSTRAINT [FKNLTHLT]
GO
ALTER TABLE [dbo].[NghiHuu]  WITH CHECK ADD  CONSTRAINT [FKNHGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[NghiHuu] CHECK CONSTRAINT [FKNHGV]
GO
ALTER TABLE [dbo].[NhapNgu]  WITH CHECK ADD  CONSTRAINT [FKNNGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[NhapNgu] CHECK CONSTRAINT [FKNNGV]
GO
ALTER TABLE [dbo].[NoiOHienTai]  WITH CHECK ADD  CONSTRAINT [FKNOHTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[NoiOHienTai] CHECK CONSTRAINT [FKNOHTGV]
GO
ALTER TABLE [dbo].[NoiSinh]  WITH CHECK ADD  CONSTRAINT [FKNSGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[NoiSinh] CHECK CONSTRAINT [FKNSGV]
GO
ALTER TABLE [dbo].[PhuCap]  WITH CHECK ADD  CONSTRAINT [FKPCLT] FOREIGN KEY([MaLuong])
REFERENCES [dbo].[LuongThuong] ([ID])
GO
ALTER TABLE [dbo].[PhuCap] CHECK CONSTRAINT [FKPCLT]
GO
ALTER TABLE [dbo].[QHGD]  WITH CHECK ADD  CONSTRAINT [FKQHGDGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[QHGD] CHECK CONSTRAINT [FKQHGDGV]
GO
ALTER TABLE [dbo].[QHTCNuocNgoai]  WITH CHECK ADD  CONSTRAINT [FKQHTCNNGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[QHTCNuocNgoai] CHECK CONSTRAINT [FKQHTCNNGV]
GO
ALTER TABLE [dbo].[QuaTrinhLuong]  WITH CHECK ADD  CONSTRAINT [FKQTLGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[QuaTrinhLuong] CHECK CONSTRAINT [FKQTLGV]
GO
ALTER TABLE [dbo].[QueQuan]  WITH CHECK ADD  CONSTRAINT [FKQQGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[QueQuan] CHECK CONSTRAINT [FKQQGV]
GO
ALTER TABLE [dbo].[ThamGiaToChucCTXH]  WITH CHECK ADD  CONSTRAINT [FKTGTCCTXHGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[ThamGiaToChucCTXH] CHECK CONSTRAINT [FKTGTCCTXHGV]
GO
ALTER TABLE [dbo].[ThongTinCCCD]  WITH CHECK ADD  CONSTRAINT [FKTTCCCDGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[ThongTinCCCD] CHECK CONSTRAINT [FKTTCCCDGV]
GO
ALTER TABLE [dbo].[TomTatQuaTrinhCongTac]  WITH CHECK ADD  CONSTRAINT [FKTTQTCTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[TomTatQuaTrinhCongTac] CHECK CONSTRAINT [FKTTQTCTGV]
GO
ALTER TABLE [dbo].[TrinhDoChuyenMonCaoNhat]  WITH CHECK ADD  CONSTRAINT [FKTDCMCNGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[TrinhDoChuyenMonCaoNhat] CHECK CONSTRAINT [FKTDCMCNGV]
GO
ALTER TABLE [dbo].[TrinhDoGDPhoThong]  WITH CHECK ADD  CONSTRAINT [FKTDGDPTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[TrinhDoGDPhoThong] CHECK CONSTRAINT [FKTDGDPTGV]
GO
ALTER TABLE [dbo].[TuyenDungLanDau]  WITH CHECK ADD  CONSTRAINT [FKTDLDGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[TuyenDungLanDau] CHECK CONSTRAINT [FKTDLDGV]
GO
ALTER TABLE [dbo].[ViTriViecLam]  WITH CHECK ADD  CONSTRAINT [FKVTVLCV] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([ID])
GO
ALTER TABLE [dbo].[ViTriViecLam] CHECK CONSTRAINT [FKVTVLCV]
GO
ALTER TABLE [dbo].[ViTriViecLam]  WITH CHECK ADD  CONSTRAINT [FKVTVLNLV] FOREIGN KEY([MaNLV])
REFERENCES [dbo].[NoiLamViec] ([ID])
GO
ALTER TABLE [dbo].[ViTriViecLam] CHECK CONSTRAINT [FKVTVLNLV]
GO
ALTER TABLE [dbo].[XacThuc]  WITH CHECK ADD  CONSTRAINT [FKXTGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[ThongTinHoSoGV] ([MaGV])
GO
ALTER TABLE [dbo].[XacThuc] CHECK CONSTRAINT [FKXTGV]
GO
/****** Object:  StoredProcedure [dbo].[GetAccount]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetAccount]
@userName nvarchar(100)
AS
BEGIN
	SELECT * FROM dbo.Taikhoan WHERE TenTK = @userName
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllAccount]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllAccount]
AS 
Begin		
	Select TaiKhoan.MaGV as 'Mã Giảng Viên', ThongTinHoSoGV.HoTen as 'Họ Và Tên', MatKhau as 'Mật Khẩu' From TaiKhoan, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = TaiKhoan.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllBCHD]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllBCHD]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', LoaiHinh as 'Loại hình', NgayTD as 'Ngày tuyển dụng', NgayKT as 'Ngày kết thúc' From BCHD,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =BCHD.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllBH]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllBH]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', BHXH as 'BHXH', TyLeBHXH as 'Tỷ lệ BHXH', BHTN as 'BHTN', TyLeBHTN as 'Tỷ lệ BHTN',  BHYT as 'BHYT', TyLeBHYT as 'Tỷ lệ BHYT'  From BaoHiem, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = BaoHiem.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllBietPhai]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/* sp_rename 'ThongTinHoSoGV.NSPhuong', 'NSTinh', 'COLUMN';*/
/*CREATE PROC proc_login
@user nvarchar(30),
/*@LoaiTK nvarchar(30),*/
@pass nvarchar(30)
AS
BEGIN
	SELECT * FROM Taikhoan WHERE TenTK = @user AND Matkhau = @pass  /*AND LoaiTK = @LoaiTK*/
END*/



/*DROP PROC proc_login*/

/*CREATE PROC proc_LoaiTK
@user nvarchar(30),
@pass nvarchar(30)
AS
BEGIN
	SELECT LoaiTK FROM TaiKhoan WHERE TenTK = @user AND Matkhau = @pass
END

DROP PROC proc_LoaiTK

CREATE PROC proc_Matkhau
@user nvarchar(30),
@Email nvarchar(50)
AS 
Begin		
	Select Matkhau From Taikhoan where TenTK = @user AND Email = @Email
END

CREATE PROC GetAllAccount
AS 
Begin		
	Select ThongTinHoSoGV.MaGV as 'Mã Giảng Viên', ThongTinHoSoGV.HoTen as 'Họ Và Tên', Matkhau as 'Mật Khẩu' From TaiKhoan, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = TaiKhoan.MaGV
END

CREATE PROC GetAllBH
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', BHXH as 'BHXH', TyLeBHXH as 'Tỷ lệ BHXH', BHTN as 'BHTN', TyLeBHTN as 'Tỷ lệ BHTN',  BHYT as 'BHYT', TyLeBHYT as 'Tỷ lệ BHYT'  From BaoHiem, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = BaoHiem.MaGV
END */

/*CREATE PROC GetAllNghiHuu
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', DonViTiepNhan as 'Đơn vị tiếp nhận', NgayNghiHuu as 'Ngày nghỉ chính thức' From NghiHuu, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = NghiHuu.MaGV
END*/

/*CREATE PROC GetAllDangDoan
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', ToChucDang as 'Tổ chức', ChucVu as 'Chức vụ', DangDoan.NgayVao as 'Ngày vào', NgayChinhThuc as 'Ngày chính thức' From CongTacDangDoan, ThongTinHoSoGV, DangDoan Where ThongTinHoSoGV.MaGV = DangDoan.MaNS and ThongTinHoSoGV.MaGV = CongTacDangDoan.MaGV
END*/

/*CREATE PROC GetAllKTKL
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', HinhThuc as 'Hình thức', LyDo as 'Lý do', Nam as 'Năm' From KTvaKL,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =KTvaKL.MaGV
END*/

/*CREATE PROC GetAllCDH
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', CoQuanQD as 'Cơ sở ĐT', HinhThuc as 'Hình thức', ChuongTrinhDT as 'Chương trình ĐT', NienKhoa as 'Niên khóa', LoaiTrinhDo as 'Loại trình độ', ChuyenNganh as 'Chuyên ngành' From CuDiHoc,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =CuDiHoc.MaGV
END*/

/*CREATE PROC GetAllBCHD
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', LoaiHinh as 'Loại hình', NgayTD as 'Ngày tuyển dụng', NgayKT as 'Ngày kết thúc' From BCHD,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =BCHD.MaGV
END*/

CREATE PROC [dbo].[GetAllBietPhai]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', ChucVu as 'Chức vụ', PhongBan as 'Phòng ban', NgayBD as 'Ngày bắt đầu', NgayKT as 'Ngày kết thúc', ChucVuBanDau as 'Chức vụ ban đầu', HinhThuc as 'Hình thức' From BietPhai,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =BietPhai.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCDH]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllCDH]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', CoQuanQD as 'Cơ sở ĐT', HinhThuc as 'Hình thức', ChuongTrinhDT as 'Chương trình ĐT', NienKhoa as 'Niên khóa', LoaiTrinhDo as 'Loại trình độ', ChuyenNganh as 'Chuyên ngành' From CuDiHoc,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =CuDiHoc.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllDangDoan]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllDangDoan]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', ToChucDang as 'Tổ chức', ChucVu as 'Chức vụ', DangDoan.NgayVao as 'Ngày vào', NgayChinhThuc as 'Ngày chính thức' From CongTacDangDoan, ThongTinHoSoGV, DangDoan Where ThongTinHoSoGV.MaGV = DangDoan.MaNS and ThongTinHoSoGV.MaGV = CongTacDangDoan.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllKTKL]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllKTKL]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', HinhThuc as 'Hình thức', LyDo as 'Lý do', Nam as 'Năm' From KTvaKL,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =KTvaKL.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllNghiHuu]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllNghiHuu]
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', DonViTiepNhan as 'Đơn vị tiếp nhận', NgayNghiHuu as 'Ngày nghỉ chính thức' From NghiHuu, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = NghiHuu.MaGV
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Email]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[proc_Email]
@user nvarchar(30)
AS
BEGIN
	SELECT Email FROM TaiKhoan WHERE TenTK = @user
END
GO
/****** Object:  StoredProcedure [dbo].[proc_LoaiTK]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[proc_LoaiTK]
@user nvarchar(30),
@pass nvarchar(30)
AS
BEGIN
	SELECT LoaiTK FROM TaiKhoan WHERE TenTK = @user AND Matkhau = @pass
END
GO
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[proc_login]
@user nvarchar(30),
/*@LoaiTK nvarchar(30),*/
@pass nvarchar(30)
AS
BEGIN
	SELECT * FROM Taikhoan WHERE TenTK = @user AND Matkhau = @pass  /*AND LoaiTK = @LoaiTK*/
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Matkhau]    Script Date: 06/06/2024 6:36:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[proc_Matkhau]
@user nvarchar(30),
@Email nvarchar(50)
AS 
Begin		
	Select Matkhau From Taikhoan where TenTK = @user AND Email = @Email
END
GO
USE [master]
GO
ALTER DATABASE [QLNS] SET  READ_WRITE 
GO
