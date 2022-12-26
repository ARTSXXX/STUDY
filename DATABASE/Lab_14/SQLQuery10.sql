use UNIVER
go
--Создать DDL-триггер, реагирующий на все DDL-события в БД UNIVER. Триггер должен запрещать создавать новые таблицы и удалять существующие.
--Свое выполнение триггер дол-жен сопровождать сообщением, которое со-держит: тип события, 
--имя и тип объекта, а так-же пояснительный текст, в случае запрещения выполнения оператора. 
--Разработать сценарий, демонстрирующий работу триггера. 



create trigger DDL_TEACHER on database for DDL_DATABASE_LEVEL_EVENTS
as 
declare @t varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'varchar(50)');
declare @t1 varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'varchar(50)');
declare @t2 varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectType)[1]', 'varchar(50)');
if @t1 = 'TEACHER'
begin
	print 'Тип события: ' + @t;
	print 'Имя объекта: ' + @t1;
	print 'Тип объекта: ' + @t2;
	raiserror ('Операции с таблицей TEACHER запрещены',16,1);
	rollback;
end;

alter table TEACHER Drop column TEACHER_NAME;