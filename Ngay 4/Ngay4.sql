-- Bai 1
-- DROP TABLE if EXISTS Orders;
-- DROP TABLE if EXISTS Customers;
-- 
-- CREATE TABLE Customers(
--  customer_id INT PRIMARY KEY AUTO_INCREMENT,
--  first_name text
-- );
-- CREATE TABLE Orders(
--  order_id INT PRIMARY KEY AUTO_INCREMENT,
--  amount INT,
--  customer INT,
--  FOREIGN KEY (customer) REFERENCES Customers(customer_id)
-- );
-- Bai 2
-- INSERT INTO customers(first_name)
-- VALUES
-- ("john"),
-- ("Robert"),
-- ("David"),
-- ("John"),
-- ("Betty"),
-- ("john"),
-- ("Robert"),
-- ("David"),
-- ("John"),
-- ("Betty");
-- 
-- INSERT INTO Orders(amount,customer)
-- VALUES
-- (200,10),
-- (500,3),
-- (300,6),
-- (800,5),
-- (150,8);
-- 
-- Bai 3
 -- SELECT  customer_id, first_name, amount FROM Customers
--  left JOIN orders ON customers.customer_id = orders.customer
-- Bai 4
-- SELECT  Customers.first_name, Orders.amount FROM Customers
--  right JOIN orders ON customers.customer_id = orders.customer
 -- Bai 5
 -- SELECT * FROM Customers
--  Left JOIN orders ON customers.customer_id = orders.customer
--  WHERE amount IS NULL 
--  UNION ALL
--  SELECT  * FROM Customers
--  right JOIN orders ON customers.customer_id = orders.customer

-- Bai 6

-- DROP TABLE if EXISTS customer;
-- CREATE TABLE customer(
--  customers_id INT PRIMARY KEY AUTO_INCREMENT,
--  first_name TEXT,
--  last_name TEXT,
--  age INT,
--  country TEXT 
-- );
-- Bai 7
-- INSERT INTO customer(first_name,last_name,age,country)
-- VALUES 
-- ("Jhon","Doe",31,"USA"),
-- ("Robert","Luna",22,"USA"),
-- ("David","RobinSon",22,"UK"),
-- ("Jhon","Reinhardt",25,"UK"),
-- ("Betty","Doe",28,"UAE");

-- Bai 8

-- SELECT * FROM customer
-- WHERE
--  age IN (SELECT  MIN(age) FROM customer)  
--  
 -- Bai 9
DROP TABLE if EXISTS paintings;
CREATE  TABLE paintings(
   id INT PRIMARY KEY ,
   name TEXT,
   artist_id INT,
   listed_price DOUBLE
 );
 -- Bai 10
 INSERT INTO paintings(id, name,artist_id,listed_price)
 values
 (11,"Miracle","1",30000),
 (12,"SunShine","1",70000),
 (13,"Pretty woman","2",280000),
 (14,"Handsome man","2",230000),
 (15,"Barbie","3",25000),
 (16,"Cool painting","3",500000),
 (17,"Black square #1000","3",30000),
 (18,"Mountains","4",130000);
 -- Bai 11
 SELECT * FROM paintings
 WHERE 
 listed_price > (SELECT AVG(listed_price) FROM paintings);
 