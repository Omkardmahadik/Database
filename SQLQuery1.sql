create database sm_db
use sm_db
create table sm_details(un varchar(10) , pass  varchar(10) , city varchar(10))
insert sm_details values('subhanshu', '123' ,'odisha')
insert sm_details values('Omkar', '456' ,'Thane')
insert sm_details values('Niraj', '789' ,'kokan')
insert sm_details values('kunal', '913' ,'nashik')
insert sm_details values('iconic', '444' ,'mars')
insert sm_details values('sohame', '777' ,'andheri')
insert sm_details values('harsh', '123' ,'dombivli'
select * from sm_details
select un from sm_details
update sm_details set un='chotu' where un='harsh'
delete sm_details where un='chotu'
select un , pass , city from sm_details order by city 
select un,pass from sm_details order by pass
select * from sm_details where  city='thane' or city='andheri'
