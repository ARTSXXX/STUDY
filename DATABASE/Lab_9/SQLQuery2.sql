use UNIVER

CREATE table #Task_2
(    Key_Index int, 
     CC int identity(1, 1),
     Data_s varchar(100)
);

set nocount on;           
  declare @i int = 0;
  while   @i < 10000       -- добавление в таблицу 20000 строк
  begin
       INSERT #Task_2(Key_Index, Data_s) values(floor(20000*RAND()), replicate('строка ', 3));
        set @i = @i + 1; 
  end;

  select * from #Task_2

  checkpoint;

  DBCC DROPCLEANBUFFERS

  create index #Index on #Task_2 (Key_Index, CC)

  Select * from #Task_2 where Key_Index > 5500 and Key_Index = 9901

  drop index #Index on #Task_2


  ----------------------------------------------------------
  use ARTS_MyBase
  CREATE table #Task_3
(    Key_Index int, 
     CC int identity(1, 1),
     Data_s varchar(100)
);
  
  declare @g int = 0;
  while   @g < 10000       -- добавление в таблицу 20000 строк
  begin
       INSERT #Task_3(Key_Index, Data_s) values(floor(20000*RAND()), replicate('строка ', 3));
        set @g = @g + 1; 
  end;

  create INDEX  #Index_2 on Пользователь (Покупатель_ID, Фамилия)

  Select * from #Task_3 where Key_Index > 5500 and CC < 6500 

