/*2. ����������� ������, � ������� ������������ ����� ����������� ����-�����. 
����� ����� ����������� ��������� 200, �� ������� ���������� ���������, ������� ����������� ����-�����,
���������� ���������, ������-����� ������� ������ �������, � ���-���� ����� ���������. ����� ����� �����������
��������� ������ 200, �� ������� ��������� � ������� ����� �����������.*/

use UNIVER

declare 
@Capacity int = (select sum(AUDITORIUM_CAPACITY) from AUDITORIUM),
@Total_Cap int,
@TOTAL_MENSHE_AVG int,
@Avg_Cap int,
@Procent float


If @Capacity > 200
begin
set @Total_Cap = (select count(*) from AUDITORIUM);
set @Avg_Cap = (select avg(AUDITORIUM_CAPACITY) from AUDITORIUM);
set @TOTAL_MENSHE_AVG = (select COUNT(*) from AUDITORIUM
where AUDITORIUM_CAPACITY < @Avg_Cap)
SET @PROCENT = @TOTAL_MENSHE_AVG * 100 / @Total_Cap;
SELECT @CAPACITY [�����������],
@Total_Cap [����� ���������],
@Avg_Cap [������� �����������],
@TOTAL_MENSHE_AVG [��������� ���� ��������� ���-��],
@Procent [�������]
END




