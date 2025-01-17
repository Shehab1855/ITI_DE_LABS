
use  ITI
/*.  Create a scalar function that takes date and returns Month name of that 
date. */
CREATE FUNCTION month_name(@x DATE)
RETURNS NVARCHAR(40)
AS 
BEGIN
    DECLARE @month NVARCHAR(40);
    SET @month = DATENAME(MONTH, @x);
    RETURN @month;
END;
GO

SELECT dbo.month_name('12-20-2024') AS month_name_result;


/* Create a multi-statements table-valued function that takes 2 integers 
and returns the values between them. */

CREATE FUNCTION valuebetween(@x1 INT, @x2 INT)
RETURNS @t TABLE(value INT)
AS
BEGIN
    DECLARE @temp INT;
    IF @x1 > @x2
    BEGIN
        SET @temp = @x1;
        SET @x1 = @x2;
        SET @x2 = @temp;
    END
    WHILE @x1 <= @x2
    BEGIN
        INSERT INTO @t(value)
        VALUES (@x1)

        SET @x1 = @x1 + 1
    END
    RETURN
END


select * from dbo.valuebetween(15, 10)



/* 3 Create inline function that takes Student No and returns Department 
Name with Student full name.*/

CREATE FUNCTION Get_Student_Details(@Student_id INT)
RETURNS TABLE
AS
RETURN
(  select concat(s.St_Fname,'',s.St_Lname) as full_name , d.Dept_Name
    from Student s
    inner join Department d 
    on s.Dept_Id = d.Dept_Id
   where s.St_Id = @Student_id

   )

   

select * from Get_Student_Details(1)


/* 4 Create a scalar function that takes Student ID and returns a message to 
user  
a. If first name and Last name are null then display 'First name & 
last name are null' 
b. If First name is null then display 'first name is null' 
c. If Last name is null then display 'last name is null' 
d. Else display 'First name & last name are not null' */

CREATE FUNCTION Get_Student_Name_Message(@Student_id INT)
RETURNS NVARCHAR(100)
as 
begin 
DECLARE @Message NVARCHAR(100);
IF (SELECT St_Fname FROM Student WHERE St_Id = @Student_id) IS NULL 
       AND (SELECT St_Lname FROM Student WHERE St_Id = @Student_id) IS NULL
        SET @Message = 'First name & last name are null';
    

    ELSE IF (SELECT St_Fname FROM Student WHERE St_Id = @Student_id) IS NULL
        SET @Message = 'First name is null';
   
    ELSE IF (SELECT St_Lname FROM Student WHERE St_Id = @Student_id) IS NULL
        SET @Message = 'Last name is null';
 
    ELSE
        SET @Message = 'First name & last name are not null';


    RETURN @Message;
END;


select dbo.Get_Student_Name_Message(1) 


/* 5 Create inline function that takes integer which represents manager ID 
and displays department name, Manager Name and hiring date */

CREATE FUNCTION Manager_Details(@ManagerID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        d.Dept_Name AS Dept_Name, 
        dd.Dept_Name AS Man_Department_Name, 
        dd.Manager_hiredate AS Man_HireDate
    FROM Department d
    INNER JOIN Department dd
        ON dd.Dept_Id = d.Dept_Manager
    WHERE d.Dept_Id = @ManagerID
);


SELECT * FROM dbo.Manager_Details(10)


/*6*/

CREATE FUNCTION Student_Info(@InfoType NVARCHAR(50), @StudentID INT)
RETURNS @Result TABLE (InfoValue NVARCHAR(100))
AS
BEGIN
    -- Declare variables for the first and last name
    DECLARE @FirstName NVARCHAR(50);
    DECLARE @LastName NVARCHAR(50);
    DECLARE @FullName NVARCHAR(100);

    -- Get the student's first name, last name, and full name from the Student table
    SELECT 
        @FirstName = St_Fname,
        @LastName = St_Lname,
        @FullName = ISNULL(St_Fname, '') + ' ' + ISNULL(St_Lname, '')
    FROM Student
    WHERE St_Id = @StudentID;

    -- Check the @InfoType parameter and return the corresponding value
    IF @InfoType = 'first name'
    BEGIN
        INSERT INTO @Result (InfoValue)
        VALUES (ISNULL(@FirstName, 'N/A'));
    END
    ELSE IF @InfoType = 'last name'
    BEGIN
        INSERT INTO @Result (InfoValue)
        VALUES (ISNULL(@LastName, 'N/A'))
    END
    ELSE IF @InfoType = 'full name'
    BEGIN
        INSERT INTO @Result (InfoValue)
        VALUES (ISNULL(@FullName, 'N/A'))
    END
    ELSE
    BEGIN
        INSERT INTO @Result (InfoValue)
        VALUES ('Invalid InfoType')
    END

    RETURN
END
GO

SELECT * FROM dbo.Student_Info('first name', 11);
SELECT * FROM dbo.Student_Info('last name', 11);
SELECT * FROM Student_Info('full name', 11);



/*7*/
SELECT 
    St_Id,
    LEFT(St_Fname, LEN(St_Fname) - 1) 
FROM Student;

/*8*/

update Stud_Course  
	set Grade = null
	where Stud_Course.St_Id in 
	    (select Student.St_Id 
		from Student join Department
	   on Student.Dept_Id = Department.Dept_Id 
	   where Department.Dept_Name = 'SD')
	

/*9*/
CREATE USER ITIStudUser FOR LOGIN ITIStud;

GRANT SELECT, INSERT ON Student TO ITIStudUser

GRANT SELECT, INSERT ON course TO ITIStudUser

DENY DELETE, UPDATE ON student TO ITIStudUser

DENY DELETE, UPDATE ON course TO ITIStudUser