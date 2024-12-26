create database shailu;
use shailu;
create table student(student_id int(10) primary key,name varchar(20),dept varchar(20),gendar varchar(10));
insert into student values(1,'Shailaja','IT','Female'),(2,'Sreekar','CIVIL','Male');
insert into student values(3,'kiran','B pharm','Male'),(4,'Mounika','ECE','Female'),(5,'Srikanth','EEE','Male');
insert into student values(6,'pravalika','ECE','Female'),(7,'Priyanka','CSE','Female'),(8,'Gouthami','B.SC','Female');
select * from student;
create table grade(grade_id int(10) primary key,student_id int(10),course varchar(20),marks decimal(10,2),foreign key (student_id) references student(student_id));
insert into grade values(101,1,'Maths',98.0),(102,2,'Science',99.0),(103,3,'Hindi',87.5),(104,4,'english',95);
insert into grade values(105,5,'Maths',87),(106,8,'Social',76);
select * from grade;
select grade_id,dept,marks from grade inner join student on grade.student_id=student.student_id;

select grade_id,dept,marks,gendar,name from grade left join student on grade.student_id=student.student_id;
select grade_id,dept,marks,gendar,name from grade right join student on grade.student_id=student.student_id;
select grade_id,dept,marks,gendar,name from grade cross join student on grade.student_id=student.student_id;
select grade_id,gendar,student.student_id,name from student cross join grade; 
create table course(course_id int(10),student_id int(10),course_name varchar(10),marks decimal(10,2));
select * from grade self join grade;
