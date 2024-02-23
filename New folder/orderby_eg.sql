select * from emp

select ecode as 'Employee Code',ename as 'Employee Name'
from emp

-- computed column
select ename,salary as 'Monthly salary',salary*12 as 'Annual Salary'
from emp

--lengh of some field
select ename,len(ename) as 'Lenght of name' from emp


select * from emp where dept is null
select * from emp where dept is not null

select * from emp order by salary
select * from emp order by salary desc

--double sorting
select * from emp order by dept,salary desc

select * from emp order by ename desc

