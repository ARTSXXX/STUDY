use UNIVER

--CREATE table #Task_4
--(    Key_Index int, 
--     CC int identity(1, 1),
--     Data_s varchar(100)
--);

set nocount on;           
  declare @i int = 0;
  while   @i < 10000       -- добавление в таблицу 20000 строк
  begin
       INSERT #Task_4(Key_Index, Data_s) values(floor(20000*RAND()), replicate('строка ', 3));
        set @i = @i + 1; 
  end;

  select * from #Task_4

  checkpoint;

  DBCC DROPCLEANBUFFERS

 

  Select Key_Index from #Task_4 where Key_Index > 5000 and Key_Index < 6000

  create index Index_s on #Task_4 (Key_Index) where Key_Index > 5000 and Key_Index < 6000

  drop index Index_s on #Task_4


  ----------------------------------------------------------
  use ARTS_MyBase
 


  Select * from Пользователь where Пользователь.Покупатель_ID > 9 and Пользователь.Покупатель_ID < 11


  create INDEX  Index_4 on Пользователь (Покупатель_ID) where Пользователь.Покупатель_ID > 9 and Пользователь.Фамилия < 11 

  

