use UNIVER

select AUDITORIUM_TYPE, AUDITORIUM_CAPACITY from AUDITORIUM 

where AUDITORIUM_CAPACITY =	 
(select top(1) AUDITORIUM_CAPACITY from AUDITORIUM 
where  AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE order by AUDITORIUM_CAPACITY desc 
)
order by AUDITORIUM_CAPACITY desc 


--------------

use ARTS_MyBase

select * from ������������ as P1

where P1.����������_ID = (select top (1) ����������_ID 
from ������������ as P2
where P1.����������_ID = P2.����������_ID order by P2.����������_ID desc)
order by ����������_ID desc



