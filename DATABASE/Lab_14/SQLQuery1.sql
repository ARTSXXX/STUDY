create table TR_AUDIT (
	ID int identity,
	STMT varchar(20) check (STMT in ('INS','DEL','UPD')),
	TRNAME varchar(50),
	CC varchar(300)
)

create trigger TR_TEACHER_INS on TEACHER after insert
as declare @a1 varchar(20),@a2 nvarchar(50), @a3 char(1),@a4 nvarchar(20), @in varchar(300);
print 'Операция вставки';
set @a1 = (SELECT [TEACHER] from inserted);
set @a2 = (SELECT [TEACHER_NAME] from inserted);
set @a3 = (SELECT [GENDER] from inserted);
set @a4 = (SELECT [PULPIT] from inserted)
set @in = @a1 + ' ' + @a2 + ' ' + @a3 + ' ' + @a4;
insert into TR_AUDIT(STMT,TRNAME,CC) values ('INS', 'TR_TEACHER_INS', @in);
return;

insert into TEACHER(TEACHER,TEACHER_NAME,GENDER,PULPIT) values ('ФЫВ','Семкин Павел Павлович', 'м',  'ИСиТ');

select * from TR_AUDIT


