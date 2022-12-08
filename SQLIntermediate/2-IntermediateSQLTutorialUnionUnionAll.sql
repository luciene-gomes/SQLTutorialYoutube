/* Intermediate SQL Tutorial | Unions

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

UNION and UNION ALL

COMMENTS:
The UNION operator is used to combine the result-set of two or more SELECT statements.

-Every SELECT statement within UNION must have the same number of columns
-The columns must also have similar data types
-The columns in every SELECT statement must also be in the same order 

*/

--ALL THE DATA FROM 2 TABLES IN THE SAME COLUMN
--UNION: REMOVE DUPLICATES
SELECT * 
FROM EMPLOYEE
UNION
SELECT *
FROM EMPLOYEEBRAZIL

--UNION ALL: DONT REMOVE DUPLICATES. IT SHOWS ALL THE INFORMATION
SELECT * 
FROM EMPLOYEE
UNION ALL
SELECT *
FROM EMPLOYEEBRAZIL

--SELECTING COLUMNS:
--1. IT WORKS BECAUSE THE DATA TYPES ARE EXACTLY THE SAME OR SIMILAR
--2. SAME NUMBER OF COLUMNS
--BE CAREFUL WHEN USING UNION!
SELECT *
FROM EMPLOYEESALARY

SELECT *
FROM EMPLOYEEADDRESS

SELECT EmployeeID, Salary, Bonus
FROM EMPLOYEESALARY
UNION
SELECT *
FROM EMPLOYEEADDRESS
ORDER BY EmployeeID



