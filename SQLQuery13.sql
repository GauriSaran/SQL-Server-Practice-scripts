Create Table Test1
(
ID int identity(1,1), 
Value nvarchar(20)
)

Create Table Test2
(
ID int identity(1,1), 
Value nvarchar(20)
)
--User1 Session
Insert into Test2 Values('100')
Insert into Test1 Values('X')

Create Trigger trForInsert on Test1 For Insert
as 
Begin
	Insert into Test2 Values('YYYY')
End

Select * from Test1
Select * from Test2
Select IDENT_CURRENT('Test2') -- returns the last generated identity value in any session and any scope
Select SCOPE_IDENTITY() --returns the last identity value generated in the same scope and session
Select @@IDENTITY -- returns the last identity value generated in the same session but any scope