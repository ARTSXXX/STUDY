use UNIVER

select FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT, AVG(PROGRESS.NOTE) [�������]
from FACULTY, GROUPS,PROGRESS
where FACULTY.FACULTY = '���'
group by ROLLUP ( FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT)

------------
--- �������� ROLLUP ��������� ����������� ������ � �������������� �����:
--- CUBE ��������� ����������� ������ ��� ������ ���������� �����.
use UNIVER 

select FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT, AVG (PROGRESS.NOTE) [AVG]
from FACULTY, GROUPS,PROGRESS
where FACULTY.FACULTY = '���'
group by cube ( FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT)


use ARTS_MyBase
select ������������.����������_ID, �����.����_������
from ������������, �����
where �����.����_������ > '2010-01-01'
group by rollup (������������.����������_ID, �����.����_������)
