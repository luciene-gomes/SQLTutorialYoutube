DROP TABLE IF EXISTS EMPLOYEEBRAZILERRORS;

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
