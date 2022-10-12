-- Bài 1

-- CREATE TABLE product(
--   id INT PRIMARY KEY	,
--   product_name VARCHAR(255),
--   price FLOAT,
--   created_at DATETIME
-- )
--
-- Bài 2
-- INSERT INTO product (id,product_name,price,created_at) 
-- VALUES (1,"ToyotaVios",520,'2022-6-30 14:34:56'),
--  (2,"ToyotaCross",450,'2022-6-30 14:34:56'),
--  (3,"HyundaiAccent",510,'2022-6-30 14:34:56'),
--  (4,"HondaCity",550,'2022-6-30 14:34:56'),
--  (5,"VinfastFadil",360,'2022-6-30 14:34:56'),
--  (6,"MitsubishiXpander",620,'2022-6-30 14:34:56'),
--  (7,"MazdaCX-5",900,'2022-6-30 14:34:56'),
--  (8,"KiaSeltos",700,'2022-6-30 14:34:56'),
--  (9, "KiaK3",650,'2022-6-30 14:34:56'),
--  (10,"FordRanger",1100,'2022-6-30 14:34:56'),
--  (11,"HondaCRV",1100,'2022-6-30 14:34:56'),
--  (12,"Hyundaii10",360,'2022-6-30 14:34:56'),
--  (13,"HyundaiSantafe",1000,'2022-6-30 14:34:56'),
--  (14,"KiaCarnival",8000,'2022-6-30 14:34:56'),
--  (15,"HyundaiTucson",800,'2022-6-30 14:34:56');


-- Bài 3
-- SELECT * FROM product WHERE price > 115


-- Bài 4
-- SELECT * FROM product WHERE product_name LIKE '%k%'
-- Bài 5
-- SELECT * FROM product WHERE product_name LIKE '%kia%' OR price < 200
-- Bài 6 
-- SELECT * FROM product WHERE price IN (100,130,140,150,160,170)
-- Bài 7 
SELECT DISTINCT price FROM product 