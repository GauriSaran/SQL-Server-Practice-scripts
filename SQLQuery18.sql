select * from tbl_persontbl

select * from Department_Head

select Name, GenderId, Salary, Department_Name
from tbl_persontbl JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id

select Name, GenderId, Salary, Department_Name
from tbl_persontbl LEFT OUTER JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id

--Can replace any NULL values with ISNULL() function
select Name, GenderId, Salary, ISNULL(Department_Name, 'No Dept') AS Department_Name
from tbl_persontbl LEFT OUTER JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id


--Can replace any NULL values with CASE Statement
select Name, GenderId, Salary, CASE When Department_Name IS NULL THEN 'No Dept' Else Department_Name END as Department_Name
from tbl_persontbl LEFT OUTER JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id

--Can replace any NULL values with COALESCE function
select Name, GenderId, Salary, COALESCE(Department_Name, 'No Dept') AS Department_Name
from tbl_persontbl LEFT OUTER JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id





select Name, GenderId, Salary, Department_Name
from tbl_persontbl LEFT OUTER JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id
Where Department_Name IS NULL

select Name, GenderId, Salary, Department_Name
from tbl_persontbl FULL JOIN Department_Head
ON tbl_persontbl.DepartmentId = Department_Head.Id
Where tbl_persontbl.DepartmentId IS NULL 
OR Department_Head.Id IS NULL




select Name, GenderId, Salary, Department_Name
from tbl_persontbl CROSS JOIN Department_Head
