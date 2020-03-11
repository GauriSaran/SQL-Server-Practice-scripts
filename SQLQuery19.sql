Use Sample
Go

spGetEmployees

Create procedure spGetEmployees
AS
BEGIN
	Select Name, GenderId from tbl_persontbl
END

select * from Department_Head

Create procedure spGetEmployeesAndDept
@Gender nvarchar(20)
@
AS
BEGIN
	Select Name, GenderId from tbl_persontbl
END