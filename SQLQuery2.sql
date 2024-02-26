
use om
/*Write a Oracle SQL query to get the details of all employees and also display the specific information of all employees. */
select id ,product  from sales_info;

select * from  Employee;

insert into Employee values('omkar',12,'mahadik','2000');
insert into Employee values('niraj',13,'kudale','3000'),('subh',14,'mohanty','5000');


/*Write a Oracle SQL query to get the total number of employees working in the company. 3  */
select count(*) as 'total_emp' from Employee;

/*Write a Oracle SQL query to get the total salary being paid to all employees. 4 */
select sum(salary) as 'total_salary' from Employee;

/*Write a Oracle SQL query to get the maximum and minimum salary from the employees table. 5*/
select max(salary) as 'max_salary'  ,
min(salary) as 'max_salary'from Employee;

/*Write a Oracle SQL query to display the name of the employees in order to earning from lowest salary to highest 6*/
SELECT name
FROM Employee
ORDER BY salary;

/*Write a Oracle SQL query to display the name of the employees in order to earning from highest salary to lowest. 7*/
SELECT name
FROM Employee
ORDER BY salary desc;

/*Write a Oracle SQL query to display the name of the employees in order to alphabetically ascending order 8*/
select name from Employee order by name;

/*Write a Oracle SQL query to display employee id, name, department no, salary of the employees. The output first based on the employee name in ascending order, for unique name department will come in ascending order, and for same name and department the highest salary will come first. */
select id,name,salary  from Employee
order by name;

/*. Write a Oracle SQL query to display the name and their annual salary. The result should contain those employees first who earning the highest salary. 10 */
select name,salary from Employee order by salary desc;

/* Write a Oracle SQL query to display department id and total number of employees working in each department. 11*/
select  id ,count(*) as employee_working from Employee group by id;

SELECT id, COUNT(*) AS total_employees
FROM Employee
GROUP BY id;

/*Write a Oracle SQL query to display the designation (job id) and total number of employees working in each designation. 12*/

select id, count(*) as emp_working from Employee group by id;

/*Write a Oracle SQL query to display the department number and total salary for each department. 13*/
