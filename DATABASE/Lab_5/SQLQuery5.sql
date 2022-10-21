use UNIVER
select * from FACULTY 
where not exists (select * from PULPIT where PULPIT.FACULTY = FACULTY.FACULTY);


----------


use ARTS_MyBase

select * from Пользователь, Заказ

where not exists (select * from Пользователь where Пользователь.Покупатель_ID = Заказ.Покупатель_ID)