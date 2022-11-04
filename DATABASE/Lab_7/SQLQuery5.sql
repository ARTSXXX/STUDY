use UNIVER

go 

create view [Дисциплины]
as select top 150 
SUBJECT.SUBJECT, 
SUBJECT.SUBJECT_NAME,
SUBJECT.PULPIT
from SUBJECT
go
select * from [Дисциплины] order by SUBJECT_NAME asc


----------------------------------------------

use ARTS_MyBase

go
create view [ID] 
as select top 2
Пользователь.Фамилия,
Пользователь.Покупатель_ID
from Пользователь
go
select * from [ID] order by Покупатель_ID desc;