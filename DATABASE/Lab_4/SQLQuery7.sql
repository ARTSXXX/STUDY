use UNIVER;
select PULPIT.PULPIT_NAME [�������], isnull(TEACHER.TEACHER_NAME, '***') [�������������]
from TEACHER
         left outer join PULPIT
                         on PULPIT.PULPIT = TEACHER.PULPIT;

--7(2)

select PULPIT.PULPIT_NAME as '�������', isnull(TEACHER.TEACHER_NAME, '***') as '�������������'
from TEACHER
         right outer join PULPIT
                          on PULPIT.PULPIT = TEACHER.PULPIT;
use ARTS_MyBase
select ������������.����������_ID [������������_ID], ISNULL (������������.����������_ID, '3') [�����_������������]
from ������������
right outer join �����
	on ������������.����������_ID = �����.�����_������