USE UNIVER;
go
CREATE FUNCTION FFACPUL(
@Facult VARCHAR(10),
@PUL VARCHAR(10)) 
RETURNS TABLE
    AS RETURN
    SELECT FACULTY.FACULTY, PULPIT.PULPIT
    FROM FACULTY LEFT OUTER JOIN PULPIT
    ON FACULTY.FACULTY = PULPIT.FACULTY
WHERE FACULTY.FACULTY=ISNULL(@Facult, FACULTY.FACULTY) AND PULPIT.PULPIT=ISNULL(@PUL, PULPIT.PULPIT);
GO

drop function FFACPUL

SELECT * FROM DBO.FFACPUL(NULL,NULL);

SELECT * FROM DBO.FFACPUL('���',NULL);

SELECT * FROM DBO.FFACPUL(NULL,'����');

SELECT * FROM DBO.FFACPUL('����','�����');

SELECT * FROM DBO.FFACPUL('NO','NO');