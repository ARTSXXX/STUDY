use UNIVER
go
create procedure PUBJUECT
as
begin
declare @k int = (select count(*) from SUBJECT)
select count(*) from SUBJECT;
return @k;
end

declare @k int = 0;
Exec @k = PUBJUECT
--------------------------------------------
create procedure PSSUBJECT 
as
begin
declare @k2 int = (select count(*) from SUBJECT)
select * from SUBJECT
return @k2;
end

declare @k2 int = 0;
EXEC @k2 = PSSUBJECT

drop procedure PSSUBJECT

alter procedure PSSUBJECT @p varchar(20), @c int output
as begin
declare @k int = (select count(*) from SUBJECT)
print 'param @p =' +@p +'c - ' +cast(@c as varchar(20))
select SUBJECT.SUBJECT[���],SUBJECT.SUBJECT_NAME[����������],SUBJECT.PULPIT[�������] FROM SUBJECT
where SUBJECT.PULPIT = @p;
set @c = @@ROWCOUNT;
return @k;
end;


declare @k int = 0, @r int = 0,@p varchar(20) = '����';
exec @k = PSSUBJECT @p , @c = @r output;
print '���-�� ��������� � ������� '+ @p + ' = ' + cast(@r as varchar(3))
print '���-�� ��������� ����� = ' + cast(@k as varchar(3));



----------------------------------------------

alter procedure PSSUBJECT @p nvarchar(20)
as begin
declare @k int = (select  count(*) from SUBJECT)
select SUBJECT.SUBJECT[���],SUBJECT.SUBJECT_NAME[����������],SUBJECT.PULPIT FROM SUBJECT
where SUBJECT.PULPIT = @p;
end;
create table #SUBJECT (
		   SUBJECT  char(10) primary key, 
           SUBJECT_NAME varchar(100) unique,
           PULPIT  char(20) )


insert #SUBJECT exec PSSUBJECT @p = '����'

select * from #SUBJECT

--------------------------------------------

use ARTS_MyBase
go
create procedure MyProc
as 
begin
declare @my int = (select count(*) from ������������)
select * from ������������
return @my
end

drop procedure MyProc
declare @my int = 0
exec @my = MyProc

use ARTS_MyBase
go

alter procedure MyProc @p varchar(20)
as begin
declare @my int = (select count(*) from ������������)
print 'param @p' + @p
select ������������.������� from ������������
where ������������.������� = @p
return @p
end





