use UNIVER;

select PULPIT.PULPIT_NAME [Кафедра], isnull(TEACHER.TEACHER_NAME, '***') [Преподаватель]
from PULPIT
         left outer join TEACHER
                         on PULPIT.PULPIT = TEACHER.PULPIT;