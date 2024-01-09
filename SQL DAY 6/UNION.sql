--UNION AND UNION ALL

--Create Table WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')


SELECT * FROM EmployeeDemographics
FULL OUTER JOIN WareHouseEmployeeDemographics
ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

--USED TO DISPLAY DATA OF BOTH TABLES AND DISPLAY DUPLICATE ITEM ONLY ONE TIME
SELECT * FROM EmployeeDemographics
UNION
SELECT * FROM WareHouseEmployeeDemographics

--USED TO DISPLAY DATA OF BOTH TABLES AND DISPLAY DUPLICATE ITEM MANY TIMES AS COME IN TABLES
SELECT * FROM EmployeeDemographics
UNION ALL
SELECT * FROM WareHouseEmployeeDemographics
ORDER BY EmployeeID

--USED UNION CAREFULLY WITH TWO TABLES THAT HAVING SAME COLUMNS NOT BY THEIR DATATYPE BUT BY THEIR VALUES AND CONTENT ALSO
SELECT EmployeeID,FirstName,Age FROM EmployeeDemographics
UNION
SELECT employeeID,JobTitle,Salary FROM EmployeeSalary