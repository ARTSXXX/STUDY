use UNIVER
go

create function FSUBJECTS (
@p varchar(20)
)
returns char (300)
as 
begin
declare @tv char(20);
declare @t varchar(300) = 'Код кафедры'
declare cur cursor for select SUBJECT from SUBJECT 
where SUBJECT.PULPIT = @p
open cur
fetch cur into @tv
while @@FETCH_STATUS = 0
begin
set @t = @t +',' +RTRIM(@tv)
FETCH cur INTO @tv
end
return @t
end

drop function FSUBJECTS

select PULPIT, DBO.FSUBJECTS(PULPIT) from PULPIT