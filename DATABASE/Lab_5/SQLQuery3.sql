use UNIVER

select distinct PULPIT.PULPIT_NAME from PULPIT
	inner join FACULTY 
               on PULPIT.FACULTY = FACULTY.FACULTY
			   
			 inner join PROFESSION 
			   on   FACULTY.FACULTY  = PROFESSION.FACULTY 
					where PROFESSION_NAME like '%���������%' 
					
					 
                         
--------------------------------------------------
use ARTS_MyBase

select ������������.�������, ������������.�����, ������������.����������_ID
from ������������
inner join �����
on �����.����������_ID = ������������.����������_ID
inner join 
��������
on ������������.����������_ID = ��������.�����_������