use UNIVER

declare @a int = 5;

select @a;

select @@ROWCOUNT 
select @@VERSION
select @@ERROR
select @@SERVERNAME
select @@TRANCOUNT -- ������� ����������� ����������
select @@FETCH_STATUS -- �������� ����� ���.������
select @@NESTLEVEL -- ������� ����������� ������� ���������

select @@SPID --���������� ��������� ������������� ��������, ����������� �������� ��-������ �����������