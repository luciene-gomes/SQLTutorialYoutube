/* SQL Basics Tutorial for Beginners| Installing SQL Server Management Studio (SSMS) and Creating tables

Websites to download SSMS and SQL Server:
SSMS: https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16
SQL Server:https://www.microsoft.com/en-gb/sql-server/sql-server-downloads
Support websites:
SQL statements: https://www.w3schools.com/sql/sql_intro.asp
Use case scenarios using SQL:https://www.hackerrank.com/products/main/

Today:

CREATE TABLE and  INSERT INTO

*/

--Table 1
CREATE TABLE EMPLOYEE
(EmployeeID		int,
FirstName		varchar(50),
MiddleName		varchar(50),
LastName		varchar(50),
Age				int,
Gender			varchar(50),
JobTitle		varchar(50))

--Table 2
CREATE TABLE EMPLOYEESALARY
(EmployeeID		int,
Salary			int,
Bonus			int)

--Inserting data into Table 1
INSERT INTO EMPLOYEE VALUES
(1001, 'Adam', NULL, 'Green', 30, 'M', 'Salesman'),
(1002, 'Kate', NULL, 'Baker', 30, 'F', 'Receptionist'),
(1003, 'John', 'Bryan', 'Green', 29, 'M', NULL),
(1004, 'Chris', NULL, 'Patel', 31, 'M', 'Accountant'),
(1005, 'Steven', 'Eliot', 'Cook', 32, 'M', 'Salesman'),
(NULL, 'Joshua', NULL, 'Bennet', 35, 'M', 'HR'),
(1007, 'Rachel', 'Rose', 'Cook', 32, 'F', 'Regional Manager'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1009, 'John', 'Lee' ,NULL, 31, 'M', 'Buyer')

--Inserting data into Table 2
INSERT INTO EMPLOYEESALARY VALUES
(1001, 45000, 2000),
(1002, 36000, 1000),
(1003, NULL, 500),
(1004, 47000, 1000),
(1005, 50000, 4000),
(1006, 65000, 500),
(1007, 41000, 1000),
(1008, NULL, 800),
(1009, 42000, 600),
(1010, NULL, 300),
(1011, 50000, NULL),
(1012, 45000, 1000),
(1213, NULL, 800)



