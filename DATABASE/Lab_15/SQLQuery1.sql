use UNIVER


select TEACHER.PULPIT[�������],TEACHER.TEACHER_NAME[�������������]
from TEACHER where TEACHER.PULPIT = '����'
for xml PATH('PULPIT'),root('������_��������������_�������_����'),elements;

use ARTS_MyBase
select ������������.����������_ID, ������������.�������
from ������������ 
where ������������.����������_ID > 11
for xml PATH ('������������'),
root ('������_�������������'),
elements;


use UNIVER

select AUDITORIUM_TYPE from AUDITORIUM
where AUDITORIUM.AUDITORIUM_CAPACITY = 90
for xml PATH ('AUDITORUIN_TYPE'),
root ('���������'),
elements;