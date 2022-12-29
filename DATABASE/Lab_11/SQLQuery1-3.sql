/* 1. Разработать сценарий, де-монстрирующий работу в ре-жиме неявной транзакции.
Проанализировать пример, приведенный справа, в котором создается таблица Х, и создать сценарий 
для другой таблицы.
*/
USE UNIVER
GO
SET NOCOUNT ON
	IF EXISTS (SELECT * FROM  SYS.OBJECTS        -- ТАБЛИЦА X ЕСТЬ?
	            WHERE OBJECT_ID= OBJECT_ID(N'DBO.M') )	            
	DROP TABLE M;    
	
	DECLARE @C INT, @FLAG CHAR = 'C';           -- COMMIT ИЛИ ROLLBACK?
	SET IMPLICIT_TRANSACTIONS  ON   -- ВКЛЮЧ. РЕЖИМ НЕЯВНОЙ ТРАНЗАКЦИИ
	CREATE TABLE M(K INT );                         -- НАЧАЛО ТРАНЗАКЦИИ 
		INSERT M VALUES (1),(2),(3);
		SET @C = (SELECT COUNT(*) FROM M);
		PRINT 'КОЛИЧЕСТВО СТРОК В ТАБЛИЦЕ M: ' + CAST( @C AS VARCHAR(2));
		IF @FLAG = 'C'  COMMIT;                   -- ЗАВЕРШЕНИЕ ТРАНЗАКЦИИ: ФИКСАЦИЯ 
	          ELSE   ROLLBACK;                                 -- ЗАВЕРШЕНИЕ ТРАНЗАКЦИИ: ОТКАТ  
      SET IMPLICIT_TRANSACTIONS  OFF   -- ВЫКЛЮЧ. РЕЖИМ НЕЯВНОЙ ТРАНЗАКЦИИ
	
	IF  EXISTS (SELECT * FROM  SYS.OBJECTS       -- ТАБЛИЦА X ЕСТЬ?
	            WHERE OBJECT_ID= OBJECT_ID(N'DBO.M') )
	PRINT 'ТАБЛИЦА M ЕСТЬ';  
      ELSE PRINT 'ТАБЛИЦЫ M НЕТ'




/*2. Разработать сценарий, демонстрирующий свойство атомарности явной транзакции на примере базы данных X_UNIVER. 
В блоке CATCH предусмотреть выдачу соответствующих сообщений об ошибках. 
Опробовать работу сценария при использовании различных операторов модификации таблиц.
*/

USE UNIVER;
GO
BEGIN TRY
	BEGIN TRAN                 -- НАЧАЛО  ЯВНОЙ ТРАНЗАКЦИИ
		--INSERT FACULTY VALUES ('ИТ', 'ФАКУЛЬТЕТ ДРУГИХ НАУК');
	    INSERT FACULTY VALUES ('ПИМ', 'ФАКУЛЬТЕТ PRINT-ТЕХНОЛОГИЙ');
	COMMIT TRAN;               -- ФИКСАЦИЯ ТРАНЗАКЦИИ
END TRY

BEGIN CATCH
	PRINT 'ОШИБКА: '+ CASE
		WHEN ERROR_NUMBER() = 2627 AND PATINDEX('%FACULTY_PK%', ERROR_MESSAGE()) > 0 THEN 'ДУБЛИРОВАНИЕ '	
		ELSE 'НЕИЗВЕСТНАЯ ОШИБКА: '+ CAST(ERROR_NUMBER() AS  VARCHAR(5))+ ERROR_MESSAGE()
	END;
	IF @@TRANCOUNT > 0 ROLLBACK TRAN; -- УР.ВЛОЖЕННОСТИ ТР.>0,  ТРАНЗ НЕ ЗАВЕРШЕНА
END CATCH;

DELETE FACULTY WHERE FACULTY = 'ДФ';
DELETE FACULTY WHERE FACULTY = 'ПИМ';

SELECT * FROM FACULTY;
/*3. Разработать сценарий, демонстрирующий применение оператора SAVE TRAN на примере базы данных X_UNIVER. 
В блоке CATCH предусмотреть выдачу соответствующих сообщений об ошибках. 
Опробовать работу сценария при использовании различных контрольных точек и различных операторов модификации таблиц.
*/
USE UNIVER
GO
DECLARE @POINT VARCHAR(32);

BEGIN TRY
	BEGIN TRAN
		SET @POINT = 'P1';
		SAVE TRAN @POINT;  -- КОНТРОЛЬНАЯ ТОЧКА P1
		INSERT STUDENT(IDGROUP, NAME, BDAY, INFO, FOTO) VALUES
		                      (20,'АНДРЕЙ', '1997-08-02', NULL, NULL),
							  (20,'ДИМА', '1997-08-06', NULL, NULL),
							  (20,'ДИМА', '1997-08-01', NULL, NULL),
							  (20,'ПАША', '1997-08-03', NULL, NULL);
		SET @POINT = 'P2';
		SAVE TRAN @POINT; -- КОНТРОЛЬНАЯ ТОЧКА P2
		INSERT STUDENT(IDGROUP, NAME, BDAY, INFO, FOTO) VALUES
							  (21, 'ОСОБЕННЫЙ СТУДЕНТ', '1997-08-02', NULL, NULL);
	COMMIT TRAN;
END TRY

BEGIN CATCH
	PRINT 'ОШИБКА: '+ CASE
		WHEN ERROR_NUMBER() = 2627 AND PATINDEX('%STUDENT_PK%', ERROR_MESSAGE()) > 0 THEN 'ДУБЛИРОВАНИЕ СТУДЕНТА'
		ELSE 'НЕИЗВЕСТНАЯ ОШИБКА: '+ CAST(ERROR_NUMBER() AS  VARCHAR(5)) + ERROR_MESSAGE()
	END;
    IF @@TRANCOUNT > 0 -- ЕСЛИ ТРАНЗАКЦИЯ НЕ ЗАВЕРШЕНА
	BEGIN
	   PRINT 'КОНТРОЛЬНАЯ ТОЧКА: '+ @POINT;
	   ROLLBACK TRAN @POINT; -- ОТКАТ К ПОСЛЕДНЕЙ КОНТР.ТОЧКЕ
	   COMMIT TRAN; -- ФИКСАЦИЯ ИЗМЕНЕНИЙ, ВЫПОЛН ДО КОНТР.ТОЧКИ
	END;
END CATCH;

SELECT * FROM STUDENT WHERE IDGROUP=20;
DELETE STUDENT WHERE IDGROUP=20 AND IDGROUP = 21



