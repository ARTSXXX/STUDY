USE UNIVER;
GO
CREATE VIEW [���������� ������]
AS SELECT
FACULTY.FACULTY_NAME [���������],
COUNT(PULPIT.PULPIT)[���������� ������]
FROM FACULTY 
JOIN PULPIT ON FACULTY.FACULTY=PULPIT.FACULTY
GROUP BY FACULTY_NAME

SELECT * FROM [���������� ������];

----------------------------------------------------------

USE ARTS_MyBase;
GO
CREATE VIEW [�����_������] 
AS SELECT 
��������.�����_������ [����� ������],
COUNT(��������.�����_������) [���-��]
FROM  ��������
GROUP BY �����_������

SELECT * FROM [�����_������]


DROP VIEW [�����_������]
