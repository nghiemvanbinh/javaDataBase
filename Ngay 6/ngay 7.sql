DROP TABLE if EXISTS product_discounts;
DROP TABLE if EXISTS product_reviews;
DROP TABLE if EXISTS customers;
DROP TABLE if EXISTS products;
DROP TABLE if EXISTS categories;
DROP TABLE if EXISTS suppliers;

CREATE TABLE categories(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  category_code VARCHAR(50) NOT NULL,
  category_name VARCHAR(50) NOT NULL,
  created_date DATE	NOT NULL,
  updated_date DATE NOT NULL 
);

CREATE TABLE suppliers(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  supplier_code VARCHAR(50) NOT NULL,
  supplier_name VARCHAR(50) NOT NULL,
  img VARCHAR(255),
  created_date DATE	NOT NULL,
  updated_date DATE NOT NULL 
);

CREATE TABLE products(
 id BIGINT PRIMARY KEY AUTO_INCREMENT,
 product_code VARCHAR(100) NOT NULL,
 product_name VARCHAR(100) NOT NULL,
 image VARCHAR(255),
 DESCRIPTION VARCHAR(255),
 standard_cost INT,
 quantity INT,
 from_country VARCHAR(100),
 product_unit ENUM("cai","bo","quyen","kg"),
 is_new ENUM("new","not_new"),
 categoreis_id BIGINT,
 suppliers_id BIGINT,
 FOREIGN KEY (categoreis_id) REFERENCES categories(id),
 FOREIGN KEY (suppliers_id) REFERENCES suppliers(id)
);

CREATE TABLE product_discounts(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  discount_amount INT,
  start_end DATE NOT NULL,
  end_date DATE NOT NULL,
  products_id BIGINT,
  FOREIGN KEY (products_id) REFERENCES products(id)
);

CREATE TABLE customers(
 id INT PRIMARY KEY AUTO_INCREMENT,
  username   VARCHAR(255) NOT NULL ,
  PASSWORD   TEXT NOT NULL ,
  first_name TEXT NOT NULL ,
  last_name TEXT,
  gender ENUM("MALE","FEMALE"),
  email  VARCHAR(255) NOT NULL,
  birth_day DATE,
  avatar VARCHAR(255),
  phone VARCHAR(25),
  address VARCHAR(255),
  city VARCHAR(50),
  country VARCHAR(255),
  code_active VARCHAR(50) NOT NULL ,
  STATUS  ENUM("DISABLE","ENABLE") NOT NULL, 
  created_date   DATETIME NOT NULL,
  updated_date  DATETIME  NOT NULL,
  products_id BIGINT,
  FOREIGN KEY (products_id) REFERENCES products(id)
);
CREATE TABLE product_reviews(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
  rating ENUM("1","2","3","4","5"),
  COMMENT TEXT,
  created_date DATE NOT NULL ,
  updated_date DATE NOT NULL,
  customers_id INT,
  FOREIGN KEY (customers_id) REFERENCES customers(id)
);

INSERT INTO categories(category_code,category_name,created_date,updated_date)
VALUES
("234","tivi",'2022-11-20','2022-11-20'),
("243","tu lanh",'2022-11-20','2022-11-20'),
("214","may giat",'2022-11-20','2022-11-20'),
("254","dieu hoa",'2022-11-20','2022-11-20');

INSERT INTO suppliers(
  supplier_name,
  supplier_code,
  created_date,
  updated_date )
VALUES
("sam sung","112","2022-11-20","2022-11-20"),
("lg","23","2022-11-20","2022-11-20"),
("toshiba","23","2022-11-20","2022-11-20"),
("vin","23","2022-11-20","2022-11-20");

INSERT INTO products(
 product_code ,
 product_name ,
 from_country ,
 is_new ,
 categoreis_id,
 suppliers_id 
)
VALUES
("123","tivi","TRUNG_QUOC","new",1,2),
("234","tu lanh","NHAT_BAN","not_new",3,1),
("143","dieu hoa","VIET_NAM","new",2,3),
("234","may giat","NHAT_BAN","new",1,1);

INSERT INTO product_discounts(
  discount_amount,
  start_end,
  end_date ,
  products_id )
VALUES 
(3,'2022-11-20','2022-11-30',1),
(4,"2022-11-20","2022-11-30",2),
(1,"2022-11-20","2022-11-30",4);


INSERT INTO customers(
  username ,
  PASSWORD  ,
  first_name ,
  gender,
  email,
  birth_day,
  code_active ,
  STATUS , 
  created_date ,
  updated_date ,
  products_id
)
VALUES
("van","123","binh","MALE","vanbinh@gmail","1998-03-17","1",1,'2022-11-20','2022-11-30',1);
("van","123","binh","MALE","vanbinh@gmail","1998-03-17","1",2,'2022-11-20','2022-11-30',1);

