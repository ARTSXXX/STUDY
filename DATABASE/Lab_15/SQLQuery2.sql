USE UNIVER

SELECT AUDITORIUM.AUDITORIUM[������������_���������],AUDITORIUM.AUDITORIUM_TYPE[������������_����_���������],AUDITORIUM.AUDITORIUM_CAPACITY[�����������_���������]
From AUDITORIUM inner join AUDITORIUM_TYPE on AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE
WHERE AUDITORIUM_TYPENAME like '%����������%'
order by AUDITORIUM for xml auto,
root ('������_����������_���������'),elements;