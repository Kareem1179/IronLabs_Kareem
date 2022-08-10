create database if not exists lab_mysql;
use lab_mysql;
create table if not exists Cars (
ID int,
VIN varchar(30),
Manufacturer varchar(30),
Model varchar(30),
Year int,
Color varchar(20));

create table if not exists Customers (
ID int,
CustomerID int,
Name varchar(30),
Phone varchar(30),
Email varchar(30),
Address varchar(30),
City varchar(20),
State_Province varchar(30),
Country varchar(30),
Postal int);

create table if not exists Salespersons (
ID int,
Staff_ID int,
Name varchar(30),
Store varchar(30));

create table if not exists Invoices (
ID int,
Date date,
Car int,
Customer int,
Sales_Person int);

/*To enter the data in the tables, we simply use the command: insert into "Table" ( Values (correct order of column values).
To modify any value, we use: update Table, set column= new value, where another column value is satiisfied */




 
