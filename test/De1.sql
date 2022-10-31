-- CREATE DATABASE quan_ly_sinh_vien;
-- DROP TABLE if EXISTS  diem_thi;
-- DROP TABLE if EXISTS  sinh_vien;
-- DROP TABLE if EXISTS  mon_hoc;
-- CREATE TABLE sinh_vien(
--   msv INT PRIMARY KEY AUTO_INCREMENT,
--   lop VARCHAR(50),
--   ho VARCHAR(50),
--   ten VARCHAR(50),
--   gioi_tinh ENUM("nam","nữ"),
--   ngay_sinh DATE
-- );
-- 
-- CREATE TABLE mon_hoc (
--   ma_mon_hoc INT PRIMARY KEY AUTO_INCREMENT,
--   ten_mon_hoc VARCHAR(50)
-- );
-- 
-- CREATE TABLE diem_thi(
--    msv INT,
--    ma_mon_hoc INT,
--    lan_thi INT DEFAULT(1),
--    diem INT CHECK(diem >= 0 AND diem <= 10),
--    FOREIGN KEY (msv) REFERENCES sinh_vien(msv),
--    FOREIGN KEY (ma_mon_hoc) REFERENCES mon_hoc(ma_mon_hoc)
-- );
-- 
-- INSERT INTO sinh_vien(lop,ho,ten,gioi_tinh,ngay_sinh)
-- VALUES
-- ("ly","van","duc","nam",'1999-09-23'),
-- ("hoa","van","sy","nam",'1999-09-23'),
-- ("ly","van","tung","nam",'1999-09-23'),
-- ("ly","hoang","duc","nam",'1998-09-23'),
-- ("hoa","minh","sy","nam",'2000-09-23'),
-- ("ly","sy","chuong","nam",'1999-09-23'),
-- ("ly","van","duc","nam",'1999-09-23'),
-- ("hoa","van","sy","nam",'1999-09-23'),
-- ("ly","van","tung","nam",'1999-09-23'),
-- ("ly","hoang","duc","nam",'1998-09-23'),
-- ("hoa","minh","sy","nam",'2000-09-23'),
-- ("ly","sy","chuong","nam",'1999-09-23'),
-- ("ly","hoang","duc","nam",'1998-09-23'),
-- ("hoa","minh","sy","nam",'2000-09-23'),
-- ("ly","sy","chuong","nam",'1999-09-23');
-- 
-- 
-- INSERT INTO mon_hoc(ten_mon_hoc)
-- VALUES 
-- ("toán"),
-- ("văn"),
-- ("sử"),
-- ("địa"),
-- ("tiêng nga"),
-- ("tiéng anh"),
-- ("tiéng pháp"),
-- ("tiéng trung"),
-- ("thể dục"),
-- ("hóa"),
-- ("lí"),
-- ("sinh"),
-- ("thể dục"),
-- ("ngoại khóa"),
-- ("triết");
-- 
-- INSERT INTO diem_thi(msv,ma_mon_hoc,lan_thi,diem)
-- VALUES
-- (1,2,1,4),
-- (3,3,1,8),
-- (1,4,1,9),
-- (2,5,2,6),
-- (1,9,1,10),
-- (2,3,1,6),
-- (1,7,1,9),
-- (2,9,4,6),
-- (10,2,1,4),
-- (12,3,1,8),
-- (11,4,1,9),
-- (7,5,1,6),
-- (5,9,2,10),
-- (6,3,3,6),
-- (4,7,4,9);
-- 

-- SELECT msv,ma_mon_hoc,diem ,MAX(lan_thi)
-- FROM diem_thi
-- GROUP BY msv,ma_mon_hoc;

DELIMITER $$
CREATE PROCEDURE get_point(
    IN msv1 INT 
	 )
  BEGIN 
   SELECT diem
   FROM diem_thi JOIN sinh_vien
   ON diem_thi.msv = sinh_vien.msv
   WHERE diem_thi.msv = msv1;
  END $$
DELIMITER $$;





 
