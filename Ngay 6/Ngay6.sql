DROP TABLE if EXISTS users_roles;
DROP TABLE if EXISTS role_permission;
DROP TABLE if EXISTS users;
DROP TABLE if EXISTS roles;
DROP TABLE if EXISTS permissions;
CREATE TABLE users(
  id BIGINT PRIMARY KEY AUTO_INCREMENT,
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
  updated_date  DATETIME  NOT NULL
);
CREATE TABLE roles(
  id INT PRIMARY KEY AUTO_INCREMENT,
  role_name   VARCHAR(50) NOT NULL,
  created_date DATETIME NOT NULL  ,
  updated_date   DATETIME NOT NULL
);

CREATE TABLE users_roles(
 id INT PRIMARY KEY AUTO_INCREMENT,
 user_id BIGINT,
 role_id INT,
 FOREIGN KEY (user_id) REFERENCES users(id),
 FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE permissions(
 id INT PRIMARY KEY AUTO_INCREMENT,
 permissions_name VARCHAR(255) NOT NULL,
 created_date DATETIME NOT NULL,
 updated_date DATETIME NOT NULL 
);

CREATE TABLE role_permission(
  id INT PRIMARY KEY AUTO_INCREMENT,
  role_id INT,
  permission_id INT,
  FOREIGN KEY (role_id) REFERENCES roles(id),
  FOREIGN KEY (permission_id) REFERENCES permissions(id)
);
-- Them du lieu vao bang users
INSERT INTO users(username,PASSWORD,first_name,gender,city,country,email,birth_day,code_active,STATUS,created_date,updated_date)
VALUES
("abc","123","nhan","MALE","ha noi","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("fsf","123","ba",NULL ,"hai phong","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("etyy","123","hau","FEMALE","quangninh","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("fsfgg","123","tuong","MALE" ,"ha noi","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("abdwc","123","nhan","MALE","ha noi","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("fsf","123","ba",NULL ,"hai phong","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("etyy","123","hau","FEMALE","quangninh","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("fsfgg","123","tuong","MALE" ,"ha noi","viet nam","abc@gmail",'2022-10-22',"001","DISABLE","2022-10-24 8:55:56","2022-10-26 8:55:56");

INSERT INTO roles(role_name,created_date,updated_date)
VALUES
("truong phong","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("nhan vien","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("maketing","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("leader","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("giam doc","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("chu tich","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("hanh chinh","2022-10-24 8:55:56","2022-10-26 8:55:56");

INSERT INTO permissions(permissions_name,created_date,updated_date)
VALUES
("them","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("sua","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("xoa","2022-10-24 8:55:56","2022-10-26 8:55:56"),
("cap nhat","2022-10-24 8:55:56","2022-10-26 8:55:56");

INSERT INTO users_roles(user_id,role_id)
VALUES
(1,4),
(5,2),
(3,7),
(8,6),
(2,4),
(4,3),
(3,1);

INSERT INTO role_permission(role_id, permission_id)
VALUES
(2,1),
(3,2),
(4,4),
(5,3),
(1,3),
(6,3),
(7,4);
