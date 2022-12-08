/* SQL Basics Tutorial for Beginners| Select + From Statements

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg

*/

SELECT *
FROM EMPLOYEE

--TOP: useful when your table has million rows. It returns the top 5 rows.
SELECT TOP 5 *
FROM EMPLOYEE

--DISTINCT: returns diffenret values. it should returns all rows because all IDs are unique. 
SELECT DISTINCT EmployeeID
FROM EMPLOYEE

SELECT DISTINCT Gender
FROM EMPLOYEE

--COUNT: returns the number of rows.
SELECT COUNT(*)
FROM EMPLOYEE

-- could return less than 9 if exists Null values.
SELECT COUNT(LastName)
FROM EMPLOYEE

SELECT COUNT(LastName) AS LastNameCount
FROM EMPLOYEE

--MAX, MIN and AVG
SELECT MAX(Salary)
FROM EMPLOYEESALARY

SELECT MIN(Salary)
FROM EMPLOYEESALARY

SELECT AVG(Salary)
FROM EMPLOYEESALARY

--Specifying database
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary