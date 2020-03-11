Create Proc spGetEmployeesByGenderAndDepartment
@Gender nvarchar(20),
@DepartmentId int
as
BEGIN 
	Select Name, Gender, Id from Department_Name Where Gender = @Gender
	and Id = @DepartmentId
END

select * from Department_Name

Execute spGetEmployeesByGenderAndDepartment 3, 1