use UNIVER
go

alter table TEACHER add constraint PULPIT_ั check(PULPIT = 'ศั่า' or PULPIT = 'ะศา'or PULPIT = 'หย' or PULPIT = 'หำ'
)
update TEACHER set PULPIT = 'ศั่า' where TEACHER = 'ิÛย'