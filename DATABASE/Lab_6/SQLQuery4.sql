use UNIVER

SELECT FACULTY.FACULTY[���������], GROUPS.PROFESSION[�������������],
round(avg(cast(PROGRESS.NOTE as float(4))),2)[������� ������]
FROM FACULTY inner join GROUPS on FACULTY.FACULTY = GROUPS.FACULTY
inner join STUDENT on GROUPS.IDGROUP = STUDENT.IDGROUP
inner join PROGRESS on STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT
GROUP BY FACULTY.FACULTY,GROUPS.PROFESSION


----4(2)
SELECT FACULTY.FACULTY[���������], GROUPS.PROFESSION[�������������],
round(avg(cast(PROGRESS.NOTE as float(4))),2)[������� ������]
FROM FACULTY inner join GROUPS on FACULTY.FACULTY = GROUPS.FACULTY 
inner join STUDENT on GROUPS.IDGROUP = STUDENT.IDGROUP 
inner join PROGRESS on STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT
where PROGRESS.SUBJECT in ('��','����')
GROUP BY FACULTY.FACULTY,GROUPS.PROFESSION