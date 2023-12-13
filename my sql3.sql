create database tech;
show databases;
drop database tech;
use tech;
create table student1(
id int not null unique primary key,
e_name varchar(50) not null default 'unnmaed',
age int not null,
class int not null);
insert into student1 values
(1, 'mohit', 18, 12),
(2, 'rohit', 17, 11),
(3,'Mohit',18,12),
(4,'poorvi',16,11),
(5, 'prateek', 14, 8),
(6, 'vishnu', 12, 7),
(7, 'mahesh', 17, 10),
(8, 'aparna', 16, 11),
(9, 'jatin', 17, 11),
(10, 'rohit', 13, 8);
show tables;
desc student1;
select* from student1;

-- Retrieve all entries from student1
-- Retrieve name and class from student1
-- Retrieve distinct name  from student1
-- Retrieve only 3 rows entry.
-- Retrieve rows from 4 to 8
-- Sort the table by class in desc order.
-- Sort the table by age(ascending) and class(descending)
-- Retrieve the data for class 12
-- Retrieve the data for id more than 5 and less than 9

select * from student1;
select e_name,class from student1;
select distinct e_name,class from student1;
select * from student1 limit 3;
select * from student1 limit 5 offset 3;
select * from student1 order by class desc;
select * from student1 order by age ;
select *from student1 order by class desc;
select *
 from student1 where class = 12;
select * from student1 where id>5 and id<9;