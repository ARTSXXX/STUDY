use UNIVER

declare 
@count int = 100;

if (select max(AUDITORIUM.AUDITORIUM_CAPACITY) from AUDITORIUM) < @count
begin
print '���-�� ������ 100'
end
else 
print '������ 100'