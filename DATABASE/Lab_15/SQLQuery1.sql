use UNIVER


select TEACHER.PULPIT[Кафедра],TEACHER.TEACHER_NAME[Преподаватель]
from TEACHER where TEACHER.PULPIT = 'ИСиТ'
for xml PATH('PULPIT'),root('Список_преподавателей_кафедры_ИСиТ'),elements;

use ARTS_MyBase
select Пользователь.Покупатель_ID, Пользователь.Фамилия
from Пользователь 
where Пользователь.Покупатель_ID > 11
for xml PATH ('ПОЛЬЗОВАТЕЛЬ'),
root ('Список_пользователей'),
elements;


use UNIVER

select AUDITORIUM_TYPE from AUDITORIUM
where AUDITORIUM.AUDITORIUM_CAPACITY = 90
for xml PATH ('AUDITORUIN_TYPE'),
root ('Аудитории'),
elements;