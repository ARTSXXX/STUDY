use UNIVER;

select PULPIT.PULPIT_NAME [Кафедра], isnull(TEACHER.TEACHER_NAME, '***') [PREPOD]
from PULPIT
         left outer join TEACHER
                         on PULPIT.PULPIT = TEACHER.PULPIT;

use ARTS_MyBase
select Пользователь.Покупатель_ID [Пользователи_ID], ISNULL (Заказ.Номер_заказа, '3') [Заказы]
from Пользователь
left outer join Заказ
	on Пользователь.Покупатель_ID = Заказ.Номер_заказа