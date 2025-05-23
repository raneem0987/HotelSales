create database NewDataBase;

use NewDataBase
go

create table customers (
customerId int not null primary key identity(1,1), 
first_Name nchar(100), 
second_Name nchar(100), 
Address char(100)
)

create table orders (orderId int not null primary key identity(1,1), 
orderDate datetime, 
customerId int,
foreign key customerId refrences
)

select * from customers;

select * from orders;

select o.orderId, c.first_Name, c.Address , second_Name
from orders o
join customers c
on o.customerId = c.customerId;

        ---بيعتمد فى تجميع البيانات على الجدول اليمين---
select o.orderId, c.first_Name, c.Address , second_Name
from orders o
right join customers c
on o.customerId = c.customerId;

         ---بيجب كل البيانات اللى فى الجدول اللى فى الشمال ويشوف موجوده فى الجدول التانى ولا لا ولو ملقهاش بيحط مكانها null---
select o.orderId, c.first_Name, c.Address , second_Name
from orders o
left join customers c
on o.customerId = c.customerId;
 
           ---بيجيب البينات المشتركه بس بين الجدولين---
select o.orderId, c.first_Name, c.Address , second_Name
from orders o
inner join customers c
on o.customerId = c.customerId;

select first_Name, count(orderId) as countsales
from orders o
left join customers c
on o.customerId = c.customerId
group by first_Name      --بيشوف البيانات دى متكرره كام مره--


