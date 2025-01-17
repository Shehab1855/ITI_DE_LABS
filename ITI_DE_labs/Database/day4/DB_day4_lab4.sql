--1
select Dependent_name, dependent.Sex
from Dependent inner join Employee
on ESSN = SSN
where Dependent.Sex = 'f' and Employee.Sex = 'f'
union
select Dependent_name, dependent.Sex
from Dependent inner join Employee
on ESSN = SSN
where Dependent.Sex = 'm' and Employee.Sex = 'm'

--2
select sum(hours), Pname
from Project inner join Works_for
on Pno = Pnumber
group by Pname


--3
select Departments.*
from Departments inner join Employee
on Dnum = Dno
where SSN = (select min(ssn)
             from Employee )

--4
select max(salary) as max, min(salary) as min, avg(salary) as avg, Dname
from Departments inner join Employee
on Dnum = Dno
group by Dname

--5
select Fname, Lname 
from Employee inner join Departments
on SSN = MGRSSN
where SSN not in (select Essn from Employee inner join Dependent on SSN = ESSN  )


select Fname, Lname
from Employee left join Dependent
on SSN = ESSN
where SSN in (select distinct Superssn from Employee where Superssn is not null and Dependent.ESSN is null)

--6
select Dname, Dnum, count(SSN)
from Departments inner join Employee
on Dnum = Dno
group by Dname, Dnum
having avg(Salary) < (select avg(salary) from Employee)


--7
select Fname, Lname, Pname
from Employee inner join Works_for
on SSN = ESSn
inner join project
on Pnumber = Pno
order by Dnum, Fname, Lname

--8
select max(salary)
from Employee
union
select max(salary)
from Employee
where Salary < (select max(salary) 
                from Employee)
order by max(Salary) desc


--9
select Fname + ' ' +Lname
from Employee
intersect
select
Dependent_name
from Dependent


--10
select distinct SSN, Fname + ' ' + Lname
from Employee inner join Dependent
on SSN = ESSN
where exists (select ESSN from Dependent)

--11
insert into Departments
values('DEPT IT', 100, 112233, '1-11-2006')

--12
update Departments
set MGRSSN = 968574
where Dnum = 100

update Departments
set MGRSSN = 102672
where Dnum = 20 

update Employee
set Superssn = 102672
where SSN = 102660  

--13
update Employee
set Superssn = 102672
where Superssn = 223344

delete from Dependent
where ESSN = 223344

update Departments
set MGRSSN = 102672
where MGRSSN = 223344

delete from Works_for
where ESSn = 223344

delete from Employee
where SSN = 223344

--14
update Employee
set Salary = Salary * 1.30
where SSN in (select SSN from Employee inner join Works_for on SSN = ESSn inner join Project on Pnumber = Pno where Pname = 'Al Rabwah')

