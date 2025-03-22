# k58kmt
# Bài tập 02 của sinh viên : K225480106030 - Nguyễn Như Khiêm - Môn hệ quản trị CSDL
# BÀI TẬP VỀ NHÀ 02 - MÔN HỆ QUẢN TRỊ CSDL:
# DEADLINE: 23H59 NGÀY 25/03/2025

# ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
1. Đã cài đặt SQL Server 2022 Dev.
2. Đã cài đặt SQL Managerment Studio bản mới nhất.
3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

# BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

# YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql


# HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

# Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.


# Quá trình các bước làm :
## Bước 1: Tạo DATABASE 
![1](https://github.com/user-attachments/assets/43e68684-8e6c-4223-b017-d86d47a42fdf)

## Bước 2 : Tạo bảng
1. Tạo bảng SinhVien(#masv,hoten,NgaySinh)

![2](https://github.com/user-attachments/assets/7daddd22-b1ef-4a8b-97dc-5d738b8a6185)

Tạo các cột và chọn kiểu cho từng thuộc tính gồm (#masv,hoten,NgaySinh)
![3](https://github.com/user-attachments/assets/2cb017c5-4271-4f07-ae7a-c68f2a9378a6)

Ctrl S để lưu bảng 
![4](https://github.com/user-attachments/assets/d3ee1182-287d-4109-b9ce-05f93b4c6ff1)

Tiếp tục tạo bảng tiếp theo
![5](https://github.com/user-attachments/assets/195d4007-be31-4e9e-b455-2eb978dfc25e)

## Làm tương tự các bảng còn lại

2. Tạo bảng Lop(#maLop,tenLop)

![lop](https://github.com/user-attachments/assets/b46a3cd1-80ca-4353-92ba-74240b2ca5ac)

3. Tạo bảng GVCN(#@maLop,#@magv,#HK)

![GVCN](https://github.com/user-attachments/assets/75ee74ac-ffc7-4c56-8acd-9a419e580353)

4. Tạo bảng LopSV(#@maLop,#@maSV,ChucVu)

![lopSV](https://github.com/user-attachments/assets/f9ab229b-215b-4c55-b23f-3f99998160e1)

5. Tạo bảng GiaoVien(#magv,hoten,NgaySinh,@maBM)

![Giaovien](https://github.com/user-attachments/assets/43f6d17b-8afd-48c1-b9f7-479eb0d89da9)


6. Tạo bảng BoMon(#MaBM,tenBM,@maKhoa)

![BoMon](https://github.com/user-attachments/assets/e752c2fe-1bbf-403f-b45d-f259f00af219)


7. Tạo bảng Khoa(#maKhoa,tenKhoa)

![khoa](https://github.com/user-attachments/assets/24f0bf8a-ea56-4d5a-8499-e6bef8114b55)


8. Tạo bảng MonHoc(#mamon,Tenmon,STC)

![MonHoc](https://github.com/user-attachments/assets/837b8523-c69d-4a7b-bac4-b464337e61de)


9. Tạo bảng LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)

![LopHP](https://github.com/user-attachments/assets/d0d6f9b4-c868-4df7-9336-043279414cb1)


10. Tạo bảng  DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

![DKMH](https://github.com/user-attachments/assets/ed18fcc7-0883-4b6b-bf82-b444bc8303fb)

## Bước 3 : Tạo khóa chính (PK) , Khóa ngoại (FK) , Ràng buộc (CK)
1. Bảng SinhVien























































































