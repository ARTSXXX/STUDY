use UNIVER;

select AUDITORIUM.AUDITORIUM, AUDITORIUM_TYPE.AUDITORIUM_TYPE
from AUDITORIUM
         cross join AUDITORIUM_TYPE
where AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE;


use ARTS_MyBase

select ������������.�������, ������������.����������_ID, ������������.�����, ������������.�������
from ������������ 
cross join �����
where ������������.����������_ID = �����.����������_ID
