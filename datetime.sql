Create function fnComputeAge(@DOB DateTime)
returns nvarchar(50)
as
Begin

DECLARE @template datetime, @years int, @months int, @days int
Select @template = @DOB
Select @years = DATEDIFF(YEAR, @template, GETDATE()) -
				CASE
					WHEN (MONTH(@DOB) > MONTH(GETDATE())) OR
					(MONTH(@DOB) = MONTH(GETDATE()) AND DAY(@DOB) > DAY(GETDATE()))
					THEN 1 ELSE 0
				END
Select @template = DATEADD(YEAR, @years, @template)
Select @months = DATEDIFF(MONTH, @template, GETDATE()) - 
				 CASE
					WHEN DAY(@DOB)> DAY(GETDATE())
					THEN 1 ELSE 0
				 END

SELECT @template = DATEADD(MONTH, @months, @template)

Select @template = DATEDIFF(DAY, @template, GETDATE())

Declare @Age nvarchar(50)
Set @Age = Cast(@years as nvarchar(4)) + ' Years ' + Cast(@months as nvarchar(2)) + ' Months ' + Cast(@days as nvarchar(2)) + ' days old'
return @Age
END

select dbo.fnComputeAge('11/30/2005')