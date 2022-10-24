use UNIVER

SELECT SUBJECT.SUBJECT,PROGRESS.NOTE,

(SELECT COUNT(PROGRESS.IDSTUDENT) from PROGRESS

where SUBJECT.SUBJECT = PROGRESS.SUBJECT)[Кол-во студентов]

FROM SUBJECT,PROGRESS

GROUP BY SUBJECT.SUBJECT,PROGRESS.NOTE

HAVING PROGRESS.NOTE = 8 or PROGRESS.NOTE = 9


use ARTS_MyBase

select Пользователь.Покупатель_ID, Заказ.Покупатель_ID,

(select count(Пользователь.Покупатель_ID) from Пользователь
where Пользователь.Покупатель_ID > 10)



from Пользователь, Заказ
where Пользователь.Покупатель_ID = Заказ.Покупатель_ID

group by Пользователь.Покупатель_ID, Заказ.Покупатель_ID

HAVING Пользователь.Покупатель_ID > 11 


