---B---
USE UNIVER;
GO
BEGIN TRANSACTION
SELECT @@SPID
INSERT SUBJECT VALUES ('TEST', 'TEST', 'ИСИТ');
--------------------- T1 --------------------
--------------------- T2 --------------------
ROLLBACK TRAN;
--COMMIT TRAN;



USE UNIVER
GO

--- B ---
BEGIN TRANSACTION
-------------------------- T1 --------------------
UPDATE SUBJECT SET SUBJECT_NAME = 'ИЗМЕНЕН1О'  WHERE SUBJECT = 'БД';
COMMIT TRAN;

rollback
--Многократно беру данные 
-------------------------- T2 --------------------ROLLBACK TRAN;


USE UNIVER
GO

--- B ---
BEGIN TRANSACTION
-------------------------- T1 --------------------
--DELETE FROM SUBJECT WHERE SUBJECT = 'TEST';
INSERT SUBJECT VALUES ('TEST', 'TEST', 'ИСИТ');

COMMIT TRAN;
rollback

USE UNIVER
GO
--- B ---
BEGIN TRANSACTION
-------------------------- T1 --------------------
--DELETE FROM SUBJECT WHERE SUBJECT_NAME = 'TEST'
INSERT SUBJECT VALUES ('TEST', 'TEST', 'ИСИТ');
UPDATE SUBJECT SET SUBJECT = 'TEST' WHERE PULPIT = 'TEST'
COMMIT TRAN;
-------------------- T2 --------------------
--ПРоблема дубликата ключей
rollback