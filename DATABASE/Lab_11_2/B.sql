---B---
USE UNIVER;
GO
BEGIN TRANSACTION
SELECT @@SPID
INSERT SUBJECT VALUES ('TEST', 'TEST', '����');
--------------------- T1 --------------------
--------------------- T2 --------------------
ROLLBACK TRAN;
--COMMIT TRAN;



USE UNIVER
GO

--- B ---
BEGIN TRANSACTION
-------------------------- T1 --------------------
UPDATE SUBJECT SET SUBJECT_NAME = '�������1�'  WHERE SUBJECT = '��';
COMMIT TRAN;

rollback
--����������� ���� ������ 
-------------------------- T2 --------------------ROLLBACK TRAN;


USE UNIVER
GO

--- B ---
BEGIN TRANSACTION
-------------------------- T1 --------------------
--DELETE FROM SUBJECT WHERE SUBJECT = 'TEST';
INSERT SUBJECT VALUES ('TEST', 'TEST', '����');

COMMIT TRAN;
rollback

USE UNIVER
GO
--- B ---
BEGIN TRANSACTION
-------------------------- T1 --------------------
--DELETE FROM SUBJECT WHERE SUBJECT_NAME = 'TEST'
INSERT SUBJECT VALUES ('TEST', 'TEST', '����');
UPDATE SUBJECT SET SUBJECT = 'TEST' WHERE PULPIT = 'TEST'
COMMIT TRAN;
-------------------- T2 --------------------
--�������� ��������� ������
rollback