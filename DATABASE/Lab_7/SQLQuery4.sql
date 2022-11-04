use UNIVER;
 
go

create view Лекционные_аудитории (AUDITORIUM, AUDITORIUM_TYPE)

as select AUDITORIUM as [kod],
AUDITORIUM_TYPE as [Type]
from AUDITORIUM

WHERE AUDITORIUM.AUDITORIUM_TYPE LIKE 'ЛК%' WITH CHECK OPTION;

go

insert Лекционные_аудитории values (399, 'ЛР')
delete from AUDITORIUM where AUDITORIUM.AUDITORIUM = 'ЛК' and AUDITORIUM.AUDITORIUM_TYPE = 'ЛК'

select * from Лекционные_аудитории



---------------------------

use ARTS_MyBase

GO
Alter view Users(Покупатель_ID, Фамилия)
as select Пользователь.Покупатель_ID [ID],
Пользователь.Фамилия
from Пользователь

where Пользователь.Покупатель_ID > 11 WITH CHECK OPTION

go 

insert Users values (9, 'Робот')

select * from Users

