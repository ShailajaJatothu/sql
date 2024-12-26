/*creating database*/
create database w3schools;
use w3schools;
show databases;
drop database shailu;

/*CREATING A TABLE WITH CONSTRAINTS AND WITH DATATYPES*/
CREATE TABLE users (UserID INT(10) PRIMARY KEY,UserName VARCHAR(100),unique(userid));
CREATE TABLE ordervalue(OrderID INT(10) PRIMARY KEY, UserID INT(10) not null, OrderAmount DECIMAL(10, 2),FOREIGN KEY (UserID) REFERENCES users(UserID));
alter table users drop primary key;
alter table users add primary key(userid);
alter table ordervalue drop primary key;
alter table ordervalue add constraint pk_ordervalue primary key(orderid,userid);
alter table ordervalue drop foreign key ordervalue_ibfk_1;
alter table ordervalue add constraint ordervalue_ibfk_1 foreign key (userid) references users(userid);
alter table users drop constraint userid;
alter table users add constraint unique(userid,username);

/*INSERT COMMAND*/
insert into users value(1,'shailaja'),(2,'sreekar'),(3,'kiran'),(4,',mounika'),(5,'sreekanth');
insert into ordervalue values(1,1,150.0),(2,2,100.00),(3,3,980.0),(4,1,321.0);
ALTER TABLE Persons
MODIFY Age int NOT NULL;

alter table users modify username varchar(100) not null;
/*SELECT COMMAND*/
select * from users;
select * from ordervalue;
show create table ordervalue;

select username,users.userid,orderid,orderamount from users left join ordervalue on users.userid=ordervalue.userid;
select username,users.userid,orderid,orderamount from users right join ordervalue on users.userid=ordervalue.userid;
select username,users.userid,orderid,orderamount from users cross join ordervalue on users.userid=ordervalue.userid;
select username,users.userid,orderid,orderamount from users cross join ordervalue; 
select min(orderamount) from ordervalue;
select max(orderamount) from ordervalue;
select avg(orderamount) from ordervalue;
select count(userid) from ordervalue;
select sum(orderamount) from ordervalue;
alter table users add column email varchar(20);
alter table users rename column userid to id;
select * from ordervalue where orderamount>100;
select * from users where username like 's%';
select * from ordervalue where orderamount between 100 and 200;
select * from users where username like '_r%';
select * from users where username like '%a';
update users set username='shailu' where id='1';
alter table users drop column email;
select userid,orderid,orderamount from ordervalue order by orderamount desc;
select userid,orderid,orderamount from ordervalue where orderamount in(100,200);
select userid,orderid,orderamount from ordervalue order by orderamount limit 3;
select userid,orderid,orderamount from ordervalue where orderamount!=100;