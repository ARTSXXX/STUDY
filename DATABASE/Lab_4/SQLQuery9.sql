use UNIVER;

select AUDITORIUM.AUDITORIUM, AUDITORIUM_TYPE.AUDITORIUM_TYPE
from AUDITORIUM
         cross join AUDITORIUM_TYPE
where AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE;


use ARTS_MyBase

select Пользователь.Фамилия, Пользователь.Покупатель_ID, Пользователь.Адрес, Пользователь.Телефон
from Пользователь 
cross join Заказ
where Пользователь.Покупатель_ID = Заказ.Покупатель_ID
