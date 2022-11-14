create table #tasks (
	name varchar(20),
	MESSAGE VARCHAR(10)
);

declare @i int = 0

while @i < 10
begin 
insert #tasks (name, MESSAGE)
values ('same' , 'surname')

set @i = @i + 1;

end
select * from #tasks
