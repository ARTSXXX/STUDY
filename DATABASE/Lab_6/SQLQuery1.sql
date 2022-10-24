use UNIVER

select min(AUDITORIUM.AUDITORIUM_CAPACITY),
	   max(AUDITORIUM.AUDITORIUM_CAPACITY),
	   count (*),
	   sum(AUDITORIUM_CAPACITY)

	   from AUDITORIUM

--------------------------------------------
use ARTS_MyBase

select min(Пользователь.Покупатель_ID),
	   max(Пользователь.Покупатель_ID),
	   count (*),
	   sum(Пользователь.Покупатель_ID)

	   from Пользователь