Create View vwEmployeeByDept
as
Select h.Id, h.Location, h.Department_Head, d.Name, d.Gender, d.DepartmentName
from Department_Head h
join Department_Name d
on h.Id = d.Id

select * from vwEmployeeByDept


UPDATE vwEmployeeByDept
Set DepartmentName = 'IT' where Location = 'Toronto'

Create View vwEmployeeByITDept
as
Select h.Id, h.Location, h.Department_Head, d.Name, d.Gender, d.DepartmentName
from Department_Head h
join Department_Name d
on h.Id = d.Id
where d.DepartmentName = 'IT'

select * from vwEmployeeByITDept

UPDATE vwEmployeeByITDept
Set Name = 'Priya' where Name = 'Simon'

select * from Department_Name


Create View vwEmployeeByCountofDept
as
Select d.DepartmentName, Count(d.Id) as Total_Employees
from Department_Head h
join Department_Name d
on h.Id = d.Id
group by DepartmentName

select * from vwEmployeeByCountofDept