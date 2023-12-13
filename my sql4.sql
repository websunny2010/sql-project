create database custom;
show databases;
use custom;
drop database custom;
create table customers(
id int primary key,
E_name varchar(15),
age int unique,
country varchar(10)  default 'India');
insert into customers values
(1 ,'Doe', 20 ,'Japan'),
(2 ,'Sam', 18 ,'Paris'),
(3 ,'Ram', 35 ,'London'),
(4 ,'Tanish', 28 ,'England'),
(5 ,'Suman', 22 ,'Thailand') ,
(6 ,'Munna', 27 ,'Newyork') ,
(7 ,'Ravi', 50 ,'USA') ,
(8 , 'sumit',100, 'Brazil');
show tables;
desc customers; 
select * from customers;

-- retrieve age and country of all customers
select age ,country from customers;
-- select rows if age is less than 27
select min(age) as min_age from customers where age<27;
-- select the age and country of customers whose age is less than or equal to 28
select age,country from customers where age<=28;
-- select the countries of customers whose age is greater than 27
select age,country from customers where age>27;
-- select customers whose age is equal to 22
select age,E_name from customers where age=22;
-- select customers whose age is not equal to 22
select * from customers where not age =22;
-- select rows if country is USA
select *from customers where country ;
-- select rows if both the age > 23 and last_name = 'Doe' conditions are TRUE
-- select rows if either of the conditions age > 23 or country = 'USA' is TRUE
-- Select all the columns from the Products table for products whose quantity is not equal to 25 and price is greater than 160
-- select rows if country is not UK
-- select customers if age > 23 or country is both 'USA' and 'UK'
-- find the minimum sale from order table
--  find the maximum sale from order table
-- find the product name with minimum sale
-- find the product name with maximum sale
-- write a query to find the no of students of class 10
-- find the no of customer from country UK
-- update the name of the person from sam to meghna
update customers set E_name='Meghna' where E_name='sam';
-- delete the entry of this customers where id=2
delete from customers where id=2;
-- no.of entries for id > 5
select count(*) from customers where id>5;
select * from customers where E_name like 'r%';
-- name of students ending with a
select * from customers where E_name like '%m';
-- name of customers having a in their names
select* from customers where E_name like '%a%';
-- name of customers starting with t and end with h
select * from customers where E_name like 't%h';
select * from customers where name like 'su__%';
-- group by
-- classwise no. of customers
select country,count(*) from customers group by country;
-- agewise no. of customers
select age,count(*) as "no of country" from customers group by age order by age;
-- find the min age no of E_name in each country
select country,min(age) from E_name group by country order by country; 
select class, round(avg(age),2)as avg_age from student1 group by class order by class;