use UNIVER

declare @ANY nvarchar (20), @ALL nvarchar (300)='';
declare list cursor for select PULPIT_NAME from PULPIT where PULPIT.FACULTY = '����'  for update
  

open list 
fetch list into @ANY 
delete PULPIT where current of list
while @@FETCH_STATUS = 0
begin 
set @ALL = RTRIM(@ANY) + ',' + @ALL
FETCH list into @ANY
end
print RTRIM(@ALL) + '- ����'
CLOSE list

deallocate list







