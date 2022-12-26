use UNIVER
go
create trigger TR_TEACHER_DEL1 on TEACHER after DELETE
as print 'TEACHERS_AFTER_DELETE1';
return;

create trigger TR_TEACHER_DEL2 on TEACHER after DELETE
as print 'TEACHERS_AFTER_DELETE2';
return;

create trigger TR_TEACHER_DEL3 on TEACHER after DELETE
as print 'TEACHERS_AFTER_DELETE3';
return;

select t.name,e.type_desc from sys.triggers t join sys.trigger_events e
on t.object_id = e.object_id
where OBJECT_NAME(t.parent_id) = 'TEACHER' and e.type_desc = 'DELETE'

exec SP_SETTRIGGERORDER @triggername = 'TR_TEACHER_DEL3',@order = 'First',@stmttype = 'DELETE';

exec SP_SETTRIGGERORDER @triggername = 'TR_TEACHER_DEL2',@order = 'Last',@stmttype = 'DELETE';
