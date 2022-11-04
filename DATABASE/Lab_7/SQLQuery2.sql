USE UNIVER;
GO
CREATE VIEW [Количество кафедр]
AS SELECT
FACULTY.FACULTY_NAME [Факультет],
COUNT(PULPIT.PULPIT)[Количество кафедр]
FROM FACULTY 
JOIN PULPIT ON FACULTY.FACULTY=PULPIT.FACULTY
GROUP BY FACULTY_NAME

SELECT * FROM [Количество кафедр];

----------------------------------------------------------

USE ARTS_MyBase;
GO
CREATE VIEW [Номер_заказа] 
AS SELECT 
Заказано.Номер_заказа [Номер заказа],
COUNT(Заказано.Колво_Заказа) [Кол-во]
FROM  Заказано
GROUP BY Номер_заказа

SELECT * FROM [Номер_заказа]


DROP VIEW [Номер_заказа]
