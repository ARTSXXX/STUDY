use UNIVER

SELECT SUBJECT.SUBJECT,PROGRESS.NOTE,

(SELECT COUNT(PROGRESS.IDSTUDENT) from PROGRESS

where SUBJECT.SUBJECT = PROGRESS.SUBJECT)[���-�� ���������]

FROM SUBJECT,PROGRESS

GROUP BY SUBJECT.SUBJECT,PROGRESS.NOTE

HAVING PROGRESS.NOTE = 8 or PROGRESS.NOTE = 9


use ARTS_MyBase

select ������������.����������_ID, �����.����������_ID,

(select count(������������.����������_ID) from ������������
where ������������.����������_ID > 10)



from ������������, �����
where ������������.����������_ID = �����.����������_ID

group by ������������.����������_ID, �����.����������_ID

HAVING ������������.����������_ID > 11 


