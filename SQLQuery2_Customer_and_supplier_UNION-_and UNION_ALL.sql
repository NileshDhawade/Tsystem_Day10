create table Customer1
(
Id int ,
Name varchar (50),
City varchar (50),
State varchar (50)

)

insert into Customer1 values(1,'Suraj','Pune','maharashtra');
insert into Customer1 values(2,'nilesh','aurangabad','maharashtra');
insert into Customer1 values(3,'rahul','nashik','maharashtra');
insert into Customer1 values(4,'vicky','mumbai','maharashtra');

select * from Customer1


create table Supplier1
(
Id int ,
Name varchar (50),
City varchar (50),
State varchar (50)

)

insert into Supplier1 values(1,'Rahul','pune','maharashtra');
insert into Supplier1 values(2,'ganesh','nandurbaar','maharashtra');
insert into Supplier1 values(3,'amir','nashik','maharashtra');
insert into Supplier1 values(4,'raghu','dhule','maharashtra');


select * from Supplier1

Select City,State from Customer1

UNION

Select City,State from Supplier1

Order by City



Select City,State from Customer1

UNION ALL

Select City,State from Supplier1

Order by City