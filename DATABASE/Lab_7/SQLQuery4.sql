use UNIVER;
 
go

create view ����������_��������� (AUDITORIUM, AUDITORIUM_TYPE)

as select AUDITORIUM as [kod],
AUDITORIUM_TYPE as [Type]
from AUDITORIUM

WHERE AUDITORIUM.AUDITORIUM_TYPE LIKE '��%' WITH CHECK OPTION;

go

insert ����������_��������� values (399, '��')
delete from AUDITORIUM where AUDITORIUM.AUDITORIUM = '��' and AUDITORIUM.AUDITORIUM_TYPE = '��'

select * from ����������_���������



---------------------------

use ARTS_MyBase

GO
Alter view Users(����������_ID, �������)
as select ������������.����������_ID [ID],
������������.�������
from ������������

where ������������.����������_ID > 11 WITH CHECK OPTION

go 

insert Users values (9, '�����')

select * from Users

