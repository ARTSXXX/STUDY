USE UNIVER;
GO
ALTER VIEW [Количество кафедр] with schemabinding
AS SELECT FACULTY.FACULTY_NAME [факультет],
COUNT(PULPIT.FACULTY) [количество]
FROM dbo.FACULTY join dbo.PULPIT
ON FACULTY.FACULTY = PULPIT.FACULTY
GROUP BY FACULTY.FACULTY_NAME

SELECT * FROM [Количество кафедр]

---------------------------------

use ARTS_MyBase;
go
alter view [Schema] with schemabinding
as select Пользователь.Покупатель_ID, Пользователь.Фамилия
	
from dbo.Пользователь
where Пользователь.Покупатель_ID > 11

go

select *  from [Schema] 

