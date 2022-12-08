/* Intermediate SQL Tutorial | Group By and Partition By

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

PARTITION BY

COMMENTS:
-Group By Statement is going to reduce the number of the rows in our output by rolling them up and then calculating the sums or averages for each group.
-Partition By statement divides the result set into partitions and changes how the windows function is calculated.
-It doesn't reduce the number of rows returned in your output.
*/

SELECT *
FROM EMPLOYEE

SELECT *
FROM EMPLOYEESALARY

--DEMONSTRATING GROUP BY USING THE GENDER COLUMN:
-- QUANTITY EMPLOYEES BY GENDER
SELECT Gender, COUNT(Gender) AS TotalGender
FROM EMPLOYEE AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID
GROUP BY Gender
-- COMMENTS:
--NUMBER OF ROWS IS REDUCED
--THE PARTITION BY WILL TAKE THIS QUERY RIGHT HERE AND STICKING IN ONE LINE IN THE SELECT STATEMENT

SELECT *
FROM EMPLOYEE
ORDER BY Gender

--DEMONSTRATING PARTITION BY USING THE GENDER COLUMN:
SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EMPLOYEE AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID
--COMMENTS:
--We want to isolate one column in which we want to perform our aggregate function. 
--We are still able to add the aggregate function to each individual row still maintaining those other columns.

--COMMENTS IN PORTUGUESE:
--QUANDO VOCE USA PARTITION BY VOCE AGREGA, NO ENTANTO, O NUMERO THE LINHAS DA TABELA NAO E REDUZIDO.
--PARTITION BY FILTRA UMA QUANTIDADE DE LINHAS E EXECUTA UMA OPERACAO DENTRO DESSAS LINHAS.
-- PARTITION BY NESTE EXEMPLO, FEZ A OPERACAO CONTAGEM DO NUMERO DE F E M SEM TIRAR AS LINHAS DO LUGAR.

SELECT JobTitle, Salary, AVG(Salary) OVER (PARTITION BY JobTitle) AS AVGSalary
FROM EMPLOYEE AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID
WHERE JobTitle IS NOT NULL

SELECT JobTitle, Salary, AVG(Salary) OVER () AS AVGSalary
FROM EMPLOYEE AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID
WHERE JobTitle IS NOT NULL



