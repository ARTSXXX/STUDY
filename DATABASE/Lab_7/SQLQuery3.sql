use UNIVER;
 
go

create view ��������� (AUDITORIUM, AUDITORIUM_TYPE)

as select AUDITORIUM as [kod],
AUDITORIUM_TYPE as [Type]
from AUDITORIUM

WHERE AUDITORIUM.AUDITORIUM_TYPE LIKE '��%'

go

insert ��������� values (324, '��')
delete from AUDITORIUM where AUDITORIUM.AUDITORIUM = '��' and AUDITORIUM.AUDITORIUM_TYPE = '��'

select * from ���������


--------------------------------------------------

use ARTS_MyBase

GO
create view Users(����������_ID, �������)
as select ������������.����������_ID [ID],
������������.�������
from ������������

where ������������.����������_ID > 11

go 


select * from Users


