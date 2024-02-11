--Temp tables

CREATE TABLE #temp_employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

select *From #temp_employee

insert into #temp_employee values (
'1001', 'HR', '45000')

insert into #temp_employee
select *from
sqlTutorial..EmployeeSalary

drop table if exists #Temp_employee2
create table #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

insert into #Temp_Employee2
select JobTitle, Count(JobTitle), AVG(Age), AVG(Salary)
from sqlTutorial..EmployeeDemographics emp
join sqlTutorial..EmployeeSalary sal
on emp.EmployeeID = sal.EmployeeID
group by JobTitle

select *From #Temp_Employee2