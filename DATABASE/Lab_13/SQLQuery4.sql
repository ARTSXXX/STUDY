create function FCTEACHER 
(
@p varchar(20)
)
returns int
as
begin
declare @rc int = (select count(*) from TEACHER
where PULPIT = isnull (@p , PULPIT));
return @rc
end

select PULPIT, dbo.FCTEACHER(PULPIT) from PULPIT

select dbo.FCTEACHER(NULL)
