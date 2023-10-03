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