use UNIVER

select AUDITORIUM_TYPE, AUDITORIUM_CAPACITY from AUDITORIUM 

where AUDITORIUM_CAPACITY =	 
(select top(1) AUDITORIUM_CAPACITY from AUDITORIUM 
where  AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE order by AUDITORIUM_CAPACITY desc 
)
order by AUDITORIUM_CAPACITY desc 


--------------

use ARTS_MyBase

select * from Пользователь as P1

where P1.Покупатель_ID = (select top (1) Покупатель_ID 
from Пользователь as P2
where P1.Покупатель_ID = P2.Покупатель_ID order by P2.Покупатель_ID desc)
order by Покупатель_ID desc



