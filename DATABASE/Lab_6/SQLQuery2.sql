use UNIVER

select AUDITORIUM_TYPE.AUDITORIUM_TYPENAME,
max (AUDITORIUM.AUDITORIUM_CAPACITY),
min (AUDITORIUM.AUDITORIUM_CAPACITY),
avg (AUDITORIUM.AUDITORIUM_CAPACITY),
sum (AUDITORIUM.AUDITORIUM_CAPACITY),
count (AUDITORIUM.AUDITORIUM_CAPACITY)
from AUDITORIUM_TYPE inner join AUDITORIUM 
on AUDITORIUM_TYPE.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE

Group BY AUDITORIUM_TYPENAME


---------------------------------------------


use ARTS_MyBase
select ������������.����������_ID,
max (�����.�����_������) [M���],
min (�����.�����_������),
avg (�����.�����_������),
sum (�����.�����_������),
count (�����.�����_������)
from ������������ inner join ����� 
on ������������.����������_ID = �����.����������_ID

Group BY ������������.����������_ID


