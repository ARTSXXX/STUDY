use UNIVER

go 

create view [����������]
as select top 150 
SUBJECT.SUBJECT, 
SUBJECT.SUBJECT_NAME,
SUBJECT.PULPIT
from SUBJECT
go
select * from [����������] order by SUBJECT_NAME asc


----------------------------------------------

use ARTS_MyBase

go
create view [ID] 
as select top 2
������������.�������,
������������.����������_ID
from ������������
go
select * from [ID] order by ����������_ID desc;