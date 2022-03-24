Create Table Emp1
(
EmpId int primary key  identity (1,1) not null,
EmpName varchar(50) not null,
Age int check (age>=18),
Department varchar(20) not null ,
Salary decimal check (salary>0),
)


-- insert values into the emp1 table

insert into Emp1 values ('nilesh',24,'developer',28000);
insert into Emp1 values ('amir',23,'Tester',27000);
insert into Emp1 values ('rahul',25,'developer',26000);
insert into Emp1 values ('aaradhya',26,'Tester',22000);
insert into Emp1 values ('vikrant',25,'developer',28000);

-- modify the existing records int the table 

update Emp1 set Department= 'Networking',Salary=29000 where EmpId=1

--DQL
select EmpName,Salary from Emp1;

alter table Emp11
add city varchar (20)
update Emp1 set city = 'pune' where EmpId=1;
update Emp1 set city = 'Mumbai' where EmpId=2;
update Emp1 set city = 'Nagpur' where EmpId=3;
update Emp1 set city = 'Ahmednagar' where EmpId=4;
update Emp1 set city = 'Aurangabaad' where EmpId=5;



select * from Emp1 where Salary <=24000;
select * from Emp1 where Salary >24000;
select * from Emp1 where Salary between 23000 and 26000;

select * from Emp1 where city like 'p%'      -- city name has to be start with p 

select * from Emp1 where city like '%n'      --city name start with any chars & ending with n
select * from Emp1 where city like '%n%'     -- city where n will be at any palce
select * from Emp1 where city like 'n_____'  -- _ specify the any chars( here we must  know the length of the city )
select * from Emp1 where city like '[pm]%'
select * from Emp1 where city like '[a-m]%'  -- define range start with a end with m
select * from Emp1 where city like '[n-z]%'
select * from Emp1 where city like '[d-x]%'







select * from Emp1;

create table Dept 
(
Did int ,
Dname varchar (50) not null,
EmpId int,
constraint PK_Did primary key (Did),
constraint FK_EmpId foreign key (EmpId) references Emp1(EmpId),
);
 select * from Dept;


