create trigger TR_TEACHER_UPD on TEACHER after UPDATE
as declare @c1 varchar(20), @c2 nvarchar(50),@c3 char(1), @c4 nvarchar(20), @in varchar(300);
print 'Операция обновления';
set @c1 = (SELECT TEACHER from inserted);
set @c2 = (SELECT TEACHER_NAME from inserted);
set @c3 = (SELECT GENDER from inserted);
set @c4 = (SELECT PULPIT from inserted);
set @in = @c1 + ' ' + @c2 + ' ' + @c3 + ' ' +@c4;
insert into TR_AUDIT(STMT, TRNAME,CC) values ('UPD', 'TR_TEACHER_UPD',@in);
return;

update TEACHER set TEACHER.PULPIT = 'ИСиТ' where TEACHER.TEACHER = 'ФЫВ'
 
 SELECT * from TR_AUDIT
