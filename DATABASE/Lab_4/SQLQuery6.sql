use UNIVER;

select PULPIT.PULPIT_NAME [�������], isnull(TEACHER.TEACHER_NAME, '***') [PREPOD]
from PULPIT
         left outer join TEACHER
                         on PULPIT.PULPIT = TEACHER.PULPIT;

use ARTS_MyBase
select ������������.����������_ID [������������_ID], ISNULL (�����.�����_������, '3') [������]
from ������������
left outer join �����
	on ������������.����������_ID = �����.�����_������