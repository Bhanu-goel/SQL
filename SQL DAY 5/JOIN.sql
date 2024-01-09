--INNER JOIN AND LEFT/RIGHT/FULL OUTER JOIN

USE [SQL B];

--DISPLAY DATA WITHOUT JOIN
SELECT * FROM EmployeeDemographics
SELECT * FROM EmployeeSalary

--USED TO DISPLAY DATA BASED ON INNER JOIN TO GET COMMON VALUES IN THE BOTH TABLE BASED ON COMMON COLUMN
SELECT * FROM 
EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID

--USED TO DISPLAY DATA BASED ON LEFT OUTER JOIN TO COMBINE COMMON DATA AND WITH LEFT TABLE COLUMN
SELECT * FROM 
EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID

--USED TO DISPLAY DATA BASED ON RIGHT OUTER JOIN TO COMBINE COMMON DATA AND WITH RIGHT TABLE COLUMN
SELECT * FROM 
EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID

--USED TO DISPLAY DATA BASED ON FULL OUTER JOIN TO COMBINE BOTH TABLES
SELECT * FROM 
EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID

--USED TO DISPLAY DATA BASED ON JOIN WITH SPECIFIC COLUMN AND COMMON COLUMN I.E. EMPLOYEE ID
SELECT EmployeeDemographics.employeeID,FirstName,LastName,JobTitle,Salary FROM 
EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID

--USED TO DISPLAY DATA BASED ON JOIN WITH SPECIFIC COLUMN AND COMMON COLUMN I.E. EMPLOYEE ID
SELECT EmployeeSalary.employeeID,FirstName,LastName,JobTitle,Salary FROM 
EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID

--USECASES
--MICHEAL SCOTT USED TO FIND OUT HIGHEST SALARY PAY AFTER HIM IN THE COMPANY AND DISPLAY THE FOLLOWING COLUMN 
--EMPLOYEE ID, FIRSTNAME, LASTNAME ,JOBTITLE ,SALARY

SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,JobTitle,Salary 
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID
WHERE FirstName <> 'MICHEAL' 
ORDER BY Salary DESC


--USECASES
--KEVIN MALONE WANTS TO GET AVERAGE SALARY OF SALESMAN AND DISPLAY TWO COLUMN JOBTITLE AND SALARY
SELECT JobTitle,AVG(SALARY) AS [AVERAGE SALARY] FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.employeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle