USE [QLSV]
GO
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'mon1         ', N'toán', 2)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'mon2         ', N'anh', 2)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'mon3         ', N'sử', 3)
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [STC]) VALUES (N'mon4         ', N'văn', 1)
GO
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'khoa3        ', N'cơ')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'khoa1        ', N'điện')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'khoa4        ', N'ô tô')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (N'khoa2        ', N'tử')
GO
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'mon1         ', N'toán', N'khoa1        ')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'mon2         ', N'văn', N'khoa2        ')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'mon3         ', N'anh', N'khoa3        ')
INSERT [dbo].[BoMon] ([MaBM], [TenBM], [MaKhoa]) VALUES (N'mon4         ', N'tin', N'khoa4        ')
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [MaBM]) VALUES (N'gv1          ', N'khiêm', CAST(N'2020-09-09' AS Date), N'mon1         ')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [MaBM]) VALUES (N'gv2          ', N'như', CAST(N'2022-02-22' AS Date), N'mon2         ')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [MaBM]) VALUES (N'gv3          ', N'nguyễn', CAST(N'2004-06-05' AS Date), N'mon3         ')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen], [NgaySinh], [MaBM]) VALUES (N'gv5          ', N'ABC', CAST(N'2003-01-22' AS Date), N'mon4         ')
GO
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'malop1       ', N'toán', 1, N'mon1         ', N'gv1          ')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'malop2       ', N'chạy', 2, N'mon3         ', N'gv2          ')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'malop3       ', N'tin', 3, N'mon2         ', N'gv3          ')
INSERT [dbo].[LopHP] ([MaLopHP], [TenLopHP], [HK], [MaMon], [MaGV]) VALUES (N'malop5       ', N'văn', 1, N'mon4         ', N'gv5          ')
GO
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [NgaySinh]) VALUES (N'sv1          ', N'Nguễn', CAST(N'2024-01-02' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [NgaySinh]) VALUES (N'sv2          ', N'Như', CAST(N'2020-02-02' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [NgaySinh]) VALUES (N'sv3          ', N'Khiêm', CAST(N'2000-09-02' AS Date))
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [NgaySinh]) VALUES (N'sv5          ', N'Nguyễn Văn A', CAST(N'2002-02-22' AS Date))
GO
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (N'dk1          ', N'malop1       ', N'sv1          ', 5, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (N'dk2          ', N'malop2       ', N'sv3          ', 8, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (N'dk3          ', N'malop3       ', N'sv2          ', 7, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [MaLopHP], [MaSV], [DiemThi], [PhanTramThi]) VALUES (N'dk5          ', N'malop5       ', N'sv5          ', 9, 0.6)
GO
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'ml1          ', N'10a')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'ml2          ', N'10b')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (N'ml3          ', N'11c')
GO
INSERT [dbo].[LopSV] ([MaLop], [MaSV], [ChuVu]) VALUES (N'ml1          ', N'sv1          ', N'thanh vien')
INSERT [dbo].[LopSV] ([MaLop], [MaSV], [ChuVu]) VALUES (N'ml2          ', N'sv3          ', N'lớp phó')
INSERT [dbo].[LopSV] ([MaLop], [MaSV], [ChuVu]) VALUES (N'ml3          ', N'sv2          ', N'lớp trưởng')
GO
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id1          ', N'dk1          ', 10)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id10         ', N'dk5          ', 2)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id2          ', N'dk2          ', 9)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id3          ', N'dk3          ', 10)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id4          ', N'dk3          ', 10)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id5          ', N'dk2          ', 7)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id6          ', N'dk1          ', 3)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id7          ', N'dk2          ', 1)
INSERT [dbo].[diem] ([id], [id_dk], [diem]) VALUES (N'id8          ', N'dk3          ', 2)
GO
