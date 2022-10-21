use UNIVER

select distinct PULPIT.PULPIT_NAME from PULPIT
	inner join FACULTY 
               on PULPIT.FACULTY = FACULTY.FACULTY
			   
			 inner join PROFESSION 
			   on   FACULTY.FACULTY  = PROFESSION.FACULTY 
					where PROFESSION_NAME like '%технологи%' 
					
					 
                         
--------------------------------------------------
use ARTS_MyBase

select Пользователь.Фамилия, Пользователь.Адрес, Пользователь.Покупатель_ID
from Пользователь
inner join Заказ
on Заказ.Покупатель_ID = Пользователь.Покупатель_ID
inner join 
Заказано
on Пользователь.Покупатель_ID = Заказано.Колво_Заказа