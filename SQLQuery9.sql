select *from EmployeeSalary

-- subquery in select
Select EmployeeID, Salary, (select AVG(Salary) from EmployeeSalary) as allAvgSalary
FROM EmployeeSalary

-- subquery in partition by
Select EmployeeID, Salary, AVG(Salary) over () as allAvgSalary
FROM EmployeeSalary

-- why doesnt work with group by
Select EmployeeID, Salary, AVG(Salary) as allAvgSalary
FROM EmployeeSalary
group by EmployeeID, Salary
order by 1, 2

-- subquery with from
Select a.EmployeeID, allAvgSalary
from (Select EmployeeID, Salary, AVG(Salary) over () as allAvgSalary
		FROM EmployeeSalary) a

-- subquery with where
select EmployeeID, JobTitle, Salary
from EmployeeSalary 
where EmployeeID in (
						select EmployeeID from EmployeeDemographics 
						where Age > 30)

