use UNIVER

select FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT, AVG(PROGRESS.NOTE) [Средняя]
from FACULTY, GROUPS,PROGRESS
where FACULTY.FACULTY = 'ТОВ'
group by ROLLUP ( FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT)

------------
--- Оператор ROLLUP добавляет суммирующую строку в результирующий набор:
--- CUBE добавляет суммирующие строки для каждой комбинации групп.
use UNIVER 

select FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT, AVG (PROGRESS.NOTE) [AVG]
from FACULTY, GROUPS,PROGRESS
where FACULTY.FACULTY = 'ТОВ'
group by cube ( FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT)


use ARTS_MyBase
select Пользователь.Покупатель_ID, Заказ.Дата_сделки
from Пользователь, Заказ
where Заказ.Дата_сделки > '2010-01-01'
group by rollup (Пользователь.Покупатель_ID, Заказ.Дата_сделки)
