use UNIVER
go

create trigger TEACHER_INSTEAD_OF on TEACHER instead of DELETE
as raiserror('�������� ���������',10,1);
return
delete from TEACHER where TEACHER = '���'
