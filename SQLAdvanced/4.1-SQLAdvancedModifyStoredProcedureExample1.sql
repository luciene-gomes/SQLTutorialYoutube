USE [SQLTutorial]				--specifying the database
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee2]    Script Date: 12/8/2022 9:12:39 AM ******/
SET ANSI_NULLS ON				--how to deal with null when using where statement
GO
SET QUOTED_IDENTIFIER ON		--how to use quotes in the actual query itself
GO

ALTER PROCEDURE [dbo].[Temp_Employee2]

--PARAMETER (INPUT):
@JobTitle nvarchar(50)
--When we are executing the SP, we can specify an input into that SP so that we get a specific result back
AS

CREATE TABLE #Temp_Employee2(
JobTitle nvarchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EMPLOYEE AS EMP
JOIN EMPLOYEESALARY AS SAL
	ON EMP.EmployeeID = SAL.EmployeeID
WHERE JobTitle = @JobTitle
GROUP BY JobTitle

-- SELECT IS NEEDED TO CREATE A STORE PROCEDURE
SELECT *
FROM #Temp_Employee2