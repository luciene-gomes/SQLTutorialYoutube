/* Intermediate SQL Tutorial | Aliasing

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

ALIASING

COMMENTS:
- It temporarily  changes the column name or table name in your script
- It will not impact your outpput
- It is usuful for the readability of your script

*/

SELECT FirstName AS FN
FROM EMPLOYEE

SELECT FirstName + ' ' + LastName 
FROM EMPLOYEE

SELECT FirstName + ' ' + LastName AS FullName
FROM EMPLOYEE

--USING AGGREGATING FUNCTIONS
SELECT AVG(Age)
FROM EMPLOYEE

SELECT AVG(Age) AS AVGAge
FROM EMPLOYEE

--ALIAS CHANGES NAME OF A TABLE. IT IS IMPORTANT WHEN WORKING WITH JOINS.
SELECT EMP.EmployeeID
FROM EMPLOYEE AS EMP

--MORE ORGANIZED AND READABLE
SELECT EMP.EmployeeID, SAL.Salary
FROM EMPLOYEE AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID


