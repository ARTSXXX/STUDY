use UNIVER

declare
@Z float,
@t int = 5,
@x int = 3


if @t>@x 
set @Z = POWER(sin(@t),2)

else if @t <@x
set @Z = 4*(@t+@x)

else
set @Z = 1 - EXP(@x-2);

SELECT @Z;

------
declare 
@surname nvarchar(20) = 'Арцыхович',
@name nvarchar (20) = 'Павел',
@fathername nvarchar (20) = 'Андреевич',
@longname nvarchar(50),
@shortname nvarchar (20)

set @longname = @surname +' ' + @name + ' ' + @fathername;

set @shortname = 
@surname +  ' ' +SUBSTRING(@name,1,1) + '.' + SUBSTRING(@fathername , 1,1 ) + '.'

select @shortname



------

USE UNIVER;
SELECT STUDENT.NAME, STUDENT.BDAY, DATEDIFF(YEAR, STUDENT.BDAY, SYSDATETIME()) 
FROM STUDENT
WHERE MONTH(STUDENT.BDAY) = MONTH(SYSDATETIME()) + 1;

PRINT SYSDATETIME()
SELECT STUDENT.BDAY FROM STUDENT

use UNIVER
declare
@day int = 5;
select STUDENT.NAME , DATENAME(DW, PROGRESS.PDATE)
from STUDENT
inner join PROGRESS on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
inner join  GROUPS ON STUDENT.IDGROUP = GROUPS.IDGROUP
WHERE GROUPS.IDGROUP = @day AND  PROGRESS.SUBJECT = 'СУБД';
