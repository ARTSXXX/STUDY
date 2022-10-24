use UNIVER

Select *
from (select case
                 when (PROGRESS.NOTE in (6, 7)) then '6-7'
                 when (PROGRESS.NOTE in (8, 9)) then '8-9'
                 when (PROGRESS.NOTE in (4, 5)) then '4-5'
                 when (PROGRESS.NOTE = 10) then '10'
                 end  [оценки],
             count(*) [количество]
      from PROGRESS
      group by case
                   when (PROGRESS.NOTE in (6, 7)) then '6-7'
                   when (PROGRESS.NOTE in (8, 9)) then '8-9'
                   when (PROGRESS.NOTE in (4, 5)) then '4-5'
                   when (PROGRESS.NOTE = 10) then '10'
                   end
     ) as a
order by case a.оценки
               when '6-7' then 3
               when '8-9' then 2
               when '4-5' then 4
               when '10' then 1
               end



-------------

use ARTS_MyBase

select * from (select case 

when Пользователь.Покупатель_ID in (9,10) then '9 or 10'
when Пользователь.Покупатель_ID in (10,11) then '10 or 11'
end [Оценки],
count (*) [Кол-во]
from Пользователь

group by case
when Пользователь.Покупатель_ID in (9,10) then '9 or 10'
when Пользователь.Покупатель_ID in (10,11) then '10 or 11'
end 

) as Select_A

order by case Select_A.Оценки
when '9 or 10' then 2


when '10 or 11' then 1
end