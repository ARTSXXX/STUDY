use UNIVER;


(
    SELECT NAME, YEAR_FIRST
    From GROUPS
             Left OUTER JOIN STUDENT S2 on GROUPS.IDGROUP = S2.IDGROUP
    Union 
    SELECT NAME, YEAR_FIRST
    From GROUPS
             RIGHT outer join STUDENT S3 on GROUPS.IDGROUP = S3.IDGROUP)



use UNIVER
select PULPIT.FACULTY, PULPIT.PULPIT, PULPIT.PULPIT_NAME
from PULPIT full outer join TEACHER
on PULPIT.PULPIT = TEACHER.PULPIT
where TEACHER.TEACHER is null



select TEACHER.TEACHER_NAME, TEACHER.TEACHER, TEACHER.PULPIT,TEACHER.GENDER
from PULPIT full outer join TEACHER
on PULPIT.PULPIT=TEACHER.PULPIT
where TEACHER.TEACHER is not null


select * from PULPIT full outer join TEACHER
on PULPIT.PULPIT = TEACHER.PULPIT


use ARTS_MyBase;
select Пользователь.Фамилия, Пользователь.Покупатель_ID , Пользователь.Телефон from Пользователь 
full outer join Заказ 
on Заказ.Покупатель_ID = Пользователь.Покупатель_ID
where Пользователь.Покупатель_ID is not null


use ARTS_MyBase;
select Пользователь.Фамилия, Пользователь.Покупатель_ID , Пользователь.Телефон from Пользователь
full outer join Заказ 
on Заказ.Покупатель_ID = Пользователь.Покупатель_ID
where Пользователь.Покупатель_ID is null


use ARTS_MyBase

select * from Пользователь full outer join Заказ 
on Пользователь.Покупатель_ID = Заказ.Покупатель_ID
