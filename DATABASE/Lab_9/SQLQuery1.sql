use UNIVER exec sp_helpindex 'AUDITORIUM_TYPE'

CREATE TABLE #EXPLRE
(
TIND int,
TFIELD nvarchar (30)
);

set nocount on -- Не выводим сообщение
declare @i int = 0 
while @i < 100
begin 
insert #EXPLRE (TIND, TFIELD)
values (FLOOR(10000*RAND()), REPLICATE('String' , 3))
if (@i%100 = 0 )
print @i
set @i = @i + 1
end;

select * from #EXPLRE where TIND between 1500 and 2500 order by TIND

checkpoint; -- Фиксируем бд

DBCC DROPCLEANBUFFERS;

create clustered index #EXPLRE_CL on #EXPLRE(TIND ASC)

drop index #EXPLRE_CL on #EXPLRE


------------------------------------------------------

use ARTS_MyBase

exec sp_helpindex 'Пользователь'
	
select * from Пользователь
where Пользователь.Покупатель_ID = 10

checkpoint; -- Фиксируем бд

DBCC DROPCLEANBUFFERS;

