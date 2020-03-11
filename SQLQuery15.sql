Select * from tbl_persontbl

ALTER Table tbl_persontbl
Add Constraint UQ_tbl_persontbl_Email Unique(Email)

Insert into tbl_persontbl Values(12, 'Mary', 'x@a.com', 2, 22)

ALTER Table tbl_persontbl
Drop Constraint UQ_tbl_persontbl_Email