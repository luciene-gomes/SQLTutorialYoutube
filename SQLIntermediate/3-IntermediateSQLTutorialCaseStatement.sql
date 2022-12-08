/* Intermediate SQL Tutorial | Case Statement | Use cases

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

CASE STATEMENT

COMMENTS:
The CASE expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
If there is no ELSE part and no conditions are true, it returns NULL.

- Basically, you specify a condition and what you want to return when that condition happen. Usually it is used to categorize things or label things.
*/

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 32 THEN 'Old'
	WHEN Age BETWEEN 30 AND 32 THEN 'Young'
	ELSE 'Baby'
END
FROM EMPLOYEE
WHERE Age IS NOT NULL
ORDER BY Age

-- THE VERY FIRST CONDITION IS GOING TO BE RETURNED. IF THERE ARE MULTIPLE CONDITIONS THAT MEET THE CRITERIA, ONLY THE FIRST CONDITION WOULD BE RETURNED.
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 35 THEN 'Joshua' --it will not work because of the first condition was already met!
	ELSE 'Baby'
END
FROM EMPLOYEE
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 35 THEN 'Joshua' --it works because this condition was met first!
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM EMPLOYEE
WHERE Age IS NOT NULL
ORDER BY Age

--Study case: Calculating comissions for Salesman, Regional Manager and HR
SELECT FirstName, LastName, JobTitle, Salary,
CASE	
	WHEN JobTitle = 'Salesman' THEN Salary * 0.10
	WHEN JobTitle = 'Regional Manager' THEN Salary * 0.05
	WHEN JobTitle = 'HR' THEN Salary * 0.000001
	ELSE Salary * .03
END AS Comission
FROM EMPLOYEE
JOIN EMPLOYEESALARY
	ON EMPLOYEE.EmployeeID = EMPLOYEESALARY.EmployeeID

