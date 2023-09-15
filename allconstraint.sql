create table student
(roll int primary key , name varchar(40) not null,marks int)

insert into student values(11,'omkar',50)
insert into student (roll,name)values(12,'sai');
insert into student (roll,marks)values(13,50);


create table stud
(roll int primary key ,name varchar(40) not null,marks int, email varchar(40) unique)

insert into stud values(12,'omkar',50,'omkar@gmail.com');
insert into stud values(13,'sai',60,'omkar@gmail.com')

create table customers
(cid int primary key , name varchar(40), address varchar(40));
select * from customers
insert customers values(1,'sai','kopat');
insert customers values(2,'rudra','kolbad');
insert customers values(3,'chatrapati','vrindavan');
create table orders
(ord_int int primary key, cid int foreign key references customers(cid))
 select * from orders
insert orders values(1001,1);
insert orders values(1002,2);
insert orders values(1003,2);
insert orders values(1004,3);
insert orders values(1005,3);
insert orders values(1006,4);

create table stud1(roll int  primary key ,name varchar(40),age int check(age>=20))

insert into stud1 values(1,'sumo',20)
select getdate()

create table stud2(roll int primary key,name varchar(40), doa date default getdate() )

insert into stud2 values(1,'shri','2023-05-09')
insert into stud2 (roll,name) values(2,'xyz');
select * from stud2