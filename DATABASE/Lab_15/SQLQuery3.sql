-----Таблица SUBJECT
use UNIVER

declare @h int = 0,
@x varchar(2000) = '<?xml version= "1.0" encoding = "windows-1251" ?>
<ROOT>
<subj SUBJECT = "ОИБ" SUBJECT_NAME = "Основы информационной безопасности" PULPIT = "ИСиТ"/>
<subj SUBJECT = "ТВ" SUBJECT_NAME = "Теория вероятности" PULPIT = "ИСиТ"/>
<subj SUBJECT = "ПВС" SUBJECT_NAME = "Программирование встроенных систем" PULPIT = "ИСиТ"/>
</ROOT>';
exec sp_xml_preparedocument @h output,@x;
insert SUBJECT select [SUBJECT],[SUBJECT_NAME],[PULPIT]
from openxml(@h,'/ROOT/subj',0)
with([SUBJECT] nvarchar(10),[SUBJECT_NAME] nvarchar(200),[PULPIT] nvarchar(10))

exec sp_xml_removedocument @h;

select * from SUBJECT

-----Отдельная таблица 

declare @h int = 0,
@x varchar(2000) = '<?xml version= "1.0" encoding = "windows-1251" ?>
<ROOT>
<subj SUBJECT = "ОИБ" SUBJECT_NAME = "Основы информационной безопасности" PULPIT = "ИСиТ"/>
<subj SUBJECT = "ТВ" SUBJECT_NAME = "Теория вероятности" PULPIT = "ИСиТ"/>
<subj SUBJECT = "ПВС" SUBJECT_NAME = "Программирование встроенных систем" PULPIT = "ИСиТ"/>
</ROOT>';
exec sp_xml_preparedocument @h output,@x;
select *
from openxml(@h,'/ROOT/subj',0)
with([SUBJECT] nvarchar(10),[SUBJECT_NAME] nvarchar(200),[PULPIT] nvarchar(10))
