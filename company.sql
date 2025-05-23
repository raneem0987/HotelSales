create table Company (first_Name varchar(10) not null, second_Name varchar(10) not null, Age float, Salary float);

create database newcompany;

use newcompany
go

--alter table Company add Email text;

/*
insert into Company (first_Name, second_Name, Age, Salary, Email)
values ('raneem', 'sameh', 22, 20000, 'raneem@gmail.com'),
       ('mohamed', 'hamed', 40, 50000, 'mohamed@gmail.com'),
	   ('ramadan', 'ali', 35, 80000, 'ramadan@gmail.com'),
	   ('walaa', 'kamel', 20, 10000, 'walaa@gmail.com');
*/

select * from Company;

select first_Name from Company;

/*
insert into Company (first_Name, second_Name, Age, Salary, Email)
values ('fateh', 'osamn', 22, 60000, 'fateh@gmail.com');
*/

--delete from Company where first_Name = 'mohamed' and first_Name = 'ramadan' and first_Name = 'walaa';

--update Company set second_Name = 'mabrouk' where second_Name = 'ali';

--update Company set Age = '40' where first_Name = 'ramadan' and second_Name = 'mabrouk';

--update Company set Salary = '30000' where first_Name = 'mohamed' or first_Name = 'ramadan';

select first_Name, Age, Salary from Company where first_Name = 'raneem';

select distinct first_Name, second_Name, Age, Salary
from Company;

--truncate table Company;

select count(first_Name) from Company;
select count(distinct first_Name) from Company;

select sum(Salary) from Company;

select avg (Salary) from Company; 

select max (Salary) from Company;

select min (Salary) from Company;

select *
from Company
where first_Name = 'ramadan';

select *
from Company
where first_Name like 'r%';

select *
from Company
where first_Name like '%d';

select *
from Company
where second_Name like '%e%';

select * from Company
where Age = 22;

select * from Company
where Age < 22;

select * from Company
where Age > 22;

select * from Company
where Age <> 22;

select * from Company
where Age between 22 and 50;

select * from Company
where Age >22
order by Salary asc;

select * from Company
where Age >22
order by Salary desc;

select * from Company
order by first_Name, Age desc;

