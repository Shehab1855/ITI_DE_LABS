use ITI
/*1 Create a view that displays student full name,
course name if the student has a grade more than 50. */
create view student_passed
as
select concat(s.St_Fname,' ',s.St_Lname) as full_name  ,c.Crs_Name
from student as s
inner join Stud_Course as sc
on s.St_Id = sc.St_Id
inner join Course as c
on sc.Crs_Id =c.Crs_Id
where Grade  > 50


select * from student_passed

/*2 Create an Encrypted view that displays manager names and the topics they teach*/
create view manger_desc
with encryption 
as
select Instructor.Ins_Name, Topic.Top_Name
	from Instructor 
	join Department on Instructor.Ins_Id = Department.Dept_Manager
	join Ins_Course on Ins_Course.Ins_Id = Instructor.Ins_Id
	join Course on Ins_Course.Crs_Id = Course.Crs_Id
	join Topic on Topic.Top_Id = Course.Top_Id


select * from manger_desc

/*3.	Create a view that will display Instructor Name, Department Name for the ‘SD’ or ‘Java’ 
Department */
create view dep_inst
as
select s.Ins_Name , d.Dept_Name
from Department as d
inner join Instructor as s
on d.Dept_Id = s.Dept_Id
where d.Dept_Name in ('SD','Java')


select * from dep_inst



/*4.Create a view “V1” that displays student data for student who lives in Alex or Cairo. 
Note: Prevent the users to run the following query 
Update V1 set st_address=’tanta’
Where st_address=’alex’;
*/
create view v1
as
select * 
from Student 
where St_Address in ('Alex' ,'Cairo')
with check option


select * from v1

update v1
set st_address='tanta'
where St_Address ='alex'

/*5 Create a view that will display the project name and the number 
of employees work on it. “Use Company DB”*/
use Company_SD

create view diplay_pname
as
select Pname, count(ESSn) as num_employ_on_this_project
from Company.Project 
inner join Works_for 
on Company.Project.Pnumber = Works_for.Pno
	group by Project.Pname
	

select * from diplay_pname

/*6.	“Use Company DB” Create the following schema and transfer the following tables to it 
a.	Company Schema 
i.	Department table (Programmatically)
ii.	Project table (by wizard)
b.	Human Resource Schema
i.	  Employee table (Programmatically)
*/

CREATE SCHEMA Company;
ALTER SCHEMA Company TRANSFER dbo.Departments;


CREATE SCHEMA HumanResource;
ALTER SCHEMA HumanResource TRANSFER dbo.Employee;



/*7.	Create index on column (manager_Hiredate) that allow u to cluster the data in 
table Department. What will happen?   Use ITI DB*/
use ITI
create clustered index m2
on Department(manager_hiredate)  --error 

/*8.	Create index that allow u to enter unique ages in student table.
What will happen?  Use ITI DB*/
create unique index index_age
on student (St_age)   --age in table in not unique

/*9.	Create a cursor for Employee table that increases Employee salary by 10% 
if Salary <3000 and increases it by 20% if Salary >=3000. Use company DB*/
use Company_SD

declare c1 cursor 
for	select salary
	from HumanResource.Employee
for update
declare @salary int
open c1
fetch c1 into @salary
while @@FETCH_STATUS=0
begin
	if @salary < 3000
		update HumanResource.Employee
		set salary = @salary*1.10
		
		where current of c1
	else if @salary >= 3000
		update HumanResource.Employee
		set salary = @salary*1.20
		
		where current of c1
fetch c1 into @salary
end
close c1
deallocate c1


/*10.	Display Department name with its manager name using cursor. Use ITI DB*/
use iti
declare c2 cursor 
for
select i.Ins_Name ,d.Dept_Name
from Department d
inner join instructor i on i.Ins_Id =d.Dept_Manager
for read only 
DECLARE @DeptName NVARCHAR(50), @ManagerName NVARCHAR(50)
open c2
fetch c2 into @DeptName, @ManagerName
while @@FETCH_STATUS =0
begin
    select @DeptName ,@ManagerName
	fetch c2 into @DeptName, @ManagerName
end
close c2
deallocate c2




/*11.	Try to display all instructor names in one cell separated by comma. Using Cursor . Use ITI DB*/
declare spc cursor
for select Ins_Name from Instructor
for read only 
declare @name varchar(20) , @fullname varchar(500)=''
open spc
fetch spc into @name
while  @@FETCH_STATUS =0
begin
    set @fullname =concat(@fullname,',',@name)
	fetch spc into @name
end
select @fullname
close spc
deallocate spc


/*12 	Try to generate script from DB ITI that describes all tables and views in this DB*/
--tasks -- generate script   
---error in view encur

/*13 	Using Merge statement between the following two tables [User ID, Transaction Amount]*/

create table daily_transactions
(
	user_id int not null ,
	transactions int not null 
	primary key (user_id)
)

insert into daily_transactions values (1,1000), (2,2000), (3,1000)

create table last_transactions
(
	user_id int not null ,
	transactions int not null 
	primary key (user_id)
)

insert into last_transactions values (1,4000), (4,2000), (2,10000)

select * from daily_transactions
select * from last_transactions

MERGE daily_transactions AS dt
USING last_transactions AS lt
ON lt.user_id = dt.user_id
WHEN MATCHED THEN
    UPDATE SET dt.transactions += lt.transactions
WHEN NOT MATCHED BY TARGET THEN
    INSERT (user_id, transactions) VALUES (lt.user_id, lt.transactions);


select * from daily_transactions
select * from last_transactions
