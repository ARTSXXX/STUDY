use UNIVER
go
--������� DDL-�������, ����������� �� ��� DDL-������� � �� UNIVER. ������� ������ ��������� ��������� ����� ������� � ������� ������������.
--���� ���������� ������� ���-��� ������������ ����������, ������� ��-������: ��� �������, 
--��� � ��� �������, � ���-�� ������������� �����, � ������ ���������� ���������� ���������. 
--����������� ��������, ��������������� ������ ��������. 



create trigger DDL_TEACHER on database for DDL_DATABASE_LEVEL_EVENTS
as 
declare @t varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'varchar(50)');
declare @t1 varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'varchar(50)');
declare @t2 varchar(50) = EVENTDATA().value('(/EVENT_INSTANCE/ObjectType)[1]', 'varchar(50)');
if @t1 = 'TEACHER'
begin
	print '��� �������: ' + @t;
	print '��� �������: ' + @t1;
	print '��� �������: ' + @t2;
	raiserror ('�������� � �������� TEACHER ���������',16,1);
	rollback;
end;

alter table TEACHER Drop column TEACHER_NAME;