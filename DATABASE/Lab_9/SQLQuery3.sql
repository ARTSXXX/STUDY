use UNIVER

--CREATE table #Task_3
--(    Key_Index int, 
--     CC int identity(1, 1),
--     Data_s varchar(100)
--);

set nocount on;           
  declare @i int = 0;
  while   @i < 10000       -- ���������� � ������� 20000 �����
  begin
       INSERT #Task_3(Key_Index, Data_s) values(floor(20000*RAND()), replicate('������ ', 3));
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
 
  create INDEX  Index_3 on ������������ (����������_ID) INCLUDE (�������) 

  Select * from ������������ where ������������.����������_ID > 9 and ������� = '���������'

  

