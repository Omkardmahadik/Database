create database Omkarw_db
create table books(Isbn float primary key,Title varchar(50),Price float,Quantity int not null) --1st table
insert books values(1001,'java for dummies','11.11','11')
insert books values(1002,'only java ','22.22','22')
insert books values(1003,'java abc','33.33','33')
insert books values(1004,'java 123','44.44','44')

select * from books


create table Authors(authorld int primary key,email varchar(40)unique);

insert Authors values(1,'Tan ah teck','teck@nowhere.com')
insert Authors values(2,'Mohammed ali','ali@somewhere.com')
insert Authors values(1,'Tan ah teck','')

create table Book_authors(Isbn float foreign key references books(Isbn), authorld int foreign key references Authors(authorld))