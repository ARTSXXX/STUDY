use UNIVER
select FACULTY.FACULTY,
       PULPIT.PULPIT,
       PROFESSION.PROFESSION_NAME,
       SUBJECT.SUBJECT_NAME,
     STUDENT.NAME,
       case
           when (PROGRESS.NOTE = 6) then '�����'
           when (PROGRESS.NOTE = 7) then '����'
           when (PROGRESS.NOTE = 8) then '������'
           end [PROGRESS.NOTE]
from PROGRESS
         inner join STUDENT on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
         inner join [SUBJECT] on [SUBJECT].[SUBJECT] = PROGRESS.[SUBJECT]
         inner join GROUPS on GROUPS.IDGROUP = STUDENT.IDGROUP
         inner join PROFESSION on PROFESSION.PROFESSION = GROUPS.PROFESSION
         inner join PULPIT on PULPIT.PULPIT = [SUBJECT].PULPIT
         inner join FACULTY on FACULTY.FACULTY = PULPIT.FACULTY
where PROGRESS.NOTE between 6 and 8
order by (case
              when (PROGRESS.NOTE = '6') then 1
              when (PROGRESS.NOTE = '7') then 2
              when (PROGRESS.NOTE = '8') then 3
    end);

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
			where �����.����������_ID between 10 and 11
				order by 
				(Case
				when (�����.����������_ID ='10') then 2
				when (�����.����������_ID = '11') then 1
				end
				)