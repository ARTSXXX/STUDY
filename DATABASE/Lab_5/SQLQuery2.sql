use UNIVER;
/*	2. ���������� ������ ������ 1 ����� �������, ����� ��� �� ���������
                            ��� ��-����� � ����������� INNER JOIN ������ FROM �������� �������. 
                            ��� ���� ��-������� ���������� ������� ������ ���� ����������� ���������� 
                            ��������� �����-��. */
select PULPIT.PULPIT_NAME from PULPIT
inner join FACULTY on  PULPIT.FACULTY = FACULTY.FACULTY
  and FACULTY.FACULTY in (select PROFESSION.FACULTY
                        from PROFESSION
                         where PROFESSION_NAME LIKE ('%����������%')
                            or PROFESSION_NAME LIKE ('%����������%'))



--------------------------------------------------------------
use ARTS_MyBase 
select ������������.�������, ������������.�����, ������������.����������_ID from ������������
inner join �����
on ������������.����������_ID = �����.����������_ID
and ������������.����������_ID in (select ��������.�����_������
									from ��������		
									where ��������.�����_������ = 11
									or ��������.�����_������ = 12)

