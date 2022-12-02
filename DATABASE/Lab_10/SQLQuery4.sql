DECLARE @tc nvarchar(20),@cp int ;
DECLARE AUDITOR cursor local dynamic scroll
for select row_number() over (order by AUDITORIUM_NAME),AUDITORIUM.AUDITORIUM_CAPACITY FROM AUDITORIUM
OPEN AUDITOR;
FETCH LAST from AUDITOR into @tc,@cp;
print 'последняя строка: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
FETCH first from AUDITOR into @tc,@cp;
print 'первая строка: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
FETCH absolute 4 from AUDITOR into @tc,@cp;
FETCH NEXT from AUDITOR into @tc,@cp;
print 'Следующая строка: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
FETCH absolute 4 from AUDITOR into @tc,@cp;
print '4 строка от начала: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
CLOSE AUDITOR;

use ARTS_MyBase
declare @tcp nvarchar(20), @iis int;
declare ID cursor local dynamic scroll for select row_number() over (order by Покупатель_ID),Покупатель_ID FROM Пользователь 
open ID 
FETCH LAST from ID into @tcp, @iis;
print 'последняя строка' + cast (@iis as nvarchar(20));
close ID