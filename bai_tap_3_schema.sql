USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 29/03/2025 12:56:44 SA ******/
CREATE DATABASE [QLSV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'E:\Database\BaiTap_02\QLSV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'E:\Database\BaiTap_02\QLSV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLSV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLSV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLSV] SET  MULTI_USER 
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLSV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLSV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLSV] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLSV] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
ALTER DATABASE [QLSV] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLSV] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[BoMon]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoMon](
	[MaBM] [nchar](13) NOT NULL,
	[TenBM] [nvarchar](50) NOT NULL,
	[MaKhoa] [nchar](13) NOT NULL,
 CONSTRAINT [PK_BoMon] PRIMARY KEY CLUSTERED 
(
	[MaBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_BoMon_TenBM] UNIQUE NONCLUSTERED 
(
	[TenBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diem]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diem](
	[id] [nchar](13) NOT NULL,
	[id_dk] [nchar](13) NOT NULL,
	[diem] [float] NULL,
 CONSTRAINT [PK_diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DKMH]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKMH](
	[id_dk] [nchar](13) NOT NULL,
	[MaLopHP] [nchar](13) NOT NULL,
	[MaSV] [nchar](13) NOT NULL,
	[DiemThi] [float] NOT NULL,
	[PhanTramThi] [float] NOT NULL,
 CONSTRAINT [PK_DKMH] PRIMARY KEY CLUSTERED 
(
	[id_dk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GVCN]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GVCN](
	[MaLop] [nchar](13) NOT NULL,
	[MaGV] [nchar](13) NOT NULL,
	[HK] [int] NOT NULL,
 CONSTRAINT [PK_GVCN_1] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaGV] ASC,
	[HK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [nchar](13) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[MaBM] [nchar](13) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [nchar](13) NOT NULL,
	[TenKhoa] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Khoa_TenKhoa] UNIQUE NONCLUSTERED 
(
	[TenKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [nchar](13) NOT NULL,
	[TenLop] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Lop_TenLop] UNIQUE NONCLUSTERED 
(
	[TenLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHP](
	[MaLopHP] [nchar](13) NOT NULL,
	[TenLopHP] [nvarchar](50) NOT NULL,
	[HK] [int] NULL,
	[MaMon] [nchar](13) NOT NULL,
	[MaGV] [nchar](13) NOT NULL,
 CONSTRAINT [PK_LopHP] PRIMARY KEY CLUSTERED 
(
	[MaLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSV]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSV](
	[MaLop] [nchar](13) NOT NULL,
	[MaSV] [nchar](13) NOT NULL,
	[ChuVu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LopSV_1] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC,
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMon] [nchar](13) NOT NULL,
	[TenMon] [nvarchar](50) NULL,
	[STC] [int] NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 29/03/2025 12:56:44 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nchar](13) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BoMon]  WITH CHECK ADD  CONSTRAINT [FK_BoMon_BoMon_MaKhoa] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BoMon] CHECK CONSTRAINT [FK_BoMon_BoMon_MaKhoa]
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD  CONSTRAINT [FK_diem_id_dk] FOREIGN KEY([id_dk])
REFERENCES [dbo].[DKMH] ([id_dk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[diem] CHECK CONSTRAINT [FK_diem_id_dk]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_maLopHP] FOREIGN KEY([MaLopHP])
REFERENCES [dbo].[LopHP] ([MaLopHP])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_maLopHP]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [FK_DKMH_maSV] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [FK_DKMH_maSV]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GVCN_magv] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GVCN_magv]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [FK_GVCN_GVCN_malop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [FK_GVCN_GVCN_malop]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_GiaoVien_MaBM] FOREIGN KEY([MaBM])
REFERENCES [dbo].[BoMon] ([MaBM])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_GiaoVien_MaBM]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_maGV] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_maGV]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [FK_LopHP_maMon] FOREIGN KEY([MaMon])
REFERENCES [dbo].[MonHoc] ([MaMon])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [FK_LopHP_maMon]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_LopSV_malop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_LopSV_malop]
GO
ALTER TABLE [dbo].[LopSV]  WITH CHECK ADD  CONSTRAINT [FK_LopSV_LopSV_masv] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[LopSV] CHECK CONSTRAINT [FK_LopSV_LopSV_masv]
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD  CONSTRAINT [CK_diem] CHECK  (([diem]>=(0) AND [diem]<=(10)))
GO
ALTER TABLE [dbo].[diem] CHECK CONSTRAINT [CK_diem]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [CK_DKMH_diemThi] CHECK  (([DiemThi]>=(0) AND [DiemThi]<=(10)))
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [CK_DKMH_diemThi]
GO
ALTER TABLE [dbo].[DKMH]  WITH CHECK ADD  CONSTRAINT [CK_DKMH_PhanTramhi] CHECK  (([PhanTramThi]>=(0.4) AND [PhanTramThi]<=(0.6)))
GO
ALTER TABLE [dbo].[DKMH] CHECK CONSTRAINT [CK_DKMH_PhanTramhi]
GO
ALTER TABLE [dbo].[GVCN]  WITH CHECK ADD  CONSTRAINT [CK_GVCN_HK] CHECK  (([HK]>=(1) AND [HK]<=(3)))
GO
ALTER TABLE [dbo].[GVCN] CHECK CONSTRAINT [CK_GVCN_HK]
GO
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [CK_GiaoVien] CHECK  (([NgaySinh]>'1950-12-31' AND [NgaySinh]<='2025-12-31'))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK_GiaoVien]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [CK_LopHP_HK] CHECK  (([HK]>=(1) AND [HK]<=(3)))
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [CK_LopHP_HK]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [CK_MonHoc_STC] CHECK  (([STC]>=(1) AND [STC]<=(3)))
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [CK_MonHoc_STC]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [CK_SinhVien] CHECK  (([NgaySinh]>'1950-12-31' AND [NgaySinh]<='2025-12-31'))
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [CK_SinhVien]
GO
USE [master]
GO
ALTER DATABASE [QLSV] SET  READ_WRITE 
GO
