/*
	CTEs
*/


WITH CTE_Employee as 
(SELECT First_name, Last_name, Gender, Salary,
COUNT(Gender) over (partition by Gender) as TotalGender,
AVG(Salary) over (partition by Gender) as AvgSalary
from EmployeeDemographics emp
join EmployeeSalary sal
on emp.EmployeeID = sal.EmployeeID
where Salary > '45000'
)
select *from CTE_Employee

SELECT First_name, Last_name, Gender, Salary,
COUNT(Gender) over (partition by Gender) as TotalGender,
AVG(Salary) over (partition by Gender) as AvgSalary
from EmployeeDemographics emp
join EmployeeSalary sal
on emp.EmployeeID = sal.EmployeeID
where Salary > '45000'