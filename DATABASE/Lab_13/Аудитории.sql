use univer
go
alter function test1 (
@typ varchar(20)
)
returns varchar(20)
as begin
declare @type varchar(20) = (select AUDITORIUM.AUDITORIUM_TYPE from AUDITORIUM
where AUDITORIUM.AUDITORIUM = @typ)
return @type
end
		
declare @result varchar(20) = dbo.test1('324-1')
print @result
