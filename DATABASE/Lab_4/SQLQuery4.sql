select STUDENT.[NAME],
       FACULTY.FACULTY,
       PULPIT.PULPIT,
       PROFESSION.PROFESSION_NAME,
       SUBJECT.SUBJECT_NAME,
       case
           when (PROGRESS.NOTE = 6) then 'Шесть'
           when (PROGRESS.NOTE = 7) then 'Семь'
           when (PROGRESS.NOTE = 8) then 'Восемь'
           end [Оценка]
from PROGRESS
         inner join STUDENT on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
         inner join [SUBJECT] on [SUBJECT].[SUBJECT] = PROGRESS.[SUBJECT]
         inner join GROUPS on GROUPS.IDGROUP = STUDENT.IDGROUP
         inner join PROFESSION on PROFESSION.PROFESSION = GROUPS.PROFESSION
         inner join PULPIT on PULPIT.PULPIT = [SUBJECT].PULPIT
         inner join FACULTY on FACULTY.FACULTY = PULPIT.FACULTY
where PROGRESS.NOTE between 6 and 8
order by FACULTY.FACULTY asc, PROGRESS.NOTE desc, PULPIT.PULPIT asc, PROFESSION.PROFESSION asc, STUDENT.NAME asc