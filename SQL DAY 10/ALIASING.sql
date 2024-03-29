--TOPIC : ALIASING

USE [SQL B]

--USED TO RENAME COLUMN NAME IN A MANAGEABLE WAY BY USING AS WORD
SELECT FirstName AS Fname
FROM EmployeeDemographics

--USED TO RENAME COLUMN NAME WIHTOUT USING AS WORD BY PUTING SOME SPACE
SELECT FirstName Fname
FROM EmployeeDemographics

--USED TO COMBINE TWO COLUMN AND RENAME IT NAMED AS FULLNAME
SELECT FirstName + ' ' + LastName AS Fullname
FROM EmployeeDemographics

--USED TO RENAME COLUMN NAME FOR AGGREGATE FUNCTIONS
SELECT AVG(Age) AS [AVERAGE AGE]
FROM EmployeeDemographics

--USED TO RENAME TABLE NAME BY ALIASING TO USED IT IN MORE EFFECTIVE WAY IN JOINING STATEMENTS
SELECT ED.EmployeeID
FROM EmployeeDemographics AS ED
INNER JOIN EmployeeSalary ES
ON ED.EmployeeID = ES.employeeID

--USED TO JOIN MANY TABLES AS POSSIBLE BY USING ALIASING
SELECT ED.EmployeeID,ED.FirstName,ED.LastName,ES.Salary,WED.Age
FROM EmployeeDemographics AS ED
LEFT JOIN EmployeeSalary ES
ON ED.EmployeeID = ES.employeeID
LEFT JOIN WareHouseEmployeeDemographics AS WED
ON ED.EmployeeID = WED.EmployeeID