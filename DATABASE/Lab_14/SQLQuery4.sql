create trigger TR_TEACHER on TEACHER after INSERT,DELETE,UPDATE
as declare @d1 varchar(20),@d2 nvarchar(50),@d3 char(1), @d4 nvarchar(20), @tt varchar(300);
declare @ins int = (SELECT count(*) from inserted),
		@del int = (SELECT count(*) from deleted);
if @ins > 0 and @del = 0
begin 
	print '������� Insert: ';
	set @d1 = (SELECT TEACHER from inserted);
	set @d2 = (SELECT TEACHER_NAME from inserted);
	set @d3 = (SELECT GENDER from inserted);
	set @d4 = (SELECT PULPIT from inserted);
	set @tt = @d1 + ' ' + @d2 + ' ' + @d3 + ' ' + @d4;
	insert into TR_AUDIT(STMT,TRNAME,CC) values ('INS', 'TR_TEACHER', @tt);
end;
else 
if @ins = 0 and @del > 0
begin
print '������� Delete';
set @d1 = (SELECT TEACHER from deleted);
set @d2 = (SELECT TEACHER_NAME from deleted);
set @d3 = (SELECT GENDER from deleted);
set @d4 = (SELECt PULPIT from deleted);
set @tt = @d1 + ' ' + @d2 + ' ' + @d3 + ' ' + @d4;
insert into TR_AUDIT(STMT,TRNAME,CC) values ('DEL', 'TR_TEACHER', @tt);
end;
else if @ins > 0 and @del > 0
begin 
print '������� Update';
set @d1 = (SELECt TEACHER from inserted);
set @d2 = (SELECT TEACHER_NAME from inserted);
set @d3 = (SELECT GENDER from inserted);
set @d4 = (SELECT PULPIT from inserted);
set @tt = @d1 + ' ' + @d2 + ' ' + @d3 + ' ' +@d4;
set @d1 = (SELECT TEACHER from deleted);
set @d2 = (SELECT TEACHER_NAME from deleted);
set @d3 = (SELECT GENDER from deleted);
set @d4 = (SELECT PULPIT from deleted);
set @tt = @d1 + ' ' + @d2 + ' ' + @d3 + ' ' +@d4 + ' ' + @tt;
insert into TR_AUDIT(STMT,TRNAME,CC) values ('UPD','TR_TEACHER', @tt);
end;
return;

insert into TEACHER values('����','������� ������� �������������', '�' , '���' )
UPDATE TEACHER set TEACHER.PULPIT = '����' where TEACHER.TEACHER = '����'
delete TEACHER where TEACHER.TEACHER = '����'
select * from TR_AUDIT
