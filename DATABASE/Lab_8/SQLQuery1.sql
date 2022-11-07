declare @a char = 'x';

declare @b varchar(4) = 'BSTU';

declare @c datetime =  getdate();

declare @f time ;

declare @e int;

declare @g tinyint;

declare @p numeric(15,5)

set @e = 5;
set @f = '15:00:00:255';

select @g = 15;


select @a a, @b b, @c c;

print @e;
