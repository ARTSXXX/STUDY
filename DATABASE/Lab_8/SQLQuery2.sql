/*2. Разработать скрипт, в котором определяется общая вместимость ауди-торий. 
Когда общая вместимость превышает 200, то вывести количество аудиторий, среднюю вместимость ауди-торий,
количество аудиторий, вмести-мость которых меньше средней, и про-цент таких аудиторий. Когда общая вместимость
аудиторий меньше 200, то вывести сообщение о размере общей вместимости.*/

use UNIVER

declare 
@Capacity int = (select sum(AUDITORIUM_CAPACITY) from AUDITORIUM),
@Total_Cap int,
@TOTAL_MENSHE_AVG int,
@Avg_Cap int,
@Procent float


If @Capacity > 200
begin
set @Total_Cap = (select count(*) from AUDITORIUM);
set @Avg_Cap = (select avg(AUDITORIUM_CAPACITY) from AUDITORIUM);
set @TOTAL_MENSHE_AVG = (select COUNT(*) from AUDITORIUM
where AUDITORIUM_CAPACITY < @Avg_Cap)
SET @PROCENT = @TOTAL_MENSHE_AVG * 100 / @Total_Cap;
SELECT @CAPACITY [ВМЕСТИМОСТЬ],
@Total_Cap [ВСЕГО АУДИТОРИЙ],
@Avg_Cap [СРЕДНЯЯ ВМЕСТИМОСТЬ],
@TOTAL_MENSHE_AVG [АУДИТОРИЙ НИЖЕ СТРЕДНЕГО КОЛ-ВО],
@Procent [ПРОЦЕНТ]
END




