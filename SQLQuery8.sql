USE [sqlTutorial]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 11-01-2024 15:06:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Temp_Employee]
@JobTitle varchar(50)
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
where JobTitle = @JobTitle
group by JobTitle

SELECT *FROM #Temp_Employee