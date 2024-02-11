create table EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

insert into EmployeeErrors values
('1001 ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

select *from EmployeeErrors

-- USing trim, LTRIM, RTRIM
select EmployeeID, TRIM(EmployeeID) 
as IDTRIM 
from EmployeeErrors

select EmployeeID, LTRIM(EmployeeID) 
as LIDTRIM 
from EmployeeErrors

select EmployeeID, RTRIM(EmployeeID) 
as RIDTRIM 
from EmployeeErrors

--Using Replace
select EmployeeID, REPLACE(LastName, '- Fired', '') as LastNameFixed
from EmployeeErrors

--Using substring
SELECT err.FirstName ,SUBSTRING(err.FirstName, 1, 3), SUBSTRING(dem.First_name, 1, 3)
from EmployeeErrors err
join sqlTutorial..EmployeeDemographics dem
on SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.First_name, 1, 3)

--UPPER and LOWER
Select FirstName, LOWER(FirstName)
from EmployeeErrors

Select FirstName, UPPER(FirstName)
from EmployeeErrors