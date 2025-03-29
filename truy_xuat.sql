WITH DiemThanhPhan AS (
    SELECT 
        dkmh.MaSV,
        ROUND(AVG(d.diem), 3) AS Diem_TP,  -- Làm tròn đến 3 chữ số thập phân
        COUNT(*) AS SoLuongDiem  -- Đếm số lượng điểm thành phần
    FROM Diem d 
    JOIN DKMH dkmh ON d.id_dk = dkmh.id_dk
    GROUP BY dkmh.MaSV
)
SELECT 
    dkmh.id_dk, dkmh.MaSV, sv.HoTen,sv.NgaySinh, 
    dkmh.MaLopHP,dtp.Diem_TP, 
    dtp.SoLuongDiem, dkmh.DiemThi, dkmh.PhanTramThi,
    ROUND((dtp.Diem_TP * 0.4 + dkmh.DiemThi * dkmh.PhanTramThi), 3) AS DiemTong  -- Làm tròn đến 3 chữ số thập phân
FROM DKMH dkmh
JOIN SinhVien sv ON dkmh.MaSV = sv.MaSV
JOIN DiemThanhPhan dtp ON dkmh.MaSV = dtp.MaSV;
