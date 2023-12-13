create database comp;
use comp;
drop database comp;
CREATE TABLE Customers (
  id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  age INT,
  country VARCHAR(10)
);

CREATE TABLE Orders (
  order_id INT primary KEY,
  product VARCHAR(40),
  total INT,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES Customers(id));
show tables;
insert into Customers values
(1,'John','Doe',31,'USA'),
(2,'Robert','Luna',22,'USA'),
(3,'David','robinson',22,'UK'),
(4,'John','Reinhardt',22,'UK'),
(5,'Betty','Doe',28,'UAE');

select * from Customers;

insert into orders values
(1,'Paper',500,5),
(2,'Pens',10,2),
(3,'Markers',120,3),
(4,'Books',1000,1),
(5,'erasers',20,4),
(6,'markers',50,8);

select * from Orders;

show tables;

select * from customers;
select * from orders;
desc orders;
desc customers;
select * from orders;
-- retrive the firstname and lastname from customers table
select first_name,last_name from customers;
-- retrive the product name whose total sale is greater and equal to 500 from orders table
select product , total from orders where total >=500; 
-- retrive all entries except product is paper
select *from orders where product<>'Paper';
-- retrive all distinct country name from customers table
select distinct country from customers;
select *from customers;
-- sorting the table in ascending order on total column
select * from orders order by total; 
-- sorting in descending
select *from orders order by total desc;
-- retrieve the distinct firstname from the customer table
select distinct first_name from customers;
select distinct last_name from customers;
-- retrieve all the customers name whose age is between 23 to 35
select first_name,age from customers where age between 23 and 35;
select* from orders;
select * from orders limit 3;
select * from orders limit 3 offset 2;
select product as top_product,total from orders order by total desc limit 1  ;

-- product wise total sales

select product,sum(total)from orders group by product order by sum(total) desc;

-- customer wise total purchase

select customer_id,sum(total) from orders group by customer_id order by sum(total) desc;

-- retrive all the name of customers having 'o' in their names
select concat(first_name ," ",last_name) as full_name from customers where concat(first_name," ",last_name)like '%o%';

-- retrive all the name of customers end with 'n'
select concat(first_name," ",last_name)as full_name from customers where concat(first_name," ",last_name)like '%n';

-- retrive all country name starts with 'u' amd end with 'A' or 'E'
select * from customers where country like 'U%E'or country like 'U%A';

-- country wise no of customers
select country ,count(*)'No of customers' from customers group by country;
-- age wise no of customers
select age,count(*)'No of customers' from customers group by age order by age;