select * from emp
select * from dept

--disp the name salary and the dept name
--inner join
select ename,salary,descp
from emp,dept
where emp.dcode = dept.dcode

select e.ename,e.salary,d.descp
from emp e,dept d
where e.dcode = d.dcode

select e.ename,e.salary,d.descp
from 
emp e inner join dept d
on e.dcode = d.dcode
--if two tables are joined then minimum 1 condition is expected
--if four tables are joined then minimum 3 conditions are expected
--if n tables r joined then minimum n-1 conditions are expected

--left outer join
--disp the common records and remaining records from left side table
select e.ename,e.salary,d.descp
from 
dept d
left outer join
emp e
on e.dcode = d.dcode

--right outer join
--disp the common records and remaining records from right side table
select e.ename,e.salary,d.descp
from 
emp e
right outer join
dept d
on e.dcode = d.dcode

--full outer join
select e.ename,e.salary,d.descp
from 
emp e
full outer join
dept d
on e.dcode = d.dcode

--cartesian product -- cross join
select e.ename,e.salary,d.descp
from emp e,dept d

--self join
--joining table to itself
create table emps
(ecode char(2),ename varchar(20),mcode char(2))

insert into emps values('e1','aaa','e4')
insert into emps values('e2','bbb','e4')
insert into emps values('e3','ccc','e4')
insert into emps values('e4','ddd','e5')
insert into emps values('e5','eee','e7')
insert into emps values('e6','fff','e7')
insert into emps (ecode,ename)values('e7','ggg')

select * from emps

--display name of an employee and his manager name

select e1.ename as 'emp name',e2.ename as 'mgr name'
from emps e1,emps e2
where
e1.mcode = e2.ecode

select e1.ename as 'emp name',e2.ename as 'mgr name'
from emps e1
left outer join 
emps e2
on
e1.mcode = e2.ecode






