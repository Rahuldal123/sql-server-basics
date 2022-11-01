create table Person (
Id int primary key,
Fnme varchar (40) not null,
city varchar (18)

)
select * from Person
insert into  Person values('Rahul','Pune')
insert into  Person values('Praful','Nagpur')
insert into  Person values('Minal','pune')
insert into  Person values('Shubham','Mumbai')
insert into  Person values('Manish','pune')
update Person set fnme='Rajni',city='kolkata' where Id=3
select * from Person where city='Pune'
sp_rename 'Person.fnme ','fname'
sp_help Person
create table Employee(
Id int identity (1,1) primary key,
name varchar(40) not null,
department varchar (10) ,
Email varchar(40),
salary numeric 

)
select * from Employee

insert into Employee values('Rahul','mechanical','rahul@gmail.com',25000)
insert into Employee values('suraj','Quality','abc@gmail.com',35000)
insert into Employee values('Abhishek','Production','kxy@gmail.com',45000)
insert into Employee values('Pranav','HR','jbl@gmail.com',65000)
insert into Employee values('Rohan','Quality','mnv@gmail.com',55000)
insert into Employee values('Mayur','HR','rkl@gmail.com',56000)
insert into Employee values('Rutik','Production ','pqr@gmail.com',35000)

update Employee set salary=27000,department='finance' where Id=3
delete from Employee where Id=4

select * from Employee where salary>35000
select * from Employee where salary <> 27000
select * from Employee where salary between 20000 and 50000
select name,department,salary from Employee
select * from Employee where Id=5
select * from Employee where name like '%r'
select * from Employee where name like 'r%'
select * from Employee where name like'____l'
select * from Employee where name like '%[a-k]'
select * from Employee where name like '[a-d]%'
select * from Person where fname like '%s%'
select * from Employee where department not like 'p%'
select * from Employee where name like'[abc]%'
select * from Employee where department in ('Production','Quality')
select * from Employee where department not in ('Production','Quality')
select * from Employee where Id in(1,2,5)
select * from Employee where Id not in (1,2,5)
select * from Employee where department='Quality'and department='Production'
select * from Employee where department='Quality'or department='Production'
select * from Employee where not department='Quality'
select * from Employee order by name
select * from Employee order by name desc
select * from Employee order by salary
select * from Employee order by salary desc
select * from Employee where department ='Quality'order by name
select * from Employee where name like '[akr]%' order by salary
alter table Employee add City varchar(40)
update Employee set City ='Pune' where Id=1
update Employee set City ='Mumbai' where Id=3
update Employee set City ='Pune' where Id=5
update Employee set City ='Nagpur' where Id=6
update Employee set City ='Surat' where Id=7
update Employee set City ='Mumbai' where Id=8
select * from Employee where ( department = 'Quality'and  salary>35000)
select * from Employee where (department='Quality' and City='Mumbai')
select * from Employee where (department ='HR' and name like 'm%')
select * from Employee order by name
select * from Employee where department ='Quality' order by name desc
select count (distinct name )from Employee

select count (*) from Employee
select sum (salary) from Employee
select max (salary) from Employee
select min (salary) from Employee
select avg (salary) from Employee
select count (Id) from Employee 
sp_help Employee

create table Dept(

DeptId int identity primary key,
Deptname varchar(50)
)
alter table Employee add DeptId int
select * from Dept
alter table Employee drop column department
insert into Dept values('HR')
insert into Dept values('Developmet')
insert into Dept values('Testing')
insert into Dept values('Admin')

update Employee set DeptId=1 where Id=1
update Employee set DeptId=2 where Id=2
update Employee set DeptId=1 where Id=3
update Employee set DeptId=3 where Id=4
update Employee set DeptId=1 where Id=5
update Employee set DeptId=4 where Id=6
update Employee set DeptId=4 where Id=7
select * from Employee 
select * from Dept
select e.name,e.Email,e.salary,d.Deptname from Employee e
inner join Dept d on d.DeptId=e.DeptId
insert into Employee values('kishor','kisj=hor@123',25000,'Pune',null)
select e.name,e.Email,e.salary,d.deptname from Employee e
left join Dept d on d.DeptId=e.DeptId
 select e.name,e.email,e.salary,d.deptname from Employee e
 right join Dept d on d.DeptId=e.DeptId
 select e.name,e.Email,e.salary,d.deptname from Employee e
 full join Dept d on d.DeptId=e.DeptId
 select e.name,e.Email,e.salary,d.deptname from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 where e.salary between 20000 and 50000
 order by e.salary
 select e.name,e.Email,e.salary,d.deptname from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 where d.DeptId=2 and  e.salary>25000
 -- display employee who work in developent and has salary less than Rohan
 select e.name,e.Email,e.salary,d.deptname from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 where d.DeptId=2 and e.salary <55000

 -- display emp whose salary >30000 and not works in HR dept
 select e.name,e.Email,e.salary,d.deptname from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 where e.salary >30000 and d.deptname not like 'HR'

 -- display emp who work in development and testing and sort by name
 select e.name,e.Email,e.salary,d.deptname from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 where d.deptname in('Developmet','Testing') order by e.name
 -- display emp who work in HR,admin,and salary>15000 and arrange in desc
 select e.name,e.Email,e.salary,d.deptname from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 where d.deptname like 'HR' or d.deptname like'Admin'order by e.salary desc
 select * from Employee
 update Employee set  lastname='Dalwale'where id=1
 update Employee set  lastname='Rajput'where id=2
 update Employee set  lastname='Kumbhar'where id=3
 update Employee set  lastname='Somavanshi'where id=4
 update Employee set  lastname='Indalkar'where id=5
 update Employee set  lastname='Mane'where id=6
 update Employee set  lastname='Jadhav'where id=7
