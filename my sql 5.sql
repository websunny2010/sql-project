create database bookstore;
show databases;
use bookstore;
drop database bookstore;

create table category(
id int primary key,
c_name varchar (20));
alter table category modify column c_name varchar(20) not null;
INSERT INTO category 
VALUES (1, 'cat-A'),
(2, 'cat-B'),
(3, 'cat-C'),
(7, 'cat-D'),
(8, 'cat-E'),
(4, 'cat-F'),
(10,'cat-G'),
(12,'cat-H'),
(6, 'cat-I');

create table authors(
id int primary key,
A_name varchar(20));
alter table authors modify column A_name varchar(20) not null;
INSERT INTO Authors
VALUES (1, 'author-A'),
(2, 'author-B'),
(3, 'author-C'),
(10, 'author-D'),
(12, 'author-E');

drop table books;
create table books(
id int auto_increment primary key,
B_name varchar(20) not null,
price int,
cat_id int,
Aut_id int,
foreign key (cat_id) references category(id),
foreign key (Aut_id) references authors(id)
)auto_increment=100;
INSERT INTO Books 
(B_name,price,cat_id,aut_id)
VALUES ( 'Book-A', 100, 1, 2),
( 'Book-B', 200, 2, 2),
( 'Book-C', 150, 3, 2),
( 'Book-D', 100, 3,1),
( 'Book-E', 200, 3,1),
( 'Book-F', 150, 4,1),
( 'Book-G', 100, 7,10),
( 'Book-H', 200, 8,12),
('Book-I', 150, 7,3);
select * from books;

select b.id ,b_name, c_name, price from books b,category c 
where b.cat_id = c.id;

select b.id, b_name,a_name, price from books b,authors a
where b.aut_id = a.id;
 
