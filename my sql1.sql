create database company;
use company;
show databases;
show tables;
create table comp(
order_id int unique,
product varchar(10) default "paper",
total int Not null);
drop table comp;
show tables;
describe table comp;
create table customer(
customer_id int unique,
first_name varchar(15),
last_name varchar(10),
country varchar(10)default "USA");
alter table customer add phn int check (length(phn)=10);
alter table customer add country varchar(10) default "USA";
show tables;
desc customer;

