use UNIVER;
SELECT * FROM TEACHER


SELECT TEACHER_NAME, PULPIT FROM TEACHER
WHERE PULPIT IN ('����')

DECLARE @name nvarchar(30), @pulp nvarchar(10)
DECLARE NAMEA CURSOR LOCAL DYNAMIC
for SELECT TEACHER_NAME, PULPIT.PULPIT FROM TEACHER
INNER JOIN PULPIT ON PULPIT.PULPIT=TEACHER.PULPIT
WHERE PULPIT.PULPIT IN ('����') AND TEACHER_NAME LIKE '�%'

OPEN NAMEA
FETCH NAMEA into @name, @pulp
PRINT cast(@name as nvarchar(30))+' '+@pulp
DELETE TEACHER WHERE CURRENT OF NAMEA
CLOSE NAMEA


SELECT TEACHER_NAME, PULPIT FROM TEACHER
WHERE PULPIT IN ('����');