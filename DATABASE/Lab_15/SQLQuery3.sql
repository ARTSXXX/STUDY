-----������� SUBJECT
use UNIVER

declare @h int = 0,
@x varchar(2000) = '<?xml version= "1.0" encoding = "windows-1251" ?>
<ROOT>
<subj SUBJECT = "���" SUBJECT_NAME = "������ �������������� ������������" PULPIT = "����"/>
<subj SUBJECT = "��" SUBJECT_NAME = "������ �����������" PULPIT = "����"/>
<subj SUBJECT = "���" SUBJECT_NAME = "���������������� ���������� ������" PULPIT = "����"/>
</ROOT>';
exec sp_xml_preparedocument @h output,@x;
insert SUBJECT select [SUBJECT],[SUBJECT_NAME],[PULPIT]
from openxml(@h,'/ROOT/subj',0)
with([SUBJECT] nvarchar(10),[SUBJECT_NAME] nvarchar(200),[PULPIT] nvarchar(10))

exec sp_xml_removedocument @h;

select * from SUBJECT

-----��������� ������� 

declare @h int = 0,
@x varchar(2000) = '<?xml version= "1.0" encoding = "windows-1251" ?>
<ROOT>
<subj SUBJECT = "���" SUBJECT_NAME = "������ �������������� ������������" PULPIT = "����"/>
<subj SUBJECT = "��" SUBJECT_NAME = "������ �����������" PULPIT = "����"/>
<subj SUBJECT = "���" SUBJECT_NAME = "���������������� ���������� ������" PULPIT = "����"/>
</ROOT>';
exec sp_xml_preparedocument @h output,@x;
select *
from openxml(@h,'/ROOT/subj',0)
with([SUBJECT] nvarchar(10),[SUBJECT_NAME] nvarchar(200),[PULPIT] nvarchar(10))
