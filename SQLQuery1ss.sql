create database salesman_db
use salesman_db
create table salesman_sampletable
(salesman_id float(40) primary key 
,name varchar(40), 
city varchar(40) ,
 commission varchar(40))

 insert salesman_sampletable values(5001 , 'James Hoog' ,'New York' ,0.15)
 insert salesman_sampletable values(5002 , 'Nail Knite  ' ,'Nail Knite  ' ,0.13)
 insert salesman_sampletable values(5005 , ' Pit Alex ' ,'London' , 0.11)
 insert salesman_sampletable values(5006 ,'mc lyon' ,'paris' , 0.14)
 insert salesman_sampletable values(5003 , 'Lauson Hen' , ''  ,0.12)
 insert salesman_sampletable values(5007 ,'Paul Adam' ,'Rome' , 0.13)

 select * from salesman_sampletable -- to display all the information of all salesmen. 1st query
 
 select 10 as 'first coloumn', 20 as 'second coloumn' ,30 as 'first coloumn'

 select 'This is SQL Exercise, Practice and Solution' --to display three numbers in three columns. 2nd query

  select 10 as 'first coloumn', 20 as 'second coloumn' ,30 as 'first coloumn' -- to display three numbers in three columns. 3rd query

 select 10 + 15 as result --  to display the sum of two numbers 10 and 15 from RDMS sever. 4 th query
 declare @a as int -- to display the result of an arithmetic expression. 5 th query
 declare @b as int
 set @a = 10
 set @b = 20
 declare @c as int
 set @c = @a + @b
 print @c

 select  name,commission from salesman_sampletable -- to display specific columns like name and commission for all the salesmen. 6 th query

 create table salesman_order( -- 2nd table
 ord_no varchar(50)  primary key ,
 purch_amt varchar(50) ,
 ord_date varchar(50) ,
 customer_id  varchar ,
 salesman_id varchar)

 insert salesman_order values ( 70001 ,150.5,'2012-10-05',  3005 , 5002)
 insert salesman_order values ( 70009 ,270.65 ,'2012-09-10',  3001, 5005)
 insert salesman_order values (70002 , 65.26  , '2012-10-05' , 3002 ,5001)
 insert salesman_order values (70004 , 110.5 , '2012-08-17',  3009 ,  5003)
 insert salesman_order values(70007 , 948.5 , '2012-09-10' , 3005 ,  5002)
 
 select * from salesman_order
 delete salesman_order