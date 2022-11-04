use UNIVER;
 
go

create view Аудитории (AUDITORIUM, AUDITORIUM_TYPE)

as select AUDITORIUM as [kod],
AUDITORIUM_TYPE as [Type]
from AUDITORIUM

WHERE AUDITORIUM.AUDITORIUM_TYPE LIKE 'ЛК%'

go

insert Аудитории values (324, 'ЛК')
delete from AUDITORIUM where AUDITORIUM.AUDITORIUM = 'ЛК' and AUDITORIUM.AUDITORIUM_TYPE = 'ЛК'

select * from Аудитории


--------------------------------------------------

use ARTS_MyBase

GO
create view Users(Покупатель_ID, Фамилия)
as select Пользователь.Покупатель_ID [ID],
Пользователь.Фамилия
from Пользователь

where Пользователь.Покупатель_ID > 11

go 


select * from Users


