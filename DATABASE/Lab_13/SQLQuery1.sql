use UNIVER
go
create function COUNT_STUDENTS (
@faculty varchar(20)
)
returns int

as begin
declare @rc int
set @rc = (select count(FACULTY.FACULTY)
from FACULTY
inner join GROUPS on GROUPS.FACULTY = FACULTY.FACULTY
inner join STUDENT on STUDENT.IDGROUP = GROUPS.IDGROUP
where FACULTY.FACULTY = @faculty)

return @rc;
end

--DROP FUNCTION COUNT_STUDENTS;

select dbo.COUNT_STUDENTS('ХТиТ')

------Alter------
use UNIVER
go
alter function COUNT_STUDENTS (
@faculty varchar(20),
@prof nvarchar(20)
)
returns int

as begin
declare @rc int
set @rc = (select count(STUDENT.IDSTUDENT)
from FACULTY
inner join GROUPS on GROUPS.FACULTY = FACULTY.FACULTY
inner join STUDENT on STUDENT.IDGROUP = GROUPS.IDGROUP
where FACULTY.FACULTY = @faculty and GROUPS.PROFESSION = @prof)
return @rc;
end

select dbo.COUNT_STUDENTS('ХТиТ', 'Конструирование и производство из-делий из композиционных материалов')







use ARTS_MyBase
GO

create function Count_user (

		@p varchar (5)
)
returns int 
as 
begin
declare @i int;
select @i = count(Покупатель_ID) 
from Пользователь
return @i
END

select dbo.Count_user(3)


