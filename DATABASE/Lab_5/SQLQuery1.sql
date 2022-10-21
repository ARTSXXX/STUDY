use UNIVER

select PULPIT_NAME from PULPIT, FACULTY 
where PULPIT.FACULTY = FACULTY.FACULTY
  and FACULTY.FACULTY in (select PROFESSION.FACULTY
                         from PROFESSION
                         where PROFESSION_NAME LIKE ('%технология%')
                            or PROFESSION_NAME LIKE ('%технологии%'))

		

--------------
use ARTS_MyBase

select Пользователь.Фамилия, Пользователь.Адрес, Пользователь.Покупатель_ID
from Пользователь, Заказ
where Пользователь.Покупатель_ID = Заказ.Покупатель_ID
and Пользователь.Покупатель_ID in (select Заказано.Колво_Заказа 
									from Заказано
									where Заказано.Колво_Заказа = 11
									or Заказано.Колво_Заказа = 12)




