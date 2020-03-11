sp_helptext spGetEmployees

Alter procedure spGetEmployees  
AS  
BEGIN  
 Select Name, GenderId from tbl_persontbl order by Name
END

sp_helptext spGetEmployeesByGenderAndDepartment

Alter Proc spGetEmployeesByGenderAndDepartment  
@Gender nvarchar(20),  
@DepartmentId int  
WITH Encryption --With Encryption does not allow the user to see the text of stored procedure using sp_helptext
as  
BEGIN   
 Select Name, Gender, Id from Department_Name Where Gender = @Gender  
 and Id = @DepartmentId  
END

--WHEN A STORED PROCEDURE RETURNS A OUTPUT PARAMETER, WE NEED TO CREATE AN VARIABLE
Create proc spGetTotalCount2
@TotalCount int Output
as
Begin
	Select @TotalCount = Count(Id) from Department_Name
End
Declare @Total int
Execute spGetTotalCount2 @Total Output
print @Total
--When A STORED PROCEDURE RETURNS A VALUE, WE MUST CREATE VARIABLE TO STORE THE RETURNED VALUE
Create proc spGetTotalCount3
as
Begin
	return (select count(Id) from Department_Name)
End
Declare @TotalEmp int
Execute @TotalEmp = spGetTotalCount3
print @TotalEmp

print ASCII('a')

Declare @Start int
Set @Start = 65
While @Start <= 90
BEGIN
	print Char(@Start)
	Set @Start = @Start + 1
END

Select LTRIM('    HEllo')

Select Reverse('MAR')

Select CHARINDEX('@', 'ssf@h.com')

Select SUBSTRING('pam@bbb.com', CHARINDEX('@', 'pam@bbb.com') + 1, LEN('pam@bbb.com') - CHARINDEX('@', 'pam@bbb.com'))

Select REPLICATE('Gauri ', 3)

--REPLICATE FUNCTION
Select Name, City,
	SUBSTRING(Email, 1, 2) + REPLICATE('*', 5) +
	SUBSTRING(Email, CHARINDEX('@',Email) + 1, LEN(Email) - CHARINDEX('@', Email) + 1) as Email
from tbl_persontbl

--SPACE FUNCTION
Select Space(5)
Select Name + SPACE(5) + DepartmentName as Employee_Detail from Department_Name

--PATINDEX FUNCTION
Select Email, PATINDEX('%com', Email) as FirstOccurence
from tbl_persontbl
where PATINDEX('%com', Email) >0

--DATETIME Functions
select DATENAME(Weekday, '2020-02-19 19:45:31.793')

select DATEPART(Weekday, '2020-02-19 19:45:31.793')



















select Email from tbl_persontbl

select PATINDEX('%com', Email) from tbl_persontbl




