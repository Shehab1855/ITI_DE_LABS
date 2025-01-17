--lab day 8
/*1.	Create a stored procedure without parameters to show the number of 
\students per department name.[use ITI DB] */
use iti 
create proc x
as
BEGIN
select count(St_Id), Dept_Name
from Department d
inner join Student s
on d.Dept_Id =s.Dept_Id
group by Dept_Name
END

x


/*2.	Create a stored procedure that will check for the # of employees in the project p1 
if they are more than 3 print message to the user “'The number of employees in the project p1 is 3 or more'” 
if they are less display a message to the user “'The following employees work for the project p1'” in addition 
to the first name and last name of each one. [Company DB] */
use Company_SD


create proc num_emp_pro 
as
begin
declare @EmployeeCount INT;
select @EmployeeCount =count(ssn)
from Employee , Works_for , Project
where ssn = essn and pno = pnumber  and Pnumber=100
IF @EmployeeCount >= 3
        PRINT 'num of emp in the project 100 is 3 or more';
    ELSE
    BEGIN
        PRINT 'The following employees work for the project 100:';
        SELECT Fname, Lname
        from Employee , Works_for , Project
        where ssn = essn and pno = pnumber  and Pnumber=100
    END
END;


num_emp_pro 

 

/*3.	Create a stored procedure that will be used in case there is an old employee has left the
project and a new one become instead of him. The procedure should take 3 parameters
(old Emp. number, new Emp. number and the project number) and it will be used to update works_on table. 
[Company DB]*/

create proc old_new_emp @old int,@new int , @project int 
as
begin

delete from Works_for
where ESSn =@old and Pno=@project 

INSERT into  Employee(ssn)
    VALUES (@new)

INSERT into  Project(Pnumber)
    VALUES (@project)



INSERT into  works_for (ESSn, Pno)
    VALUES (@new, @project);


end


/*4.add column budget in project table and insert any draft values in it then 
then Create an Audit table with the following structure 
ProjectNo 	UserName 	ModifiedDate 	Budget_Old 	Budget_New 
p2 	Dbo 	2008-01-31	95000 	200000 

This table will be used to audit the update trials on the Budget column (Project table, Company DB)
Example:
If a user updated the budget column then the project number, user name that made that update, the date of the modification and the value of the old and the new budget will be inserted into the Audit table
Note: This process will take place only if the user updated the budget column
*/
USE Company_DB

ALTER TABLE Project
ADD budget int 

UPDATE Project
SET budget = 10000

CREATE TABLE Audit (
    ProjectNo INT,
    UserName NVARCHAR(50),
    ModifiedDate DATETIME,
    Budget_Old int,
    Budget_New int
)

create trigger t1
on project
after update
as 
	if update(budget)
		begin
			declare @old int,@new int,@pno int
			select @old=budget from deleted
			select @new=budget from inserted
			select @pno = pnumber from inserted
			insert into [audit]
			values(@pno,SUSER_NAME(),getdate(),@old,@new)
		end

update project
set budget = 500
where pnumber = 100




/*5.	Create a trigger to prevent anyone from inserting a new record in the Department table [ITI DB]
“Print a message for user to tell him that he can’t insert a new record in that table”
*/
use iti

CREATE TRIGGER prevent
on department
instead of insert
as
begin
     select 'can not insert '
end

insert into department values (55,'shehab','data','cairo',12,'12-22-2024')

/*6 Create a trigger that prevents the insertion Process for Employee table in March [Company DB].*/
use Company_SD

create trigger prevent_empl_insert
on Employee
instead of insert
as 
if FORMAT(GETDATE(),'MM')!='march'
begin
      insert into Employee
      select * from inserted
end

/*7.	Create a trigger on student table after insert to add Row in Student
Audit table (Server User Name , Date, Note) where note will be “[username] 
Insert New Row with Key=[Key Value] in table [table name]”
Server User Name		Date 
	Note 	
*/
use ITI
create table Audit_table 
(serverUserName NVARCHAR(50),
    Date DATETIME,
    Note NVARCHAR(MAX)
)

CREATE TRIGGER trg_StudentAudit
ON Student
AFTER INSERT
AS
BEGIN
    -- Insert audit record for each new row in the Student table
    INSERT INTO Audit_table (serverUserName, Date, Note)
    SELECT 
        SUSER_NAME() AS serverUserName,GETDATE() AS Date,                   
        CONCAT(SUSER_NAME(), 
            ' Insert New Row with Key=',
            CAST(i.St_Id AS NVARCHAR),      
            ' in table Student'
        ) AS Note
    FROM 
        inserted i; 
END

INSERT INTO Student (St_Id, St_Fname, St_Age)
VALUES (50, 'John Doe', 20)


/*8Create a trigger on student table instead of delete to add Row in Student Audit table 
(Server User Name, Date, Note) 
where note will be“ try to delete Row with Key=[Key Value]”*/
CREATE TRIGGER trg_st_Delete
ON Student
INSTEAD OF DELETE
AS
BEGIN
INSERT INTO Audit_table (serverUserName, Date, Note)
SELECT SUSER_NAME() AS serverUserName,GETDATE() AS Date,CONCAT('Try to delete Row with Key=',
CAST(d.St_Id AS NVARCHAR) ) AS Note
    FROM deleted d
end

DELETE FROM Student WHERE St_Id = 1;
SELECT * FROM Audit_table;



/**/