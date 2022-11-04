use UNIVER

GO

create view [Преподаватель]

as select TEACHER [Код],
	TEACHER_NAME [Имя],
	GENDER [Пол],
	PULPIT [Кафедра]

from TEACHER

select * from [Преподаватель] 

select * from [Преподаватель] order by Пол
	

use ARTS_MyBase

GO

create view [Пользователи]

as select Покупатель_ID,
			Фамилия,
			Адрес
			from Пользователь

select * from [Пользователи] order by Покупатель_ID