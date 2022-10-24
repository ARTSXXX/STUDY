use UNIVER

select AUDITORIUM_TYPE.AUDITORIUM_TYPENAME,
max (AUDITORIUM.AUDITORIUM_CAPACITY),
min (AUDITORIUM.AUDITORIUM_CAPACITY),
avg (AUDITORIUM.AUDITORIUM_CAPACITY),
sum (AUDITORIUM.AUDITORIUM_CAPACITY),
count (AUDITORIUM.AUDITORIUM_CAPACITY)
from AUDITORIUM_TYPE inner join AUDITORIUM 
on AUDITORIUM_TYPE.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE

Group BY AUDITORIUM_TYPENAME


---------------------------------------------


use ARTS_MyBase
select Пользователь.Покупатель_ID,
max (Заказ.Номер_заказа) [Mакс],
min (Заказ.Номер_заказа),
avg (Заказ.Номер_заказа),
sum (Заказ.Номер_заказа),
count (Заказ.Номер_заказа)
from Пользователь inner join Заказ 
on Пользователь.Покупатель_ID = Заказ.Покупатель_ID

Group BY Пользователь.Покупатель_ID


