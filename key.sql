use exam;
show tables;
show tables;
create table student(studentid int(10) primary key,studentname varchar(20));
insert into student values(1,'shailaja'),(2,'sreekar'),(3,'kiran'),(4,'srikanth'),(5,'mounika');
select * from student;
create table course(courseid int(10) primary key,coursename varchar(20));
insert into course values(101,'IT'),(102,'CSE'),(103,'B PHARM'),(104,'ECE'),(105,'EEE');
select * from course;
CREATE TABLE ENROLLMENT(STUDENTID INT(10),COURSEID INT(10),FOREIGN KEY (STUDENTID) REFERENCES STUDENT(STUDENTID),FOREIGN KEY (COURSEID) references COURSE(COURSEID));
select * from enrollment;
/*Write a SQL query to display the names of students along with the courses they have enrolled in.*/
select studentname,coursename from student join enrollment on student.studentid=enrollment.studentid join course on enrollment.courseid=course.courseid;
select *  from customers;
select * from sales;
select * from products;
/*Write a SQL query to show the total sales amount for each product category.*/
select productname,totalamount from sales join products on sales.productid=products.productid;
select * from employees;
/*Write a SQL query to list the names of employees along with their respective managers' names.*/
select employeeid,firstname,lastname,managerid from employees;
select * from productinventory;
/*Write a query to display products with low stock (less than 10 units).*/
select productname,productid from productinventory where quantityinstock<10;
select * from invoices;
select * from payments;
/*Write a query to show the unpaid invoices and their total amount.*/
select invoiceid,customerid,totalamount from invoices where status='unpaid';
-- Create Departments Table
CREATE TABLE departments (DepartmentID INT(10) PRIMARY KEY,  DepartmentName VARCHAR(100) );

CREATE TABLE employee(
    EmployeeID INT(10) PRIMARY KEY,  EmployeeName VARCHAR(100) , DepartmentID INT(10),FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)  );
INSERT INTO departments values (1,'HR'),(2,'IT'),(3,'Sales'),(4,'Marketing');
insert into departments values(5,'IT'),(6,'Sales');
select * from departments;
INSERT INTO employee values (101,'John Doe', 1),(102,'Jane Smith', 2),(103,'Alice Brown', 2),(104,'Bob Johnson', 3),    
(105,'Charlie Green', 3); 
/*Write a query to display the department names along with the total number of employees in each department.*/
select count(employeeid) as total,departmentname from departments join employee on employee.departmentid=departments.departmentid group by departments.departmentname;

CREATE TABLE students (StudentID INT(10)PRIMARY KEY,  StudentName VARCHAR(100));
CREATE TABLE courses (CourseID INT(10)PRIMARY KEY,  CourseName VARCHAR(100) );
CREATE TABLE grades (
    GradeID INT(10) PRIMARY KEY,StudentID INT(10),CourseID INT(10),Grade DECIMAL(5, 2),FOREIGN KEY (StudentID) REFERENCES students(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES courses(CourseID) 
);
INSERT INTO students values(1,'John Doe'),(2,'Jane Smith'),(3,'Alice Brown'),(4,'Bob Johnson');
INSERT INTO courses VALUES(101,'Mathematics'),(102,'Physics'),(103,'Chemistry'),(104,'Biology');
INSERT INTO grades VALUES (1,1, 101, 85.00),  (2,1, 102, 90.00), (3,1, 103, 78.00), (4,2, 104, 92.00),  (5,2, 102, 85.00), (6,2, 104, 88.00),  (7,3, 103, 95.00),  
(8,3, 104, 89.00), (9,4,102, 80.00);  
select * from grades;
select * from students;
select * from courses;
/*Write a SQL query to display the average grade for each student.*/
select studentname, avg(grade) from grades join students on students.studentid=grades.studentid group by studentname;
show tables;
CREATE TABLE customer (CustomerID INT(10) PRIMARY KEY, CustomerName VARCHAR(100));
CREATE TABLE orders (OrderID INT(10) PRIMARY KEY,CustomerID INT(10), TotalAmount DECIMAL(10, 2),FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)  );
INSERT INTO customer VALUES (1,'shaiaja'),(2,'sreekar'),(3,'kiran');
INSERT INTO orders  VALUES (1, 101,150.00),  (1,102, 200.00), (2,103, 300.00),  (3,104, 400.00), (3,105, 500.00);  
select * from customer;
select * from orders;
select customername,avg(totalamount) from customer join orders on customer.customerid=orders.customerid group by customername;
CREATE TABLE users (UserID INT(10) PRIMARY KEY,UserName VARCHAR(100));
CREATE TABLE ordervalue(OrderID INT(10) PRIMARY KEY, UserID INT(10), OrderAmount DECIMAL(10, 2),FOREIGN KEY (UserID) REFERENCES users(UserID));
insert into users value(1,'shailaja'),(2,'sreekar'),(3,'kiran'),(4,',mounika'),(5,'sreekanth');
insert into ordervalue values(1,1,150.0);
insert into ordervalue values(2,2,100.00),(3,3,980.0),(4,1,321.0);
select * from ordervalue;
select * from users;
/*Write a SQL query to fetch the names of users along with the total number of orders they have placed.*/
select username,count(orderid) as total from users join ordervalue on users.userid=ordervalue.userid group by orderid;
show tables;
SELECT * FROM EMPLOYEE;
