/* CREATE database MYPROJECTS;*/
CREATE DATABASE  MYPROJECTS;
/* Task 1: Creating Table Employee1*/
CREATE TABLE EMPLOYEE1(EMPLOYEE_ID INT(10) PRIMARY KEY,FIRSTNAME VARCHAR(20), LASTNAME VARCHAR(20),SALARY INT(20));
/*Inserting Data into Employee1 table*/
INSERT INTO EMPLOYEE1 VALUES(1,'SHAILAJA','JATOTHU',500000);
INSERT INTO EMPLOYEE1 VALUES(2,'SREEKAR','JATOTHU',600000),(3,'KIRAN','JATOTHU',700000),(4,'MOUNIKA','BADAVATH',300000),(5,'SRIKANTH','BADAVATH',900000);
INSERT INTO EMPLOYEE1 VALUES(6,'PRAVALIKA','VANKUDOTH',45678),(7,'VAISHU','AJMEERA',43000),(8,'PRIYANKA','VANKUDOTH',46375);
INSERT INTO EMPLOYEE1 VALUES(9,'GEETHA','BADAVATH',63776),(10,'USHA','BODA',45633);
insert into employee1 values(11,'abc','fhd',55000);
/*--  Task 3: Select with WHERE */
SELECT EMPLOYEE_ID,FIRSTNAME,LASTNAME FROM EMPLOYEE1 WHERE FIRSTNAME LIKE 'S%';
SELECT * FROM EMPLOYEE1 WHERE SALARY>45000;
*/-- Retrieve the names and salaries of employees whose salary is greater than 50000. */
SELECT FIRSTNAME,LASTNAME,SALARY FROM EMPLOYEE1 WHERE SALARY>50000;

/*-- Task 4: Select with AND 
-- Retrieve the first and last names of employees whose salary is between 40000 and 60000.*/
SELECT FIRSTNAME,LASTNAME,SALARY FROM EMPLOYEE1 WHERE SALARY BETWEEN 40000 AND 60000;
/*--  Task 5: Select with NOT 
-- Retrieve the first and last names of employees whose salary is not equal to 55000. */
SELECT FIRSTNAME,LASTNAME FROM EMPLOYEE1 WHERE NOT SALARY=55000;
/*-- Task 6: Order By 
-- Retrieve the first and last names of all employees, ordered by their salary in descending order. */
SELECT FIRSTNAME,LASTNAME FROM EMPLOYEE1 ORDER BY SALARY DESC;
--  Task 7: Select with OR 
-- Retrieve the first and last names of employees whose salary is either less than 45000 or greater than 60000. */
SELECT FIRSTNAME,LASTNAME FROM EMPLOYEE1 WHERE SALARY<45000 OR SALARY>60000;