/* Intermediate SQL Tutorial | Inner/Outer Joins | Use cases

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

Inner Join, Full/Left/Right/ Outer Joins

COMMENTS:
JOIN is a way to combine multiple tables into a single output using a similar column. In other words, a JOIN clause is used to combine rows from two or more tables, based on a related column between them.
*/


SELECT * 
FROM EMPLOYEE

SELECT * 
FROM EMPLOYEESALARY

--(INNER) JOIN: Returns records that have matching values (common) in both tables. It overlaps what is in both tables.
SELECT *
FROM EMPLOYEE -- the table we want to join
INNER JOIN EMPLOYEESALARY --connect relevant columns from designated table
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID;

--FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table.
SELECT *
FROM EMPLOYEE
FULL OUTER JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID;

--LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
SELECT *
FROM EMPLOYEE
LEFT OUTER JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID;

--RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
SELECT *
FROM EMPLOYEE
RIGHT OUTER JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID;

--SELECT THE EXACT COLUMNS YOU WANT WITH DIFFERENT IDs
SELECT EMPLOYEE.EmployeeID, FirstName, LastName, Salary
FROM EMPLOYEE
INNER JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID;

SELECT EMPLOYEESALARY.EmployeeID, FirstName, LastName, Salary
FROM EMPLOYEE
INNER JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID;

--Study case: What is the salary average of salesman?
SELECT JobTitle, COUNT(JobTitle)
FROM EMPLOYEE
GROUP BY JobTitle;

SELECT JobTitle, AVG(Salary)
FROM EMPLOYEE
INNER JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID
	WHERE JobTitle = 'Salesman'
	GROUP BY JobTitle;


