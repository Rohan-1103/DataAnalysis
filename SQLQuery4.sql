-- STORED PROCEDURES

CREATE PROCEDURE TEST
as 
SELECT *From
EmployeeDemographics

EXEC TEST

CREATE PROCEDURE Temp_Employee
AS
create table #temp_employee (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

insert into #temp_employee
select JobTitle, Count(JobTitle), AVG(Age), AVG(Salary)
from sqlTutorial..EmployeeDemographics emp
join sqlTutorial..EmployeeSalary sal
on emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT *FROM #Temp_Employee

EXEC Temp_Employee @JobTitle = 'Salesman'
