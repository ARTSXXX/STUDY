use UNIVER

declare @ANY nvarchar (20), @ALL nvarchar (300)='';
declare list cursor for select PULPIT_NAME from PULPIT where PULPIT.FACULTY = '’“Ë“'  for update
  

open list 
fetch list into @ANY 
delete PULPIT where current of list
while @@FETCH_STATUS = 0
begin 
set @ALL = RTRIM(@ANY) + ',' + @ALL
FETCH list into @ANY
end
print RTRIM(@ALL) + '- ’ÚËÚ'
CLOSE list

deallocate list