alter table Employee add lastname varchar(60)
select * from Dept
select * from Employee
-- select firstname and last name  from Employee
select name 'Firstnamr',lastname 'Lastname' from Employee
alter table Dept add Constraint un_id unique (DeptId)
select * from Employee e
-- display all employee details in descending order
select * from Employee order by Id desc
select count (distinct DeptId) from Employee
-- display employee details with salary and calculate pf as 12%of bs
select name,lastname,salary,salary*0.12 PF from Employee
--sum of all salaries to payable to employees
select sum(salary) as total_salary from Employee

-- display employee name in Upper case
select upper (name) as Name from Employee
-- select first 6 record from table
select * from employee where Id<7
alter table Employee add ManagerId int
update Employee set ManagerId=1 where Id in (1,2,3,4)
update Employee set ManagerId=2 where Id in (5,6,7)
-- self Join
select e.Id,e.name as Employee,m.name as manager from Employee e,Employee m
where m.Id=e.ManagerId
select * from Employee
select * from Dept
select distinct ( DeptId) from Employee

 select d.Deptname, count (e.Id) as empcount from Employee e
 inner join Dept d on d.DeptId=e.DeptId
 group by d.Deptname

 select DeptId,count(Id) as Empcount  from Employee
 group by DeptId 
 -- select 3rd highest salary from table
 select name from Employee where salary=(select max(salary) from Employee where salary<>(select max(salary) from Employee where salary<>(select max(salary)from Employee)))
 -- diplay emp whos salary is greater from avg salary
 select name from Employee where salary >(select avg(salary)from Employee )
 --sum the salary dept wise

 select DeptId ,sum(salary) from Employee group by DeptId 

 --display emp who have salary more than avg salary of testing department
 select name ,salary from Employee where salary >(select avg(salary) from Employee where DeptId=2)
 alter table Employee add city varchar (40)
 update Employee set city='Pune' where Id in(2,4,6)
  update Employee set city='Mumbai' where Id in(1,3,5,7)
 -- create view of emp who has salary more than 30000
 create view emp_sal as
 select * from Employee where salary > 30000
 select * from Employee
 select * from Dept
 --Create view of emp who works in Admin dept
 create view emp_in_Admin as
 select  e.name,e.salary,d.Deptname  from Employee e
 inner join Dept d on d.DeptId=e.Deptid
 where Deptname='Admin'
 select * from emp_in_admin
 -- create view of emp who live in pune
 create view emp_in_pune as
 select * from Employee where city='pune'

 select * from emp_in_pune
 --functions in Sql  
 select substring (Email,1,8) from Employee
 select concat (name,' ' ,Email) From Employee
 select Lower(name) from Employee
 select Upper (name) from Employee
 select rtrim (Email) from Employee
 select ltrim (email) from employee
 select trim(Email) from Employee
 select replace (name,'rahul','sanjay') from Employee
 select reverse (name) from Employee
 update Employee set salary=45000.300 where Id=1
 update Employee set salary=55000.500 where Id=2
 update Employee set salary=45300.300 where Id=3
 update Employee set salary=65010.300 where Id=4
 update Employee set salary=55800.300 where Id=5
 update Employee set salary=25050.300 where Id=6
 update Employee set salary=47001.320 where Id=7
 select round (salary,2) from Employee
 --

 -- ccreate Stored procedure for Select
 
 create procedure Sp_select_emp
 as begin 
 select * from Employee
 end
 exec sp_select_emp
 -- create Stored Pocedure for Insert into Employee
 create procedure sp_Insert_Emp
 (
 @name varchar(40),
 @email varchar(40),
 @salary decimal,
 @city varchar(20),
 @deptid int
 )
 as begin
 Insert into Employee values(@name,@email,@salary,@city,@deptid)
 end
 
 exec sp_Insert_Emp 
 @name='Praful',
 @email='Praful@gmail.com',
 @salary= 40000,
 @city='Nagpur',
 @deptid = 1

 --create Sp to update enployee
 create Proc sp_update_employee
 (@name varchar(40),
 @email varchar(40),
 @salary decimal,
 @city varchar(20),
 @deptid int
 )
 as begin 
 update Employee set name= @name ,email= @email,salary=@salary,city=@city,deptid=@deptid 
 end

 exec sp_update_employee 
 @name='Mayur',
 @email='Myur12@gmail.com',
 @salary=42000,
 @city='pune',
 @deptid=1



 create function getnamefromemp (@Id int)
 returns varchar(50)
 as 
 begin
 return( select name from Employee where Id=@Id)
 end
 select dbo.getnamefromemp(1)as Name
 select *from Employee
 create function getempbydept(@Deptid int)
 returns table
 as 
 return(select * from Employee where DeptId=@DeptId)
 
 select * from getempbydept (1)

 -- triggers
 create table empaudit(
 auditid int primary key identity,
 empid int,
 dt varchar (20),
 info varchar(20)
 )
 select * from empaudit
 select * from Employee
 create trigger emp_insert
 on Employee for insert
 as begin
 declare @empid int
 select @empid=Id from inserted
 insert into empaudit values(@empid,cast(getdate() as varchar (20)),'inserted')
 end
 insert into Employee values('Santosh','Santosh@123',22000,'hardgude',1,2,'Nagpur')

 create trigger emp_delete
 on Employee for delete
 as begin
 declare @empid int
 select empid=Id from deleted
 insert into empaudit values (@empid,cast(getdate() as varchar (20)),'Deleted')
 end
 delete from Employee where Id=8
