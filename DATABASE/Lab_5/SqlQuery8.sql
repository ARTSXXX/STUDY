use UNIVER
SELECT NAME,BDAY FROM STUDENT where BDAY IN(SELECT BDAY from STUDENT
GROUP BY BDAY HAVING COUNT(BDAY) > 1 ) order by BDAY