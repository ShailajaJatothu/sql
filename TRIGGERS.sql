create database triggers;
use triggers;
create table newjoinee(empid int(10),empname varchar(30),designation varchar(20),dateofbirth date,logout time,age int(10) null);
insert into newjoinee values(101,'shailaja','se','2003-01-23','12:34:23','-1');
insert into newjoinee values(102,'sreekar','ms','1999-05-13','10:21:34','0'),(103,'pravalika','fsd','2002-04-18','23:45:12','-10');
insert into newjoinee values(104,'mamatha','da','1999-05-15','12:32:43','34'),(105,'mounika','se','1998-08-07','23:34:53','24');
select * from newjoinee;
usersstudentAGE_CALCULATION
delimiter //
create trigger age_verification 
before insert on newjoinee for each row 
begin
if new.age<0 then set new.age=0;
end if;
end//
insert into newjoinee values(106,'amma','da','1999-05-15','12:32:43','-1'),(107,'mounika','se','1998-08-07','23:34:53','-12');
CREATE trigger working_hours  before INSERT ON newemployee FOR EACH ROW
BEGIN
  if new.working_hours<5 then set new.working_hours=0;
  end if;
END

select * from newjoinee;
drop trigger age_vericication;
drop table newjoinee;
SHOW TRIGGERS;

DELIMITER//
CREATE TRIGGER age_vericication
AFTER INSERT ON newjoinee 
FOR EACH ROW 
BEGIN
    IF NEW.age < 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Age cannot be negative';
  
    END IF;
END;
//
DELIMITER ;
insert into newjoinee values(108,'ammu','da','1999-05-15','12:32:43','-1')
SELECT * FROM NEWJOINEE;

create database indexs;
USE INDEXS;
create table STUDENT(studentid int(10),sname varchar(20),collegename varchar(50),dept varchar(20),addmissionno int(20),age int(10));
insert into STUDENT VALUES('1','Shailaja','CBIT','IT','207153','21');
insert into STUDENT VALUES('2','sreekar','UNT','Data Science','207151','24'),('3','mounika','KU',' ECE','207152','25'),('4','SRIKANTH','IIIT',' EEE','207154','26');
INSERT INTO STUDENT VALUES('5','GOUTHAMI','VJIT','CSE',207156,24);
SELECT * FROM STUDENT;
DELIMITER //
CREATE TRIGGER AGE_CALCULATION 
AFTER INSERT ON STUDENT 
FOR EACH ROW BEGIN IF NEW.AGE>18 
THEN 
		SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'YOU ARE ELIGIBLE FOR VOTE';
        END IF;
        END;
//
DELIMITER;
INSERT INTO STUDENT VALUES('6','ARCHANA','MGIT','CSE',5627,17);
DROP TRIGGER AGE_CALCULATION;
SELECT * FROM STUDENT;
INSERT INTO STUDENT VALUES('7','AMULYA','MGIT','CSE',5627,11);
SELECT STUDENTID,SNAME FROM STUDENT WHERE AGE>18;
DROP TABLE STUDENT;