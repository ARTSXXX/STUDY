use UNIVER

declare 
@count int = 100;

if (select max(AUDITORIUM.AUDITORIUM_CAPACITY) from AUDITORIUM) < @count
begin
print 'Кол-во меньше 100'
end
else 
print 'Больще 100'