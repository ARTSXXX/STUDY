USE UNIVER

SELECT AUDITORIUM.AUDITORIUM[Наименование_аудитории],AUDITORIUM.AUDITORIUM_TYPE[Наименование_типа_аудитории],AUDITORIUM.AUDITORIUM_CAPACITY[Вместимость_аудитории]
From AUDITORIUM inner join AUDITORIUM_TYPE on AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE
WHERE AUDITORIUM_TYPENAME like '%Лекционная%'
order by AUDITORIUM for xml auto,
root ('Список_лекционных_аудиторий'),elements;