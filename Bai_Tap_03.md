# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

# DEADLINE: 23H59 NGÀY 30/03/2025

# ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

# BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

# YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

# HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

## DEADLINE: 23H59 NGÀY 30/03/2025

---------------------- hết bài tập 3-------------------------------------------
# Chú ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

Nhắc lại nội quy học tập:
SV vi phạm 1 trong các lỗi sau chỉ 1 lần sẽ bị cấm thi: 🚫
1. Nghỉ ko lý do chính đáng.
2. Không làm bài tập về nhà.
3. Vắng bài kiểm tra.
4. Nói chuyện tự do trong lớp.

Bên cạnh đó, sẽ có điểm thưởng 10đ cho sv :  🎁
1. Trả lời đúng câu hỏi trên lớp.
2. Hỏi câu hỏi làm thầy khó trả lời.

---NHẮC LẠI THỜI HẠN DEADLINE: 23H59 NGÀY 30/03/2025---

# Các bước làm :
## Bước 1 : Tạo bảng điểm và sửa bảng DKMH
1. Tạo bảng diem
- PK id

![diem](https://github.com/user-attachments/assets/e17aa664-a94e-4654-880f-1fb0c4623cce)

- CK ( 0 <= diem <=10 )

![ck_diem](https://github.com/user-attachments/assets/ad87f1a3-3d2e-4a44-a3e6-0116b432c5df)

2. Cập nhật bảng DKMH
- Tạo thêm cột id_dk ( đặt là PK )
- Xóa cột DiemTP

![DKMH](https://github.com/user-attachments/assets/db6eb7cf-b3cb-46eb-b388-656587b1919b)

## Bước 2 : Nhập dữ liệu cho các bảng
1. Bảng SinhVien

![sinhvien](https://github.com/user-attachments/assets/ee140e98-4375-43f0-83f6-8cd7853de411)

2. Bảng điểm
- Nhập dữ liệu chưa tồn tại của Khóa ngoại

![ttdiem](https://github.com/user-attachments/assets/ecb81fdf-712c-484e-a92f-93f2fa58731a)

### Cách khắc phục thêm dữ liệu vào bảng DKMH

3. Bảng DKMH

![ttDKMH](https://github.com/user-attachments/assets/59bec50b-cf85-4162-8599-b6dc6d6b7269)

- Sau khi thêm dữ liệu còn thiếu Bảng diem đã được thêm dữ liệu

![Screenshot 2025-03-29 124424](https://github.com/user-attachments/assets/c8f7e089-f78f-467f-9c24-a54e6408679c)

- Như vậy là đã tạo thêm dữ liệu thành công

### Các bảng còn lại tương tự
### * Chú ý :
#### - Nhập điểm phải đúng điều kiện CK ( 0 <= diem <= 10 )
#### - Nếu nhập dữ liệu của FK không được tức là trong bảng mà FK làm khóa chính chưa tồn tại dữ liệu phải nhập trong bảng mà FK làm khóa chính trước

## Bước 3 : Tạo Diagram Sơ đồ liên kết của các bảng

1. Tạo Diagram

![sodo](https://github.com/user-attachments/assets/8943c709-f1b1-46db-9bb1-2985fa4aed97)

2. Sơ đồ liên kết 1 nhiều

![sodolk](https://github.com/user-attachments/assets/7aa050bb-9a78-453f-9b29-5d4210068232)

#### Sơ đồ quan hệ giữa các bảng trong hệ thống thể hiện các ràng buộc quan trọng của database. Các đường nối giữa các bảng thể hiện các mối quan hệ 1 - nhiều giữa khóa chính (PK) và khóa ngoại (FK):
#### - Sinh viên (SinhVien) có thể đăng ký nhiều lớp học phần (DKMH), nhưng mỗi đăng ký chỉ thuộc về một sinh viên duy nhất.
#### - Lớp học phần (LopHP) chứa nhiều sinh viên đăng ký (DKMH), nhưng mỗi đăng ký chỉ thuộc về một lớp học phần.
#### - Giáo viên (GiaoVien) thuộc về một bộ môn (BoMon), nhưng một bộ môn có thể có nhiều giáo viên.
#### - Môn học (MonHoc) có thể có nhiều lớp học phần (LopHP), nhưng mỗi lớp học phần chỉ thuộc về một môn học cụ thể.
#### - Việc sử dụng khóa chính và khóa ngoại giúp đảm bảo tính toàn vẹn dữ liệu và tránh trùng lặp. Khi thực hiện truy vấn, ta có thể kết hợp các bảng này để lấy thông tin chi tiết về sinh viên, điểm số, lớp học phần, giảng viên, và các bộ môn liên quan.

## Bước 4 : Truy vẫn dữ liệu 
### Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần
#### - Ta sẽ truy vẫn dữ liệu trong 3 bảng SinhVien, diem, DKMH
#### 1. Dữ liệu bảng SinhVien

![Screenshot 2025-03-29 131427](https://github.com/user-attachments/assets/9910c59a-ce86-4a37-bc56-6c97084374a3)

#### 2. Dữ liệu bảng DKMH

![Screenshot 2025-03-29 131540](https://github.com/user-attachments/assets/5f24a43c-04cd-4eae-9605-9da8d9f14587)

#### 3. Dữ liệu bảng diem

![Screenshot 2025-03-29 131604](https://github.com/user-attachments/assets/dae274fb-e1b4-4bb9-8d45-79c69700d3cb)

#### - Truy vấn và tính điểm 
1. Tạo new Query

![Screenshot 2025-03-29 131713](https://github.com/user-attachments/assets/7d667309-c0a4-4c06-b735-6dc13f751a9a)

2. Viết lệnh để truy xuất và tính điểm TP , điểm Tong

![Screenshot 2025-03-29 131952](https://github.com/user-attachments/assets/7dc2dbc1-ceaf-4bc4-89a3-b9d0f4931369)

#### Kết quả 
#### - Truy vấn dữ liệu trong các bảng cần thiết và Tính được điểm TP khi có nhiều điểm Tp với công thức: ĐiểmTP = Tổng các điểm / số lượng điểm

![Screenshot 2025-03-29 132255](https://github.com/user-attachments/assets/abaae791-3edf-4511-b118-4ee8cafd01e4)

## Xuất file Cấu trúc DB ( bai_tap_3_schema.sql )

![Screenshot 2025-03-29 132745](https://github.com/user-attachments/assets/8bc34c56-f023-4dd1-87c2-21ade395e7e6)

## Xuất file dữ liệu đã nhập ( bai_tap_3_data.sql )

![Screenshot 2025-03-29 132803](https://github.com/user-attachments/assets/0425957e-e998-4ec4-aa23-5404aaad57eb)

## THE END
