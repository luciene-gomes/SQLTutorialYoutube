/* SQL Basics Tutorial for Beginners| Group By + Order By Statments

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

DISTINCT, GROUP BY and ORDER BY
*/

/*COMMENTS:

GROUP BY is similar to DISTINCT in the SELECT STATEMENT. GROPU BY is going to show the distinct value in a column.
DISTINCT we have the very first and unique value Female and the very first unique value Male
GROUP BY, it is only return 2 values, but in these 2 values we have all the Female rolled up into the first row and all Male rolled up into the second row.
*/
SELECT *
FROM EMPLOYEE

SELECT DISTINCT(Gender)
FROM EMPLOYEE

SELECT Gender
FROM EMPLOYEE
GROUP BY Gender

SELECT Gender, COUNT(Gender)
FROM EMPLOYEE
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EMPLOYEE
GROUP BY Gender, Age

--COUNT(Gender) is a derived field based on the Gender column. It is not a real column in the table.
--Group By: just add real fields
SELECT Gender, Age, COUNT(Gender)
FROM EMPLOYEE
GROUP BY Gender, Age--, COUNT(Gender)

--With WHERE STATEMENT
--ASC: Ascending feature (Default). 
SELECT Gender, COUNT(Gender) AS CountGender
FROM EMPLOYEE
WHERE Age > 30
GROUP BY Gender
ORDER BY CountGender DESC

SELECT *
FROM EMPLOYEE
ORDER BY Age, Gender

SELECT *
FROM EMPLOYEE
ORDER BY Age DESC, Gender DESC

-- WE USE THIS A LOT:
SELECT *
FROM EMPLOYEE
ORDER BY 5 DESC, 6 DESC