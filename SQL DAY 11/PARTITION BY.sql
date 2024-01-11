--TOPIC : PARTITION BY

USE [SQL B]

--USED TO PERFORM CALCULATIONS ON SINGLE COLUMN OVER MULTIPLE COLUMN IN TABLE AND PUT THE DATA IN EACH COLUMN BASED ON RESULT AS PARTITION
SELECT FirstName,LastName,Gender,Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TOTALGENDER
FROM EmployeeDemographics ED
INNER JOIN EmployeeSalary ES
ON ED.EmployeeID = ES.employeeID

--AS GROUP BY IS PROVIDED SAME OUTPUT BUT IT SUMMARIZES THE TABLE 
SELECT Gender,COUNT(Gender)
FROM EmployeeDemographics ED
INNER JOIN EmployeeSalary ES
ON ED.EmployeeID = ES.employeeID
GROUP BY GENDER