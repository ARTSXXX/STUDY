use UNIVER;
select PULPIT.PULPIT_NAME [Кафедра], isnull(TEACHER.TEACHER_NAME, '***') [Преподаватель]
from TEACHER
         left outer join PULPIT
                         on PULPIT.PULPIT = TEACHER.PULPIT;

--7(2)

select PULPIT.PULPIT_NAME as 'Кафедра', isnull(TEACHER.TEACHER_NAME, '***') as 'Преподаватель'
from TEACHER
         right outer join PULPIT
                          on PULPIT.PULPIT = TEACHER.PULPIT;
use ARTS_MyBase
select Пользователь.Покупатель_ID [Пользователи_ID], ISNULL (Пользователь.Покупатель_ID, '3') [Номер_Пользователя]
from Пользователь
right outer join Заказ
	on Пользователь.Покупатель_ID = Заказ.Номер_заказа