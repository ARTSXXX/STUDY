use UNIVER
select AUDITORIUM.AUDITORIUM, AUDITORIUM_TYPE.AUDITORIUM_TYPE
from AUDITORIUM_TYPE,
     AUDITORIUM
where AUDITORIUM_TYPE.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE;

select T2.AUDITORIUM, T1.AUDITORIUM_TYPENAME
from AUDITORIUM_TYPE As T1,
     AUDITORIUM As T2
where T1.AUDITORIUM_TYPE = T2.AUDITORIUM_TYPE
  And T1.AUDITORIUM_TYPENAME Like 'компьютер%';

  
use ARTS_MyBase
select Пользователь.Фамилия, Пользователь.Адрес, Заказ.Дата_сделки, Пользователь.Покупатель_ID
from Пользователь, Заказ
where Пользователь.Покупатель_ID = Заказ.Покупатель_ID

use ARTS_MyBase
select П.Фамилия, П.Адрес, З.Дата_сделки, П.Покупатель_ID
from Пользователь as П, Заказ as З
where П.Покупатель_ID = З.Покупатель_ID



