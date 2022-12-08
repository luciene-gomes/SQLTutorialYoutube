/* Advanced SQL Tutorial | String Functions

Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

DROP TABLE IF EXISTS EMPLOYEEBRAZILERRORS;

--CREATING THE TABLE EMPLOYEEBRAZILERROS
CREATE TABLE EMPLOYEEBRAZILERRORS
(EmployeeID		varchar(50),
FirstName		varchar(50),
MiddleName		varchar(50),
LastName		varchar(50),
Age				int,
Gender			varchar(50),
JobTitle		varchar(50),
Email			varchar(50))

INSERT INTO EMPLOYEEBRAZILERRORS VALUES
('1010   ', 'RAfael', NULL, 'Silva - Fired', 30, 'M', 'Salesman', 'rs@gmail.com'),
('   1011', 'Maria', 'Clara', 'Ferreira', 30, 'F', 'Receptionist', 'mf@gmail.com'),
('1012', 'Carlos', 'Alberto', 'Oliveira - Fired', 29, 'M', NULL, 'co@gmail.com'),
('    1013', 'Laura', NULL, 'Santos', 31, 'M', 'Accountant', 'ls@gmail.com')

SELECT * 
FROM EMPLOYEEBRAZILERRORS

--USING TRIM, LTRIM AND RTRIM:
SELECT EmployeeID, TRIM(EmployeeID) AS IDTrim
FROM EMPLOYEEBRAZILERRORS

SELECT EmployeeID, RTRIM(EmployeeID) AS IDRTrim
FROM EMPLOYEEBRAZILERRORS

SELECT EmployeeID, LTRIM(EmployeeID) AS IDLTrim
FROM EMPLOYEEBRAZILERRORS

--USING REPLACE:
SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameCorrect 
FROM EMPLOYEEBRAZILERRORS

--USING SUBSTRING
SELECT Email, SUBSTRING(Email,1,2) AS UserName
FROM EMPLOYEEBRAZILERRORS

--USING UPPER AND LOWER
SELECT FirstName, LOWER(FirstName) AS FirstNameLower, UPPER(FirstName) AS FirstNameUpper
FROM EMPLOYEEBRAZILERRORS



