use UNIVER
declare linelocal cursor local for select SUBJECT from SUBJECT
declare @first nvarchar(10), @all nvarchar (200)= '';

open linelocal
fetch linelocal into @first
print ' ' + @first
go

-----------------------------------------------------------------------

DECLARE globaly CURSOR GLOBAL FOR SELECT SUBJECT FROM SUBJECT
DECLARE @SUB1 NVARCHAR(20);
OPEN globaly;
FETCH globaly INTO @SUB1;
PRINT RTRIM(@SUB1);
GO
DECLARE @SUB2 NVARCHAR(20);
FETCH globaly INTO @SUB2;
PRINT RTRIM(@SUB2);
GO
DECLARE @SUB3 NVARCHAR(30);
FETCH globaly INTO @SUB3;
PRINT RTRIM(@SUB3);
CLOSE globaly;

DEALLOCATE GLOB; 

------------------------------
use ARTS_MyBase
declare global_cur cursor GLOBAL for select Фамилия from Пользователь 
declare @first nvarchar (20)
open global_cur
fetch global_cur into @first
print @first
go

