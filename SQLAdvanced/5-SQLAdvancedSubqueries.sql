/* Advanced SQL Tutorial | Subqueries (in the select, from, where statement)


Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

Subqueries in the SELECT, FROM and WHERE STATEMENTS

COMMENTS:
-- It is a query within a query (or nested query).
-- A subquery is used to return data that will be used in the main query or the outer query as a condition to specify the data that we want retrieve.
-- you can use subqueries in the select, from, where, insert, update and delete statements

*/

-- SUBQUERY IN SELECT
SELECT *
FROM EMPLOYEESALARY

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EMPLOYEESALARY) AS AllAvgSalary
FROM EMPLOYEESALARY
--COMMENT: We will do a window function without using window functions but using subqueries

-- HOW TO DO IT WITH PARTITION BY
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EMPLOYEESALARY

-- WHY GROUP BY DOESNT WORK
SELECT EmployeeID, Salary, AVG(Salary) AllAvgSalary
FROM EMPLOYEESALARY
GROUP BY EmployeeID, Salary
ORDER BY 1,2
--COMMENTS: since we used in the group by EmployeeID and Salary, we will not be able to get all that average salary that we are looking for

--SUBQUERY IN FROM STATEMENT
SELECT *
FROM (
		SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
		FROM EMPLOYEESALARY
) AS A
--COMMENTS:
-- IT IS SIMILAR WITH CTE AND TEMP TABLE BUT LESS EFFICIENT. SUBQUERIES TEND TO BE SLOW COMPARED WITH CTE AND TEMP TABLES.
-- I TEND TO USE TEMP TABLES A LOT MORE BECAUSE YOU CAN REUSE THEM OVER AND OVER WHILE SUBQUERY YOU CANNOT. YOU HAVE TO WRITE IT OUT EACH TIME.
-- IT FIRST RUN THE SELECT IN THE MIDDLE AND IT IS GOING TO CREATE A TABLE. THEN, IT IS GOING TO ALLOW US TO QUERY OFF OF IT.
SELECT A.EmployeeID, A.AllAvgSalary
FROM (
		SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
		FROM EMPLOYEESALARY
) AS A

--SUBQUERY IN WHERE STATEMENT
SELECT EmployeeID, Salary 
FROM EMPLOYEESALARY
WHERE EmployeeID IN (
		SELECT EmployeeID
		FROM EMPLOYEE
		WHERE Age > 30)

--COMMENTS:
--we want to return salary for employees age > 30. we have 2 options here: to use join or subquery in the where statement.
--IN THE SUBQUERY, THE UNIQUE THING SHOULD BE RETURNED IS THE EMPLOYEEID. IN THE SUBQUERY YOU CAN HAVE JUST ONE COLUMN SELECTED. I CANT SELECT EVERYTHING!!! I HAVE TO SPECIFY JUST ONE COLUMN.
--IT IS A LITTLE BIT DIFFERENT THAN HOW WE DID IT IN THE FROM STATEMENT WHERE WE WERE BASICALLY ABLE TO SELECT THE ENTIRE TABLE AND THEN IN THE SELECT STATEMENT SPECIFY WHAT COLUMNS WE WANTED. IN THE WHERE STATEMENT WE CANT DO THAT!
--IF YOU WANT TO HAVE THE COLUMN AGE IN THE OUTPUT, YOU WOULD HAVE TO JOIN TO THAT TABLE AND PUT THAT COLUMN IN THE SELEC STATEMENT, BUT IN A LOT SITUATION YOU DON'T WANT TO DO THAT, AND SO A SUBQUERY CAN BE A REALLY GOOD OPTION IN THESE SCENARIOS  