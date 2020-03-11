select * from tbl_persontbl
select * from Gender

Insert into tbl_persontbl (ID, Name, Email, GenderId, Age) Values (11, 'John', 'john@r.com', NULL, 950)

Delete From Gender where Id = 1

Alter Table tbl_persontbl
Add CONSTRAINT DF_tblPerson_GenderId
DEFAULT 3 FOR GenderId

ALTER Table tbl_persontbl
DROP Constraint DF_tblPerson_GenderId

ALTER Table tbl_persontbl
Add Age int NULL

ALTER Table tbl_persontbl
Add Constraint CK_tblPerson_Age CHECK (Age > 0 AND Age < 150)

Delete FROM Persontbl2
DBCC CHECKIDENT(Persontbl2, RESEED, 0)
SET IDENTITY_INSERT Persontbl2 OFF
Insert into Persontbl2 (Name) Values('Martin')

select * from Persontbl2

Create Table tblPerson3 (
PersonId int Identity(1,1) Primary Key,
Name nvarchar(20)
)