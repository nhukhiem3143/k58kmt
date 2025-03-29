WITH DiemThanhPhan AS (
    SELECT 
        dkmh.id_dk, 
        dkmh.MaSV, 
        ROUND(AVG(d.diem), 3) AS Diem_TP,  -- Tính điểm trung bình thành phần
        COUNT(*) AS SoLuongDiem  -- Đếm số lượng điểm thành phần của từng id_dk
    FROM Diem d 
    JOIN DKMH dkmh ON d.id_dk = dkmh.id_dk
    GROUP BY dkmh.id_dk, dkmh.MaSV  
)
SELECT 
    dkmh.id_dk, dkmh.MaSV, sv.HoTen, sv.NgaySinh, 
    dkmh.MaLopHP, dtp.Diem_TP, 
    dtp.SoLuongDiem, dkmh.DiemThi, dkmh.PhanTramThi,
    ROUND((dtp.Diem_TP * (1 - dkmh.PhanTramThi) + dkmh.DiemThi * dkmh.PhanTramThi), 3) AS DiemTong  -- Tính tổng điểm
FROM DKMH dkmh
JOIN SinhVien sv ON dkmh.MaSV = sv.MaSV
JOIN DiemThanhPhan dtp ON dkmh.id_dk = dtp.id_dk; 
