select *  from om_fees 

create table student(admission int , first_name varchar(40), last_name varchar(40), age float)
insert student values(12,'ww','ee',20)
insert student values(13,'ee','ww',30)
insert student values(14,'tt','ss',40)
delete into table student

create table fee_table(admission int  , course  varchar(40),amount_paid float)

select * from student
insert fee_table values(12,'it','500000')
insert fee_table values(14,'commerce','80000')
insert fee_table values(15,'finance','70000')

select student.admission , student.first_name , student.last_name , fee_table.amount_paid
from student
inner join fee_table
--innerjoin
on student.admission= fee_table.admission

select student.admission , student.first_name , student.last_name , fee_table.amount_paid
from student
right outer join fee_table
--left outer join 
on student.admission= fee_table.admission

CREATE TABLE emp(emp_no float , emp_name varchar(40) , job varchar(40) , dept_no float)

insert emp values(1,'chomtu','clerk',123)
insert emp values(2,'dddddd','finance',456)
insert emp values(3,'chomtu','it',4556)
insert emp values(4,'harsh','clerk',4353)
insert emp values(4,'rrere','analyst',4345)
create table dept(dept_no float , d_name varchar(40) , loc float)

insert dept values('1','om','2000'),
                  ('2','harsh','3000'),
				  ('3','niraj','4000')
insert dept values(123,'ee','5000')
select * from dept
--query 1 
select emp_name from emp where job='clerk'

--query 2
select emp_name,dept_no,job from emp where job in ('analyst','clerk')

--query 3
select emp_name from emp  order by emp_name

--query 4
select distinct job from emp

--query 5
select emp_name,loc from emp , dept where emp.dept_no = dept.dept_no

--query 6
select emp_name  from emp , dept where emp.dept_no = dept.dept_no  and loc='4000'

--query 7
select emp_name from emp where dept_no='123'

--query 8
select emp_name from emp where length(emp_name)=6

--query 9
select emp_name  from emp where emp_name like '%C';
select * from emp
