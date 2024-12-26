CREATE DATABASE TASK; 
USE TASK;
CREATE TABLE SUPPLIER(SUPPLIER_ID INT(10) PRIMARY KEY,SUPPLIERNAME VARCHAR(10) NOT NULL);
CREATE TABLE CATEGORIES(CATEGORY_ID INT(10) AUTO_INCREMENT PRIMARY KEY,CATEGORYNAME VARCHAR(20));
create table PRODUCT(PRODUCTID int(10),
 ProductNAME  VARCHAR(20) PRIMARY KEY, 
 supplier_ID INT(10) NOT NULL, 
 category_ID INT(10) NOT NULL, 
 Quantity_per_unit INT(20), 
 unit_price DECIMAL(10,2), 
 units_in_stock INT(10),
 units_on_order INT(10), 
 reorder_level INT(10), 
 discontinued BOOLEAN ,
 foreign key (SUPPLIER_ID) references SUPPLIER(SUPPLIER_ID),
 foreign key (CATEGORY_ID) references CATEGORIES(CATEGORY_ID)

 );
DROP TABLE SUPPLIER;
DROP TABLE PRODUCT;
DROP TABLE CATEGORIES;
INSERT INTO SUPPLIER VALUES (1, 'BLINKIT'),(2, 'AJIO'),(3, 'NYKAA'),(4, 'ZEPTO'),(5, 'JOYALUKAS'),(6, 'MEGAMART'),(7, 'ZOMATO');
SELECT * FROM SUPPLIER;
INSERT INTO CATEGORIES VALUES (101,'Electronics'),(102,'Furniture'),(103,'Clothing'),(104,'Groceries'),(105,'Books'),(106,'Toys'),(107,'Sports'),(108,'Beauty');
SELECT * FROM CATEGORIES;
INSERT INTO PRODUCT VALUES
(1, 'Laptop', 1, 101, 5, 90.0, 50, 20, 10, 0),
(2, 'Chair', 2, 102, 10, 10, 200, 50, 30, 1),
(3, 'T-Shirt', 3, 103, 2, 17, 300, 70, 20, 1),
(4, 'Rice_Bag', 4, 104, 1, 23, 100, 25, 15, 0),
(5, 'Smartphone', 5, 105, 1, 56.00, 80, 10, 5, 1),
(6, 'watch', 6, 106, 3, 80.00, 60, 15, 10, 0),
(7, 'Nivea', 7, 107, 1, 25.00, 40, 5, 5, 1),
(8, 'Lipstick', 3, 108, 2, 78.00, 150, 40, 20, 0);
INSERT INTO PRODUCT VALUES
(9,'RING',4,104,12,100.0,4,10,10,1),
(10,'CHARGER',6,103,20,120.00,20,43,23,0),
(11,'BOTTLE',3,107,45,23,21,32,42,1),
(12,'PEN',6,102,20,6.00,26,31,73,1),
(13,'BOOK',3,106,43,40.00,42,54,12,0),
(14,'SHOE',3,104,16,200.00,32,86,31,1);
SELECT * FROM PRODUCT order by productid;
/*Write a MySQL query to get Product list (id, name, unit price) where products cost between $15 and 25 rupees.*/
SELECT PRODUCTID,PRODUCTNAME,UNIT_PRICE FROM PRODUCT WHERE UNIT_PRICE BETWEEN 15 AND 25;

/*Write a MySQL query to get Product list (name, unit price) of above average price.*/
SELECT PRODUCTNAME,UNIT_PRICE FROM PRODUCT WHERE UNIT_PRICE >(SELECT avg(UNIT_PRICE) FROM PRODUCT);

/*Write a MySQL query to get Product list (name, unit price) of ten most expensive products.*/
SELECT PRODUCTNAME,UNIT_PRICE FROM PRODUCT ORDER BY UNIT_PRICE DESC LIMIT 10;

/*Write a MySQL query to count current and discontinued products.*/
SELECT DISCONTINUED, COUNT(*) AS COUNT FROM PRODUCT GROUP BY DISCONTINUED;
select
    (select count(*) from product where discontinued = 1) AS continued,
    (select count(*) from product where discontinued = 0) AS discountinued;
/*Write a MySQL query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order.*/
SELECT PRODUCTNAME,UNITS_ON_ORDER,UNITS_IN_STOCK FROM PRODUCT WHERE UNITS_IN_STOCK <QUANTITY_PER_UNIT ;


