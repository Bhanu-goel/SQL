--CONCEPT TEMP TABLES

USE [SQL B]

DROP TABLE IF EXISTS #TEMP_EMPLOYEE1

CREATE TABLE #TEMP_EMPLOYEE1
(EMPLOYEE INT,
JOBTITLE VARCHAR(50),
SALARY INT
)

INSERT INTO #TEMP_EMPLOYEE1 VALUES
(1001,'HR',45000)

INSERT INTO #TEMP_EMPLOYEE1 
SELECT * FROM [SQL B].dbo.EmployeeSalary

SELECT * FROM #TEMP_EMPLOYEE1

DROP TABLE IF EXISTS #TEMPEMPLOYEE2

CREATE TABLE #TEMPEMPLOYEE2
(JOBTITLE VARCHAR(50),
EMPLOYEE_PER_JOB INT,
AVG_AGE INT,
AVG_SALARY INT
)

INSERT INTO #TEMPEMPLOYEE2
SELECT JobTitle,COUNT(JobTitle),AVG(Age),AVG(Salary)
FROM EmployeeDemographics ED
INNER JOIN EmployeeSalary ES
ON ED.EmployeeID = ES.employeeID
GROUP BY JobTitle

SELECT * FROM #TEMPEMPLOYEE2