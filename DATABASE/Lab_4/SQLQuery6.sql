use UNIVER;

select PULPIT.PULPIT_NAME [�������], isnull(TEACHER.TEACHER_NAME, '***') [�������������]
from PULPIT
         left outer join TEACHER
                         on PULPIT.PULPIT = TEACHER.PULPIT;