use shailaja;
show tables;
select * from customer;
select * from employee;
alter table employee add column sno int(10);
ALTER TABLE employee RENAME COLUMN first_name TO name;
alter table employee drop column sno;
update employee set name='gouthami' where id='101';
set sql_safe_updates=0;
select * from employee where name='sreekar';
select name,salary from employee order by salary;
delete from employee where id=110;
select min(salary) from employee;
select max(salary) from employee;
select avg(salary) from employee;
select count(id) from employee;
select sum(salary) from employee;
SELECT name,designation,salary from employee WHERE salary>10000 GROUP BY designation ORDER BY id;
select id,name from employee where salary between 100000 and 500000;
select * from employee where salary in(100000,500000);
select name,designation,salary from employee where name like 's%';
select name,designation,salary from employee where name like '%a';
select name,designation,salary from employee where name like '_i%';
select name,designation,salary from employee where name like 's_%';
select name,designation from employee where salary>100000 limit 2;
select name,designation from employee where salary between 10000 and 500000;
select name,designation from employee where salary=10000 or salary=500000;
select name,designation from employee where not salary>50000;


select * from product;
alter table product add column quantity int(10);
ALTER TABLE product RENAME COLUMN productid TO id;
alter table product drop column quantity;
update product set price=1000 where id='1';
set sql_safe_updates=0;
select * from product where name='laptop';
select name,category from product order by stock;
delete from product where name='laptop';
select min(price) from product;
select max(stock) from product;
select avg(price) from product;
select count(id) from product;
select sum(price) from product;

select * from flights;

select * from student;

select * from sales;










create table users (user_id INT(10), name VARCHAR(50) ,email VARCHAR(100));
Create table orders (order_id INT(10), user_id INT ,status VARCHAR(20) ,FOREIGN KEY (user_id) REFERENCES users(user_id));