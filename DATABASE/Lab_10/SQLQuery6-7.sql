use UNIVER
select PROGRESS.NOTE,STUDENT.NAME,GROUPS.IDGROUP FROM GROUPS inner join STUDENT 
on GROUPS.IDGROUP = STUDENT.IDGROUP inner join PROGRESS on STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT where (PROGRESS.NOTE < 7)

DECLARE @nt int,@st nvarchar(20), @gr int;
DECLARE PROGR1 cursor local dynamic
for select PROGRESS.NOTE,STUDENT.NAME,GROUPS.IDGROUP FROM GROUPS inner join STUDENT 
on GROUPS.IDGROUP = STUDENT.IDGROUP inner join PROGRESS on STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT where (PROGRESS.NOTE < 7)  FOR UPDATE;
OPEN PROGR1;
fetch PROGR1 into @nt,@st,@gr ;
--DELETE PROGRESS where CURRENT OF PROGR1;
close PROGR1



select PROGRESS.NOTE,STUDENT.NAME,GROUPS.IDGROUP,STUDENT.IDSTUDENT FROM GROUPS inner join STUDENT 
on GROUPS.IDGROUP = STUDENT.IDGROUP inner join PROGRESS on STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT where (PROGRESS.IDSTUDENT in (1002))


DECLARE @nt1 int,@st1 nvarchar(20), @gr1 int;
DECLARE PROGR1 cursor local dynamic
for select PROGRESS.NOTE,STUDENT.NAME,GROUPS.IDGROUP FROM GROUPS inner join STUDENT 
on GROUPS.IDGROUP = STUDENT.IDGROUP inner join PROGRESS on STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT where (PROGRESS.IDSTUDENT  = (1002))  FOR UPDATE;
OPEN PROGR1;
fetch PROGR1 into @nt1,@st1,@gr1 ;
UPDATE PROGRESS set NOTE = NOTE + 1 where CURRENT OF PROGR1;
close PROGR1


use ARTS_MyBase
declare @tc2 nvarchar(20), @tc3 nvarchar(30)
declare Update_T cursor local dynamic for select Фамилия, Адрес from Пользователь
open Update_T 
fetch Update_T into @tc2, @tc3
UPDATE Пользователь set Фамилия = Фамилия + 'x'  where current of Update_T
close Update_T