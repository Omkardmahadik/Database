create database om_sem3

create table students(student_id int, first_name varchar(40),last_name varchar(40),age float,grade varchar(40))

insert students values(1,'om','mahadik',20,'10th');
insert students values(2,'sai','mahadik',30,'11th');
insert students values(4,'sam','cumran',40,'12th');
insert students values(5,'vyrat','kohli',50,'8th');
insert students values(6,'bhulakad','sharma',60,'9th');
select * from students

--query 1 Retrieve the first and last names of all students.
select first_name,last_name from students

--query 2 Retrieve the ages of students who are older than 18.
select age  from students where age>18;

--query 3 Retrieve the first and last names of students who are in the 10th grade.
select first_name , last_name , grade from students where grade='10th'

-- query 4 Retrieve the first and last names of students who are in the 9th or 10th grade.
select first_name , last_name , grade from students where grade='9th' or grade='10th'

-- query 5 Retrieve the first and last names of students whose first name is "om."
select first_name , last_name from students where first_name='om'

-- query 6 Retrieve the first and last names of students whose last name starts with "mahadik."
select first_name , last_name from students where last_name='mahadik'

--query 7 Retrieve the count of all students in the table.
select count(*) from students 

--query 8 Retrieve the average age of all students.
SELECT AVG(age) AS AverageAge
FROM students;

--query 9 Retrieve the youngest student's first name and age.
select first_name, age from students where age<30


