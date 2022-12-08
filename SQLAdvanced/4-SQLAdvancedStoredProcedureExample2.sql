/* Advanced SQL Tutorial | Stored Procedure

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

Stored Procedure

COMMENTS:
A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.

So if you have an SQL query that you write over and over again, save it as a stored procedure, and then just call it to execute it.

You can also pass parameters to a stored procedure, so that the stored procedure can act based on the parameter value(s) that is passed.


*/

CREATE PROCEDURE EMPLOYEEBRAZILSALARY

AS

CREATE TABLE #EMPLOYEEBRAZILSALARY(
JobTitle	nvarchar(50),
AvgSalary		int
)

INSERT INTO #EMPLOYEEBRAZILSALARY
SELECT  JobTitle, AVG(Salary)
FROM EMPLOYEEBRAZIL AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID
WHERE JobTitle IS NOT NULL 
GROUP BY JobTitle

SELECT *
FROM #EMPLOYEEBRAZILSALARY

EXEC EMPLOYEEBRAZILSALARY 

