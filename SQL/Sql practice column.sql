# Practice session for mysql
#\ for single line comment we can use #
# for multi line comment we can use the below
/*
We can write anything in between this as comments

*/

show databases;
#colon is mandatory to execute the next one 
use world;

show tables;

select * from city;
select * from countrylanguage;
#we can acreate and remove databases
create database customers;
drop database customers;
drop database anudeep;
#create table in databases
create database customers;
use customers;
create table customers_info(id integer, First_Name varchar(10), Last_Name varchar(15));
show tables;

select * from customers_info;
Insert into customers_info(id,First_Name,Last_Name) values(1,'Anudeep','Tirumala');
Insert into customers_info(id,First_Name,Last_Name) values(1,'Priyanka','Datla');
Insert into customers_info(id,First_Name,Last_Name) values(1,'Anika','Tirumala');
select * from customers_info;

drop database customers_info;

##2nd session
/*
SQL Null values
SQL Update statements
SQL delete statement
SQL Alter Table
--Add column in existing column
--modify/alter column
--alter tab;e -drop column
*/

show databases;
Create database customer;
show databases;
#use the databases by the below command
use customer;
#create customer info table
create table customer_info(
id integer auto_increment,
 First_Name varchar(25),
 Last_Name varchar(25),
 salary integer,
 primary key(id)
 );
 
 show tables;
 
 select * from customer_info;
 
 #to insert the values
 
 insert into customer_info(First_Name,Last_Name,salary)
 values
 ('Anudeep','Tirumalasetty',100000),
 ('Priya','Tirumalasetty',100000),
('Anika','Tirumalasetty',100000),
('Aira','Tirumalasetty',NULL);

#check the values are null an retrive 
select * from customer_info where salary is null;

#check the values are not null an retrive 
select * from customer_info where salary is not null;

#SQL update statement to replace the null values
update customer_info set salary = 150000 where id =4;
select * from customer_info;

#SQL delete statement
delete from customer_info where id = 3;
select * from customer_info;

#sql alter table
#add columns in existing table

alter table customer_info add email varchar(40);
select * from customer_info;
update customer_info set email = 'tirumala@abc.com' where id =1;
update customer_info set email = 'tirumala@abc.com' where id =2;
update customer_info set email = 'tirumala@abc.com' where id =4;

update customer_info set First_Name = 'Priya' where id =2;

select * from customer_info;

alter table customer_info add dob date;

#alter table modify column

alter table customer_info modify dob year;

#schema

desc customer_info;

#alter table and drop column

alter table customer_info drop column dob;

/* super super importent is   ---- SQL Constraints

1. Nit null
2. unique
3. primary key
4. Foreign key
5. check
6. Default
7. Index
*/

create table student(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int

);

desc student;

alter table student modify age int not null;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)

);

insert into person values(2,'Anudeep','Tirumalasetty',31);

desc person;
select * from person;

update person set first_name = 'Aira' where id =2;

alter table person
Add unique(first_name);
#user can make 2 unique constraints and one of them as multi unique constraint
alter table person
add constraint uc_person unique(age,first_name);

#can we drop multiple entire unique constraints

alter table person
drop index uc_person;

# primary key

create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
constraint pk_person primary key(id,last_name)
);

desc person1;

alter table person1
add primary key(id);

alter table person1
drop primary key;

drop database customer;

show databases;

create database customer;

use customer;

create table person2(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
#constraint pk_person primary key(id,last_name)

);

select * from person2;

desc person2;

alter table person2
add primary key(id);

alter table person2
add constraint pk_person primary key(id,age);

alter table person2
drop primary key;

drop table person2;

###foreign key

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id)
#constraint pk_person primary key(id,last_name)

);

desc person;

drop table person;

show tables;

create table department(
id int not null,
department_id varchar(25) not null,
department_name varchar(25) not null,
primary key(department_id)
#constraint fk_persondepartment foreign key(id) references person(id)

);

alter table department
add foreign key(id) references person(id);
desc department;

drop table department;

##check constraints

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
salary int,
primary key(id),
check(salary<50000)

);

insert into person values(1,'Anu','T',33,40000);

select * from person;


### default constraint
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
city_name varchar(25) default'Hyderabad'

);

desc person1;

alter table person1
alter city_name drop default;

###indexes

show tables;

select * from person1;
desc person1;

create index index_city_name
on person1(city_name);

create table student(
id int not null,
first_name varchar(25),
last_name varchar(25),
age int
);

desc student;

create index index_age
on student(age);

create index index_age_first_name
on student(age,first_name);

alter table student
drop index age;


show tables;
show databases;
use customer;
show tables;
create table student2(
studentid integer auto_increment,
 First_Name varchar(25),
 Last_Name varchar(25),
 age int,
 primary key(studentid)
 );
 desc student2;
 insert into student2
 values
 (1,'Anudeep','Tirumalasetty',33),
 (2,'Priya','Tirumalasetty',31),
(3,'Anika','Tirumalasetty',1),
(4,'Aira','Tirumalasetty',.9);

select *from student2;

create table department(
studentid int auto_increment,
deprtment_name varchar(25) not null,
foreign key(studentid) references student2(studentid)
);


insert into department values(1,'Computer Science'),
(2,'ECE'),
(3,'Civil');

select * from department;
drop table department;
select * from student2;
drop table student2;

create view student2_info as 
select first_name,last_name,age from student2 inner join department
using (studentid);

select * from student2_info;

drop view student2_info;

## SQL Joins

/*
1.Inner Join
2.Left Join
3. Right Join
4. Full Join
5. Natural Join
6. Cross Join
*/

use customer;

select * from student2;
select* from department;
insert into student2
values
(5,'krishna','d',29),
(6,'Anusha','d',27);

select * from student2;
select * from department;
##inner join
select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 inner join department
on student2.studentid=department.studentid;
##leftjoin
select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 left join department
on student2.studentid=department.studentid;

##rightjoin

select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 right join department
on student2.studentid=department.studentid;

##full outer join
select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 left join department
on student2.studentid=department.studentid
union
select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 right join department
on student2.studentid=department.studentid;

##cross join

select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 cross join department;
 
 #natural join
 select student2.studentid,student2.first_name,student2.last_name,student2.age,department.deprtment_name
 from student2 cross join department;
 


####stored procedure - click left click on stored procedure and create the new and right as similar as below

call get_student2_info;

/*CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student2_info`(in age int)
BEGIN
select * from student2 where student2.age=31;


END
)*/


call get_student2_info(31); 
#for in fuction 
/*CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student2_info`(in age int)
BEGIN
select * from student2 where student2.age=31;


END
)*/

call get_student2_info(@record);

select @record as Totalrecordsl;

#for out function
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student2_info`(out records int)
BEGIN
select count(*) into records from student2 where student2.age=1;


END
*/
call get_student2_info(@record,1);

select @record as Total_Records;

#for inout function
/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student2_info`(out records int)
BEGIN
select count(*) into records from student2 where student2.age=1;


END
*/