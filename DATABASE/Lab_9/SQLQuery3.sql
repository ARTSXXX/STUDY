use UNIVER

--CREATE table #Task_3
--(    Key_Index int, 
--     CC int identity(1, 1),
--     Data_s varchar(100)
--);

set nocount on;           
  declare @i int = 0;
  while   @i < 10000       -- добавление в таблицу 20000 строк
  begin
       INSERT #Task_3(Key_Index, Data_s) values(floor(20000*RAND()), replicate('строка ', 3));
        set @i = @i + 1; 
  end;

  select * from #Task_3

  checkpoint;

  DBCC DROPCLEANBUFFERS

  create index #Index on #Task_3 (Key_Index) INCLUDE (Data_s)

  Select Data_s from #Task_3 where Key_Index > 5500 

  drop index #Index on #Task_3



  ----------------------------------------------------------
  use ARTS_MyBase
 
  create INDEX  Index_3 on Пользователь (Покупатель_ID) INCLUDE (Фамилия) 

  Select * from Пользователь where Пользователь.Покупатель_ID > 9 and Фамилия = 'Арцыхович'

  

