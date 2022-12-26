create trigger TR_TEACHER_DEL on TEACHER after DELETE 
as declare @b1 varchar(20),@b2 nvarchar(50),@b3 char(1),@b4 nvarchar(20), @tn varchar(300);
print 'Операция удаления';
set @b1 = (SELECT TEACHER from deleted);
set @b2 = (SELECT TEACHER_NAME from deleted);
set @b3 = (SELECT GENDER from deleted);
set @b4 = (SELECT PULPIT from deleted);
set @tn = @b1 + ' ' + @b2 + ' ' + @b3 + ' '+ @b4;
insert into TR_AUDIT(STMT,TRNAME,CC) values ('DEL','TR_TEACHER_DEL', @tn);
return;

delete from TEACHER where TEACHER.TEACHER = 'БЗБРДВ';
SELECT * from TR_AUDIT

--drop  table TR_AUDIT
--drop trigger TR_TEACHER_DEL
--drop trigger TR_TEACHER_INS
--drop trigger TR_TEACHER_UPD