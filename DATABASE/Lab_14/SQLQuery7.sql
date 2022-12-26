--
-- Разработать сценарий, демонстрирующий на примере базы данных 
-- X_UNIVER утвержде-ние: AFTER-триггер является частью транзак-ции, в рамках которого выполняется оператор, активизировавший триггер.
use UNIVER
go

create trigger AUDITORIUM_TRAN on AUDITORIUM after INSERT,DELETE,UPDATE
as declare @c int = (SELECT sum(AUDITORIUM.AUDITORIUM_CAPACITY) from AUDITORIUM)
if(@c > 350)
	begin 
		raiserror('Общая вместимость аудиторий не может быть больше 350',10,1);	
		rollback;
end 
return

UPDATE AUDITORIUM set AUDITORIUM_CAPACITY = 15 where AUDITORIUM = '216-1'

DROP trigger AUDITORIUM_TRAN
DROP trigger TR_TEACHER_INS
DROP trigger TR_TEACHER_DEL
DROP trigger TR_TEACHER_UPD
DROP trigger TR_TEACHER
DROP trigger TR_TEACHER_DEL1
DROP trigger TR_TEACHER_DEL2
DROP trigger TR_TEACHER_DEL3
DROP trigger AUDITORIUM_TRAN