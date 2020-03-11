Create Trigger tr_tblEMployee_ForInsert
ON tbl_persontbl
FOR INSERT
AS 
BEGIN
	select * from inserted

END

select * from tbl_persontbl

Insert into tbl_persontbl Values(13, 'Priya', 'p@ram.com', 2, 32, 'Toronto', 55000, 3)
Alter Trigger tr_tblEMployee_ForInsert
ON tbl_persontbl
FOR INSERT
AS 
BEGIN
	Declare @Id int
	Select @Id = Id from inserted
	insert into tblEmployeeAudit
	values('New employee with id ' + Cast(@Id as nvarchar(5)) + ' is added at ' + Cast(Getdate() as nvarchar(20)))
END

Insert into tbl_persontbl Values(14, 'John', 'p@ram.com', 2, 32, 'Toronto', 55000, 3)

Create Table tblEmployeeAudit (
		Id int identity NOT NULL Primary key,
		Audit_Data nvarchar(max))

select * from tblEmployeeAudit












