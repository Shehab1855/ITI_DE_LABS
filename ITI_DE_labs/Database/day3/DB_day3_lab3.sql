SELECT * 
FROM employee;

SELECT Fname, Lname, salary, DNO 
FROM employee;


SELECT pname, plocation, Dnum 
FROM project;

SELECT Fname+ ' ', lname AS full_name, 
       (salary * 12 * 0.1) AS ANNUAL_COMM
FROM employee;

SELECT SSN,Fname +' '+ Lname AS full_name
FROM employee
WHERE salary > 1000;


SELECT SSN, Fname + ' ' + Lname AS full_name
FROM employee
WHERE (salary * 12) > 10000;

SELECT Fname + ' ' + Lname AS full_name, salary
FROM employee
WHERE sex = 'F';


SELECT Dnumber, Dname
FROM Department
WHERE mgrssn = 968574;


SELECT pnumber, pname, plocation
FROM project
WHERE Dnum = 10;