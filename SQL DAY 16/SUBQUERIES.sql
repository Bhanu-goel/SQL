-- TOPIC : SUBQUERIES (IN SELECT , FROM , AND WHERE STATEMENT)

USE [SQL B]

SELECT * 
FROM EmployeeSalary

-- SUBQUERY WITH SELECT
SELECT employeeID,Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS ALLAVGSALARY
FROM EmployeeSalary

--HOW TO DO IT WITH PARTITION BY
SELECT employeeID, Salary, AVG(Salary) OVER () AS ALLAVGSALARY
FROM EmployeeSalary

--WHY GROUP BY DOESN'T WORK
SELECT employeeID,Salary,AVG(Salary) AS ALLAVGSALARY
FROM EmployeeSalary
GROUP BY employeeID,Salary
ORDER BY 1

--SUBQUERY IN FROM
SELECT A.employeeID,ALLAVGSALARY
FROM (SELECT employeeID,Salary,AVG(Salary) OVER () AS ALLAVGSALARY FROM EmployeeSalary) AS A
ORDER BY employeeID

--SUBQUERY IN WHERE
SELECT employeeID,JobTitle,Salary
FROM EmployeeSalary 
WHERE employeeID IN (SELECT employeeID FROM EmployeeDemographics 
					 WHERE AGE>30)