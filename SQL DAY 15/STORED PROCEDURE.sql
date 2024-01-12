-- TOPIC : STORED PROCEDURE

USE [SQL B]

--STORED PROCEDURE IS USED TO SAVE THE CODE AND REUSED IT AGAIN TO SAVE TIME FOR WRITE SAME CODE AGAIN AND AGAIN
CREATE PROCEDURE DISPLAY_TABLE
AS
SELECT * FROM EmployeeDemographics
GO;

EXEC DISPLAY_TABLE

CREATE PROCEDURE TEMP_EMPLOYEE
AS
DROP TABLE IF EXISTS #temp_employee

Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
group by JobTitle

Select * 
From #temp_employee
GO;

EXEC TEMP_EMPLOYEE;

--WE CAN ALSO CREATE STORED PROCEDURE THAT TAKING INPUT AND ON THE BASIS OF INPUT DISPLAY RESULTS
CREATE PROCEDURE TEMP_EMPLOYEE2
@JOBTITLE NVARCHAR(50)
AS
DROP TABLE IF EXISTS #temp_employee

Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM EmployeeDemographics ED
JOIN EmployeeSalary ES
	ON ED.EmployeeID = ES.EmployeeID
WHERE JobTitle = @JOBTITLE
group by JobTitle

Select * 
From #temp_employee
GO;

EXEC TEMP_EMPLOYEE2 @JOBTITLE = 'Salesman'
EXEC TEMP_EMPLOYEE2 @JOBTITLE = 'Accountant'