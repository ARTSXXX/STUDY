use UNIVER
select AUDITORIUM.AUDITORIUM, AUDITORIUM_TYPE.AUDITORIUM_TYPE
from AUDITORIUM_TYPE,
     AUDITORIUM
where AUDITORIUM_TYPE.AUDITORIUM_TYPE = AUDITORIUM.AUDITORIUM_TYPE;

select T2.AUDITORIUM, T1.AUDITORIUM_TYPENAME
from AUDITORIUM_TYPE As T1,
     AUDITORIUM As T2
where T1.AUDITORIUM_TYPE = T2.AUDITORIUM_TYPE
  And T1.AUDITORIUM_TYPENAME Like '���������%';

  
use ARTS_MyBase
select ������������.�������, ������������.�����, �����.����_������, ������������.����������_ID
from ������������, �����
where ������������.����������_ID = �����.����������_ID

use ARTS_MyBase
select �.�������, �.�����, �.����_������, �.����������_ID
from ������������ as �, ����� as �
where �.����������_ID = �.����������_ID



