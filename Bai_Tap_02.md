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

🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀
# Quá trình các bước làm : 
## Bước 1: Tạo DATABASE 
![1](https://github.com/user-attachments/assets/43e68684-8e6c-4223-b017-d86d47a42fdf)

🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀
## Bước 2 : Tạo bảng
1. Tạo bảng SinhVien(#masv,hoten,NgaySinh)

![2](https://github.com/user-attachments/assets/7daddd22-b1ef-4a8b-97dc-5d738b8a6185)

Tạo các cột và chọn kiểu cho từng thuộc tính gồm (#masv,hoten,NgaySinh)
![3](https://github.com/user-attachments/assets/2cb017c5-4271-4f07-ae7a-c68f2a9378a6)

✅ Ctrl S để lưu bảng

![4](https://github.com/user-attachments/assets/d3ee1182-287d-4109-b9ce-05f93b4c6ff1)

✅ Tiếp tục tạo bảng tiếp theo

![5](https://github.com/user-attachments/assets/195d4007-be31-4e9e-b455-2eb978dfc25e)

🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀
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

🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀
## Bước 3 : Tạo khóa chính (PK) , Khóa ngoại (FK) , Ràng buộc (CK)
1. Bảng SinhVien

![3](https://github.com/user-attachments/assets/92798405-4f80-4706-8c9d-d8b43c0cb3ba)

✅ Tạo Check Constraints cho NgaySinh

![CK_SinhVien](https://github.com/user-attachments/assets/e4115bbf-31eb-47b8-824a-2be1f2d6716c)

![Ck](https://github.com/user-attachments/assets/3a4eefe7-0786-49eb-8fc9-f0531cfa88ad)

✅ Sau khi thực hiện xong thì Ctrl S để lưu lại Ck sẽ có tác dụng

![Ck (2)](https://github.com/user-attachments/assets/fdebef36-f428-4776-8c29-36b3fa5d3ec6)

✅ Để kiểm tra xem CK có tác dụng hay chưa 

![Screenshot 2025-03-23 201542](https://github.com/user-attachments/assets/6c203db0-0e1c-41a0-9e00-b69daad57406)

✅ Sau đó nhập giá trị khác với điều kiện đã đặt

![Screenshot 2025-03-23 201402](https://github.com/user-attachments/assets/6e7fc12f-d0e6-432f-b12f-5be056e2976a)

2. Bảng Lop ( tương tự bảng SinhVien )

![6](https://github.com/user-attachments/assets/fd79d006-c464-43f0-80a5-874e75e561db)

3. Bảng GVCN
## Trong bảng này có 3 khóa PK, trong đó malop và magv vừa là PK vừa là FK , Hk là PK ta làm như sau: 

![Screenshot 2025-03-23 204548](https://github.com/user-attachments/assets/961a5845-cd85-466e-95d7-98140d4e5a20)

✅ Sau đó để chọn FK Chuột phải chọn relationships

![Screenshot 2025-03-23 205046](https://github.com/user-attachments/assets/50b41f18-2e67-4eae-b64a-b7f02f3e23f8)

![Screenshot 2025-03-23 205236](https://github.com/user-attachments/assets/4d6b4294-3ca4-4c55-990b-626e43e051ad)

![Screenshot 2025-03-23 205709](https://github.com/user-attachments/assets/2c8d51f5-e6c2-4902-a22b-4a35cfa5f1c3)

✅ Ta chọn Update Rule : Cascade 

![Screenshot 2025-03-23 215939](https://github.com/user-attachments/assets/56966748-3af1-4222-9040-24aaff7b5f64)

✅ Tạo CK cho HK ( trong khoảng 1 - 3 ) 🛠️

![Screenshot 2025-03-23 210222](https://github.com/user-attachments/assets/87f2cedc-442f-4f47-bf9b-d772559d93b9)

✅ Sau đó Ctr S để lưu lại

🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀
## Các bảng sau làm tương tự

4. Bảng LopSV
- Malop (PK,FK) 🚀

![Screenshot 2025-03-23 211019](https://github.com/user-attachments/assets/443d6f0a-f1d2-4f9a-8576-17a6dff4a97b)

- MaSV (PK,FK) 🚀

![Screenshot 2025-03-23 211104](https://github.com/user-attachments/assets/9f5d96ac-777e-4507-918e-29201789e8bd)

![Screenshot 2025-03-23 211321](https://github.com/user-attachments/assets/02f637ac-64d6-4d3d-a68f-2602afa27dec)

5. Bảng GiaoVien
- MaBM (FK) 🚀

![Screenshot 2025-03-23 211757](https://github.com/user-attachments/assets/cef927f8-1752-417a-bafa-afe25bc13cfb)

- MaGV là PK 🚀

![Screenshot 2025-03-23 220440](https://github.com/user-attachments/assets/9f3264ed-3e94-4e50-a2d4-e6e26a557e26)


6. Bảng BoMon

- MaKhoa (FK) 🚀

![Screenshot 2025-03-23 220949](https://github.com/user-attachments/assets/d5c680d9-f347-466b-9b0b-8d50904325b0)

- MaBM (PK) 🚀

![Screenshot 2025-03-23 221106](https://github.com/user-attachments/assets/62317cc8-69ac-4d8a-862a-6f4c64a61a0c)


7. Bảng Khoa

- MaKhoa (PK) 🚀

![Screenshot 2025-03-23 221158](https://github.com/user-attachments/assets/d4ea5379-b560-44f9-999b-9d026fe7509d)

8. Bảng MonHoc

- MaMon (PK) 🚀

![Screenshot 2025-03-23 221321](https://github.com/user-attachments/assets/c47d754a-6f4c-4930-a682-2b871d07fedb)

- STC ( Check contraints ' 1 - 3 ' ) 🛠️

![Screenshot 2025-03-23 221504](https://github.com/user-attachments/assets/b6be0d0e-046b-4544-a935-b75b461d88ec)

9. Bảng LopHP

- MaLopHP (PK) 🛠️

![Screenshot 2025-03-23 221852](https://github.com/user-attachments/assets/ba868304-39da-42df-9d9b-bf36e672ed96)

- MaMon (FK) 🚀

![Screenshot 2025-03-23 222017](https://github.com/user-attachments/assets/fcc6c4a3-e845-4408-9923-8576b73ae67e)

- Magv (PK) 🚀

![Screenshot 2025-03-23 222130](https://github.com/user-attachments/assets/f167c776-3267-45a3-8b5f-829bca251d27)


- HK ( Check Contraint ' 1 - 3 ' ) 🛠️

![Screenshot 2025-03-23 221732](https://github.com/user-attachments/assets/a8acf64a-c258-42a7-a4e2-623c2dfdb9f0)

10. Bảng DKMH

- MaLopHP và MaSV vừa là PK vừa là FK 🚀

![Screenshot 2025-03-23 222315](https://github.com/user-attachments/assets/32719315-ff18-4441-a48f-8c29f7c8b1de)

- MaLopHP (FK) 🚀

![Screenshot 2025-03-23 222414](https://github.com/user-attachments/assets/b5f678a5-c1a6-40a5-8df5-2d0845f9c6af)

- MaSV (FK) 🚀

![Screenshot 2025-03-23 222456](https://github.com/user-attachments/assets/e043f2fe-8616-4888-80be-30a596437068)

- DiemTP ( Check Contraint ' 1 - 10 ' ) 🛠️

![Screenshot 2025-03-23 222848](https://github.com/user-attachments/assets/b2c9471f-b815-49ad-a353-21b2787ed2f9)

- DiemThi ( Check Contraint ' 1 - 10 ' ) 🛠️

![Screenshot 2025-03-23 223113](https://github.com/user-attachments/assets/2c374c59-d581-4be8-a5e3-da8946ac9ac3)


- PhanTramThi ( Check Contraint ' 1 - 100 ' ) 🛠️

![Screenshot 2025-03-23 223224](https://github.com/user-attachments/assets/d7e9bb19-946f-418a-9372-2077320a5ad8)

🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀🍀

## Bước 4 : Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql 🍀

1. Chọn vào QLSV ✅

![Screenshot 2025-03-23 224928](https://github.com/user-attachments/assets/a891b757-7c9e-400f-97bc-7e7f13d4b766)

2. Introduction ✅

![Screenshot 2025-03-23 225207](https://github.com/user-attachments/assets/ebbe2dcb-ffc7-404f-9889-0c21c4488adf)

3. Choose Objects ✅

![Screenshot 2025-03-23 224003](https://github.com/user-attachments/assets/ca490d95-022c-4347-9936-930a205e5fb8)

4. Set Scripting Options ✅

![Screenshot 2025-03-23 224539](https://github.com/user-attachments/assets/9789258c-c21a-45d2-95be-c05fc17a8330)

![Screenshot 2025-03-23 224649](https://github.com/user-attachments/assets/74473a13-8c43-4567-8cdd-317fb6e830c8)

![Screenshot 2025-03-23 224649](https://github.com/user-attachments/assets/196211cb-582a-4438-b352-877cfec091b7)

5. Summary ✅

![Screenshot 2025-03-23 224708](https://github.com/user-attachments/assets/1080087d-1702-4e3b-93ec-bfc086fd0a32)

6. Save Scripts ✅

![Screenshot 2025-03-23 224727](https://github.com/user-attachments/assets/a2d9b5cf-56bb-41b9-ade0-fde8c2c0f2dd)

## Vậy đã xuất file thành công ✅

![Screenshot 2025-03-23 230748](https://github.com/user-attachments/assets/0a579f6f-7750-433e-832a-dc0efef1709e)

✅ Toàn bộ code

![Screenshot 2025-03-23 230736](https://github.com/user-attachments/assets/67871deb-64dc-4a2a-83da-e105f7862830)

# The end 
