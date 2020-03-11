select * from tblIndiaCustomers
UNION
select * from tblCACustomers

select * from tblIndiaCustomers
UNION ALL
select * from tblCACustomers
ORDER BY Name

