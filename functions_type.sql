-- create type

select getdate()

create table test
(name varchar(20) not null,
doj datetime default getdate())

create table test1
(roll int ,name varchar(20),remark varchar(20) default 'good')

insert into test1 (roll,name) values (2,'bbb')
insert into test1 values(1,'aaa','ok')

select * from test1
--default format of date is mm/dd/yy
insert into test values('bbb','1/15/2021')

insert into test (name) values('ccc')

select * from test

create type mydate from datetime null

create table test2
(name varchar(20),
doj mydate default getdate())

create table book
(bookcode int primary key,
bookname varchar(20),
dt_pub mydate default getdate())

select * from student

alter table student
add remark varchar(20)

update student set remark='ok' where roll = 1
select name,remark from student

select name + '=' + remark as 'Details' from student
select name + '=' + marks as 'Details' from student

select name + '=' + convert(varchar,marks) as 'Details' from student

select getdate()

select avg(marks) as 'highest' from student
select max(marks) from student
select min(marks) from student
select count(*) from student

select getdate()
select sysdatetime()
select getutcdate()
/*
The difference between GETDATE() and GETUTCDATE() 
is in timezone, the GETDATE() function returns the current 
date and time in the local timezone, the timezone where your 
database server is running, but GETUTCDATE()
return the current time and date in UTC
*/


select dateadd(dd,10,getdate())
select dateadd(MONTH,10,getdate())

DECLARE @startdate DATETIME2 = '2007-05-05 12:10:09.3312722';  
DECLARE @enddate   DATETIME2 = getdate()   
SELECT DATEDIFF(year, @startdate, @enddate);  

select datediff(year,'2007-03-27',convert(varchar,getdate()))
select datediff(m,'2007-03-27',convert(varchar,getdate()))
select datediff(hh,'2007-03-27',convert(varchar,getdate()))

select year(getdate())
select month(getdate())
select day(getdate())

select Rand()*100 -- generates a random number bet 0 to 1
select Convert(int,10 * rand())

select round(78.727,2)

select power(2,3)

select abs(-56.65)

select CEILING(78.189) -- 79
select floor(78.689) -- 78

select HOST_ID()
select host_name()

declare @name as varchar(20) = 'aptech computer'
select substring(@name,4,10)
select left(@name,5)
select right(@name,10)

select left(name,2) from student

declare @nm as varchar(20) = '   aptech computer   '
select DATALENGTH(@nm)
select datalength(trim(@nm))
select replace(@nm,'e','@')
select REPLICATE(@nm,3)

select upper(@nm)
