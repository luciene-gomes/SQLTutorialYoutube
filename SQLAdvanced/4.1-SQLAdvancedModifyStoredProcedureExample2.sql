USE [SQLTutorial]
GO
/****** Object:  StoredProcedure [dbo].[EMPLOYEEBRAZILSALARY]    Script Date: 12/8/2022 10:21:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[EMPLOYEEBRAZILSALARY]
@JobTitle	nvarchar(50)
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
WHERE JobTitle IS NOT NULL AND JobTitle = @JobTitle
GROUP BY JobTitle

SELECT *
FROM #EMPLOYEEBRAZILSALARY