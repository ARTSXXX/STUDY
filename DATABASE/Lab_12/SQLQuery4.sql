use UNIVER
go
create procedure PAUDITORIUM_INSERT 
@a char(20), @n varchar(50), @c int = 0, @t char(10)
as declare @rc int = 1;

begin try
	insert into AUDITORIUM(AUDITORIUM,AUDITORIUM_NAME,AUDITORIUM_CAPACITY,AUDITORIUM_TYPE)
	values (@a,@n,@c,@t)
	return @rc;
end try
begin catch
	print 'Номер ошибки :' + cast(error_number() as varchar(6));
	print 'сообщение: ' + error_message();
	print 'уровень: ' + cast(error_severity() as varchar(6));
	print 'метка: ' + cast(error_state() as varchar(8));
	print 'номер строки: ' + cast(error_line() as varchar(8));
	if ERROR_PROCEDURE() is not null
		print 'имя процедуры: ' + error_procedure();
		return -1;
end catch

declare @rc int;
exec @rc = PAUDITORIUM_INSERT @a = '315-1',@n =  '415-1', @c =15, @t =  'ЛБ-К';
print 'код ошибки: ' + cast(@rc as varchar(5)) 
	
