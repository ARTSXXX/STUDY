use UNIVER
go

alter table TEACHER add constraint PULPIT_� check(PULPIT = '����' or PULPIT = '���'or PULPIT = '��' or PULPIT = '��'
)
update TEACHER set PULPIT = '����' where TEACHER = '���'