-- DROP DATABASE if EXISTS quan_li_thuc_tap;
-- Bai 1

-- CREATE DATABASE quan_li_thuc_tap;

-- Bai 2
-- CREATE TABLE khoa(
--   ma_khoa VARCHAR(20) NOT NULL  PRIMARY KEY,
--   ten_khoa VARCHAR(20),
--   so_dien_thoai VARCHAR(10)
-- );

-- Bai3: Lưu thông tin sinh viên gồm có mã sv, họ tên, mã khoa, giới tính, quê quán
-- + Mã sinh viên kiểu số
-- CREATE TABLE sinh_vien (
--   ma_sv INT PRIMARY KEY AUTO_INCREMENT,
--   ho_ten VARCHAR(255),
--   gioi_tinh TEXT,
--   que_quan TEXT,
--   ma_khoa VARCHAR(20),
--   FOREIGN KEY (ma_khoa) REFERENCES khoa(ma_khoa)
-- );
-- bai 4: Lưu thông tin của giảng viên gồm có mã giảng viên, họ tên, mã khoa, lương
-- + Mã giảng viên kiểu số

-- CREATE TABLE giang_vien(
--  ma_giang_vien INT PRIMARY KEY AUTO_INCREMENT,
--  ho_ten TEXT,
--  ma_khoa VARCHAR(20),
--  luong INT,
--  FOREIGN KEY (ma_khoa) REFERENCES khoa(ma_khoa)
-- );

-- Bai 5: Lưu thông tin của đề tài có mã đề tài, tên đề tài, kinh phí, nơi thực tập
-- + Mã đề tài là kiểu chuỗi
-- CREATE TABLE de_tai(
--   ma_de_tai VARCHAR(20) PRIMARY KEY ,
--   ten_de_tai VARCHAR(255),
--   kinh_phi INT,
--   noi_thuc_tap TEXT
-- );

-- Bai 6: Lưu thông tin hướng dẫn gồm có mã sinh viên, mã đề tài, mã giảng viên, kết quả
-- CREATE TABLE thong_tin_huong_dan(
--   ma_sv INT,
--   ma_de_tai VARCHAR(20),
--   ma_giang_vien INT,
--   ket_qua INT,
--   FOREIGN KEY (ma_sv) REFERENCES sinh_vien(ma_sv),
--   FOREIGN KEY (ma_de_tai) REFERENCES de_tai(ma_de_tai),
--   FOREIGN KEY (ma_giang_vien) REFERENCES giang_vien(ma_giang_vien)
-- );

-- B7: Thêm dữ liệu vào bảng khoa
-- INSERT INTO khoa(ma_khoa,ten_khoa,so_dien_thoai)
-- VALUES 
-- ('Geo', 'Dia ly va QLTN', 3855413), 
-- ('Math', 'Toan', 3855411), 
-- ('Bio', 'Cong nghe Sinh hoc', 3855412);

--  B8: Thêm dữ liệu vào bảng giang_vien
-- INSERT INTO giang_vien(ma_giang_vien,ho_ten,luong,ma_khoa)
-- VALUES
-- (11, 'Thanh Xuan', 700, 'Geo'), 
-- (12, 'Thu Minh', 500, 'Math'), 
-- (13, 'Chu Tuan', 650, 'Geo'), 
-- (14, 'Le Thi Lan', 500, 'Bio'), 
-- (15, 'Tran Xoay', 900, 'Math');

-- B9: Thêm dữ liệu vào bảng sinh_vien
-- ALTER TABLE sinh_vien
--   ADD nam_sinh INT ;
-- INSERT INTO sinh_vien(ma_sv,ho_ten,ma_khoa,nam_sinh,que_quan)
-- VALUES
-- (1, 'Le Van Sao', 'Bio', 1990, 'Nghe An'), 
-- (2, 'Nguyen Thi My', 'Geo', 1990, 'Thanh Hoa'), 
-- (3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'), 
-- (4, 'Nguyen Van Tung', 'Bio', null, 'Ha Tinh'), 
-- (5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'), 
-- (6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'), 
-- (7, 'Le Thi Van', 'Math', null, 'null'), 
-- (8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');

-- Bai 10: Thêm dữ liệu vào bảng de_tai


-- INSERT INTO de_tai(ma_de_tai,ten_de_tai,kinh_phi,noi_thuc_tap)
-- VALUES
-- ('Dt01', 'GIS', 100, 'Nghe An'),
-- ('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
-- ('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
-- ('Dt04', 'MAP', 300, 'Quang Binh');

-- bai 11 Thêm dữ liệu vào bảng huong_dan

-- INSERT INTO thong_tin_huong_dan(ma_sv,ma_de_tai,ma_giang_vien,ket_qua)
-- VALUES
-- (1, 'Dt01', 13, 8),
-- (2, 'Dt03', 14, 0),
-- (3, 'Dt03', 12, 10),
-- (5, 'Dt04', 14, 7),
-- (6, 'Dt01', 13, Null),
-- (7, 'Dt04', 11, 10),
-- (8, 'Dt03', 15, 6);

-- Bai 12 
-- SELECT giang_vien.ma_giang_vien,giang_vien.ho_ten,khoa.ten_khoa
-- FROM khoa JOIN  giang_vien ON khoa.ma_khoa = giang_vien.ma_khoa;
-- Bai 13


-- SELECT giang_vien.ma_giang_vien,giang_vien.ho_ten,khoa.ten_khoa
-- FROM khoa JOIN  giang_vien ON khoa.ma_khoa = giang_vien.ma_khoa
-- WHERE ma_giang_vien IN
-- (
-- SELECT ma_giang_vien FROM thong_tin_huong_dan
-- GROUP BY
-- ma_giang_vien HAVING COUNT(ma_giang_vien) >=3
-- );

-- Bai 14
SELECT *
FROM sinh_vien
WHERE 
ma_sv IN
(
SELECT ma_sv FROM thong_tin_huong_dan
 WHERE ket_qua IS NULL	
);


