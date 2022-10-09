use UNIVER
select STUDENT.[NAME],
       FACULTY.FACULTY,
       PULPIT.PULPIT,
       PROFESSION.PROFESSION_NAME,
       SUBJECT.SUBJECT_NAME,
       case
           when (PROGRESS.NOTE = 6) then '�����'
           when (PROGRESS.NOTE = 7) then '����'
           when (PROGRESS.NOTE = 8) then '������'
           end [������]
from PROGRESS
         inner join STUDENT on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
         inner join [SUBJECT] on [SUBJECT].[SUBJECT] = PROGRESS.[SUBJECT]
         inner join GROUPS on GROUPS.IDGROUP = STUDENT.IDGROUP
         inner join PROFESSION on PROFESSION.PROFESSION = GROUPS.PROFESSION
         inner join PULPIT on PULPIT.PULPIT = [SUBJECT].PULPIT
         inner join FACULTY on FACULTY.FACULTY = PULPIT.FACULTY
where PROGRESS.NOTE between 6 and 8
order by FACULTY.FACULTY asc, PROGRESS.NOTE desc, PULPIT.PULPIT asc, PROFESSION.PROFESSION asc, STUDENT.NAME asc



use ARTS_MyBase
select ������������.�������,  ������������.�����, ������������.����������_ID,
	case 
	when (������������.����������_ID = 10) then '������'
	when (������������.����������_ID = 11) then '��������'
	when (������������.����������_ID = 12) then '����������'
	end [����������.ID]
from ������������ 
	 INNER JOIN �����
		On �����.����������_id
			= ������������.����������_ID
			where �����.����������_ID between 10 and 12
				order by ������������.����������_ID desc