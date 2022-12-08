/* SQL Basics Tutorial for Beginners|Where Statement

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

WHERE STATEMENT
=, <>, <, >, And, Or, Like, Null, Not Null, In

*/

--WHERE: it helps to limit the amount of data and especify what data you want return.
SELECT *
FROM EMPLOYEE
WHERE FirstName = 'Kate'

SELECT *
FROM EMPLOYEE
WHERE FirstName <>'Kate'

SELECT *
FROM EMPLOYEE
WHERE Age > 30 

SELECT *
FROM EMPLOYEE
WHERE Age >= 30

--AND: both criteria should be correct
SELECT *
FROM EMPLOYEE
WHERE Age <= 32 AND Gender = 'M'

--OR: just one criteria should be correct
SELECT *
FROM EMPLOYEE
WHERE Age <= 32 OR Gender = 'M'

--LIKE: most used for text information (sometimes numerical)
SELECT *
FROM EMPLOYEE
WHERE LastName LIKE 'P%t%' --Someone in there should have a t

SELECT *
FROM EMPLOYEE
WHERE FirstName is NULL

SELECT *
FROM EMPLOYEE
WHERE FirstName is NOT NULL

--IN: multiple equal statements
SELECT *
FROM EMPLOYEE
WHERE FirstName IN ('Kate', 'Steven')
