select * from tbl_persontbl Where Email LIKE '_@_.com'

select * from tbl_persontbl Where Age in (20,23,26)

select * from tbl_persontbl Where Age Between 20 AND 26

--Returns all people whose name starts with M or S or T
-- [] is to specify list of characters
-- ^ symbol specify to return all those people whose name does not start with M or S or T

select * from tbl_persontbl Where Name LIKE '[MST]%'

select * from tbl_persontbl Where Name LIKE '[^MST]%'

select * from tbl_persontbl order by Name Desc, Age Desc

select * from tbl_persontbl Where (City = 'London' or City = 'Mumbai') AND Age < 25

select top 50 Percent Name, Age from tbl_persontbl order by Age DESC

select SUM(salary) from tbl_persontbl

select MIN(salary) from tbl_persontbl

select MAX(salary) from tbl_persontbl

select GenderId, City, SUM(salary) as Total_Salary, COUNT(ID) as total_employees 
from tbl_persontbl group by GenderId, City
Having SUM(salary) > 50000