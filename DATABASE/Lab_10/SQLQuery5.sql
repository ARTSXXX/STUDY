use UNIVER
DECLARE @tn nvarchar(20), @tc1 nvarchar(20), @tk int;
DECLARE AUDITOR cursor local dynamic
for select AUDITORIUM.AUDITORIUM,AUDITORIUM.AUDITORIUM_TYPE,AUDITORIUM.AUDITORIUM_CAPACITY FROM AUDITORIUM for update;
OPEN AUDITOR;
fetch AUDITOR into @tn,@tc1,@tk;
DELETE AUDITORIUM where CURRENT OF AUDITOR;
fetch AUDITOR into @tn,@tc1,@tk;
UPDATE AUDITORIUM set AUDITORIUM_CAPACITY = AUDITORIUM_CAPACITY + 5 where CURRENT OF AUDITOR;
CLOSE AUDITOR;

USE ARTS_MyBase
declare @TCP nvarchar(30);
declare Delete_t cursor local dynamic 
for select Фамилия from Пользователь for update;
open Delete_t
fetch Delete_t into @TCP
update Пользователь set Фамилия = Фамилия + 'x' where current of Delete_t
close Delete_t