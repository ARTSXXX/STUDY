use UNIVER

declare @ANY nvarchar (20), @ALL nvarchar (300)='';
declare list cursor for select SUBJECT from SUBJECT where SUBJECT.PULPIT = '����';
  

open list 
fetch list into @ANY 
print '������ ���������'
while @@FETCH_STATUS = 0
begin 
set @ALL = RTRIM(@ANY) + ',' + @ALL
FETCH list into @ANY
end
print RTRIM(@ALL) + '- ����'
CLOSE list



use ARTS_MyBase
declare @ANY_2 nvarchar (20), @ALL_2 nvarchar (300)='';
declare list cursor for select ������� from ������������
open list_2
fetch list_2 into @ANY_2 
print '������ ���������'
while @@FETCH_STATUS = 0
begin 
set @ALL_2 = RTRIM(@ANY_2) + ',' + @ALL_2
FETCH list_2 into @ANY_2
end
print RTRIM(@ALL_2) + '- ����'
CLOSE list_2

