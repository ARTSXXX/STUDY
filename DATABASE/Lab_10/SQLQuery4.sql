DECLARE @tc nvarchar(20),@cp int ;
DECLARE AUDITOR cursor local dynamic scroll
for select row_number() over (order by AUDITORIUM_NAME),AUDITORIUM.AUDITORIUM_CAPACITY FROM AUDITORIUM
OPEN AUDITOR;
FETCH LAST from AUDITOR into @tc,@cp;
print '��������� ������: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
FETCH first from AUDITOR into @tc,@cp;
print '������ ������: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
FETCH absolute 4 from AUDITOR into @tc,@cp;
FETCH NEXT from AUDITOR into @tc,@cp;
print '��������� ������: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
FETCH absolute 4 from AUDITOR into @tc,@cp;
print '4 ������ �� ������: ' + cast(@cp as nvarchar(20))+ '   ' + rtrim (@tc);
CLOSE AUDITOR;

use ARTS_MyBase
declare @tcp nvarchar(20), @iis int;
declare ID cursor local dynamic scroll for select row_number() over (order by ����������_ID),����������_ID FROM ������������ 
open ID 
FETCH LAST from ID into @tcp, @iis;
print '��������� ������' + cast (@iis as nvarchar(20));
close ID