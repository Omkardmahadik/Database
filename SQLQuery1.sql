create database emp
use emp
create table emp_detail(fristname varchar(10),lastname varchar(10),phone varchar(90))
insert into emp_detail values('niraj','kudale','19-0000-8855')
insert into emp_detail values('omkar','mahadik','90-8888-96321')
select *from emp_detail

order by lastname

insert into emp_detail values('rohan','horkate','91-88433-96842')

select *from emp_detail

select fristname , lastname , phone from emp_detail order by lastname
select fristname,lastname from emp_detail


create database stud
use stud
create table stud_detail(name varchar(10),roll varchar(10),marks varchar(90))
insert into stud_detail values('niraj','1','19')
insert into stud_detail values('omkar','2','90')
insert into stud_detail values('harsh','3','18')
insert into stud_detail values('rohan','4','97')
insert into stud_detail values('shome','5','15')
insert into stud_detail values('sarvsesh','6','98')
insert into stud_detail values('anil','7','14')
insert into stud_detail values('sujit','8','36')

select name , roll , marks from stud_detail where roll between 5 and 8

select name , roll , marks from stud_detail where roll not between 5 and 8




create database man
use man
create table man_detail(name varchar(90),lastname varchar(10),city varchar(90))
insert into man_detail values('niraj','k','mumbai')
insert into man_detail values('omkar','m','mumbai')
insert into man_detail values('harsh','r','mumbai')

insert into man_detail values('rohan','r','delhi')
insert into man_detail values('shome','k','delhi')
insert into man_detail values('sarvsesh','p','delhi')

insert into man_detail values('anil','k','kolkata')
insert into man_detail values('sujit','g','kolkata')
insert into man_detail values('oppr','u','kolkata')


select * from man_detail where city='mumbai' or city='kolkata'

select * from man_detail where city='mumbai' or city='delhi'



create table student(
roll int primary key,
name varchar(20) not null,
marks int)


insert into student values(1,'niraj',50)
insert into student values(1,'omkar',60)

insert into student(roll,name) values(2,'omkar')

select *from student


create table stud(roll int primary key,
name varchar(20) not null,
marks int,
email varchar(20) unique)

insert into stud values (1,'abc',60,'abcd@gmail.com')
insert into stud values (2,'xyz',40,'abcd@gmail.com')


create table customer(
cid int primary key,
name varchar(20) not null,
addres varchar(20))


insert into customer values(1,'abcd','thane')
insert into customer values(2,'xyz','mulund')
insert into customer values(3,'pok','mumbai')


create table orders(ordid int primary key,
cid int foreign key references customer(cid))

insert into orders values(1001,1)
insert into orders values(1002,2)
insert into orders values(1003,2)
insert into orders values(1004,3)
insert into orders values(1005,4)


select *from orders






create table stud1(roll int primary key,
name varchar(20) not null,
age int check (age>=20))



insert into stud1 values(1,'abc',25)
insert into stud1 values(2,'harsh',60)
insert into stud1 values(3,'xyz',5)

select getdate()


create table stud2(roll int primary key,
name varchar(20) not null,
doa date default getdate())


insert into stud2 values(1,'abcd','2023-05-20')
insert into stud2(roll,name) values(2,'xyz')

select*from stud2


create table emp(
ecode int primary key,
ename varchar(20) not null,
dcode 
)




create table employe(
code int primary key,
name varchar(20) not null,
decode int not null,
desing varchar(20),
salary int
)

alter table employe drop COLUMN decode
alter table employe add decode int

insert into employe values(1,'aab',10,'officer',20000),
                           (2,'bba',10,'maneger',10000),
						   (3,'xyz',20,'officer',1000),
						   (4,'opd',20,'maneger',200)


create table employe1(
decode int primary key,
decp varchar(20)
)

insert into employe1 values(10,'sales'),
                           (20,'accounted') 

select *from employe where decode=(select decode from employe1 where decp='salary')

              
			  --join sql--
			  
create table stu_ad(addmi int,frist varchar(20),lastname varchar (20),age int) 
 insert into stu_ad values(1,'harsh','chtu',2),
                    (2,'omkar','m',12),
					(3,'servesh','p',15),
					(4,'kunal','m',100),
					(5,'shubam','k',50)


create table feesa(addmi int, cours varchar(20),amount int)
                    
					
insert into feesa values(1,'bca',20000),
                        (2,'mca',10000), 
						(3,'bea',500000)
					
						
						
select stu_ad.addmi,stu_ad.frist,stu_ad.lastname,feesa.amount
from stu_ad
right outer join feesa
--left outer join feesa--
on stu_ad.addmi=feesa.addmi                                           