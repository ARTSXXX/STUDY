USE UNIVER;
GO
ALTER VIEW [���������� ������] with schemabinding
AS SELECT FACULTY.FACULTY_NAME [���������],
COUNT(PULPIT.FACULTY) [����������]
FROM dbo.FACULTY join dbo.PULPIT
ON FACULTY.FACULTY = PULPIT.FACULTY
GROUP BY FACULTY.FACULTY_NAME

SELECT * FROM [���������� ������]

---------------------------------

use ARTS_MyBase;
go
alter view [Schema] with schemabinding
as select ������������.����������_ID, ������������.�������
	
from dbo.������������
where ������������.����������_ID > 11

go

select *  from [Schema] 

