/* 1. ����������� ��������, ��-������������� ������ � ��-���� ������� ����������.
���������������� ������, ����������� ������, � ������� ��������� ������� �, � ������� �������� 
��� ������ �������.
*/
USE UNIVER
GO
SET NOCOUNT ON
	IF EXISTS (SELECT * FROM  SYS.OBJECTS        -- ������� X ����?
	            WHERE OBJECT_ID= OBJECT_ID(N'DBO.M') )	            
	DROP TABLE M;    
	
	DECLARE @C INT, @FLAG CHAR = 'C';           -- COMMIT ��� ROLLBACK?
	SET IMPLICIT_TRANSACTIONS  ON   -- �����. ����� ������� ����������
	CREATE TABLE M(K INT );                         -- ������ ���������� 
		INSERT M VALUES (1),(2),(3);
		SET @C = (SELECT COUNT(*) FROM M);
		PRINT '���������� ����� � ������� M: ' + CAST( @C AS VARCHAR(2));
		IF @FLAG = 'C'  COMMIT;                   -- ���������� ����������: �������� 
	          ELSE   ROLLBACK;                                 -- ���������� ����������: �����  
      SET IMPLICIT_TRANSACTIONS  OFF   -- ������. ����� ������� ����������
	
	IF  EXISTS (SELECT * FROM  SYS.OBJECTS       -- ������� X ����?
	            WHERE OBJECT_ID= OBJECT_ID(N'DBO.M') )
	PRINT '������� M ����';  
      ELSE PRINT '������� M ���'




/*2. ����������� ��������, ��������������� �������� ����������� ����� ���������� �� ������� ���� ������ X_UNIVER. 
� ����� CATCH ������������� ������ ��������������� ��������� �� �������. 
���������� ������ �������� ��� ������������� ��������� ���������� ����������� ������.
*/

USE UNIVER;
GO
BEGIN TRY
	BEGIN TRAN                 -- ������  ����� ����������
		--INSERT FACULTY VALUES ('��', '��������� ������ ����');
	    INSERT FACULTY VALUES ('���', '��������� PRINT-����������');
	COMMIT TRAN;               -- �������� ����������
END TRY

BEGIN CATCH
	PRINT '������: '+ CASE
		WHEN ERROR_NUMBER() = 2627 AND PATINDEX('%FACULTY_PK%', ERROR_MESSAGE()) > 0 THEN '������������ '	
		ELSE '����������� ������: '+ CAST(ERROR_NUMBER() AS  VARCHAR(5))+ ERROR_MESSAGE()
	END;
	IF @@TRANCOUNT > 0 ROLLBACK TRAN; -- ��.����������� ��.>0,  ����� �� ���������
END CATCH;

DELETE FACULTY WHERE FACULTY = '��';
DELETE FACULTY WHERE FACULTY = '���';

SELECT * FROM FACULTY;
/*3. ����������� ��������, ��������������� ���������� ��������� SAVE TRAN �� ������� ���� ������ X_UNIVER. 
� ����� CATCH ������������� ������ ��������������� ��������� �� �������. 
���������� ������ �������� ��� ������������� ��������� ����������� ����� � ��������� ���������� ����������� ������.
*/
USE UNIVER
GO
DECLARE @POINT VARCHAR(32);

BEGIN TRY
	BEGIN TRAN
		SET @POINT = 'P1';
		SAVE TRAN @POINT;  -- ����������� ����� P1
		INSERT STUDENT(IDGROUP, NAME, BDAY, INFO, FOTO) VALUES
		                      (20,'������', '1997-08-02', NULL, NULL),
							  (20,'����', '1997-08-06', NULL, NULL),
							  (20,'����', '1997-08-01', NULL, NULL),
							  (20,'����', '1997-08-03', NULL, NULL);
		SET @POINT = 'P2';
		SAVE TRAN @POINT; -- ����������� ����� P2
		INSERT STUDENT(IDGROUP, NAME, BDAY, INFO, FOTO) VALUES
							  (21, '��������� �������', '1997-08-02', NULL, NULL);
	COMMIT TRAN;
END TRY

BEGIN CATCH
	PRINT '������: '+ CASE
		WHEN ERROR_NUMBER() = 2627 AND PATINDEX('%STUDENT_PK%', ERROR_MESSAGE()) > 0 THEN '������������ ��������'
		ELSE '����������� ������: '+ CAST(ERROR_NUMBER() AS  VARCHAR(5)) + ERROR_MESSAGE()
	END;
    IF @@TRANCOUNT > 0 -- ���� ���������� �� ���������
	BEGIN
	   PRINT '����������� �����: '+ @POINT;
	   ROLLBACK TRAN @POINT; -- ����� � ��������� �����.�����
	   COMMIT TRAN; -- �������� ���������, ������ �� �����.�����
	END;
END CATCH;

SELECT * FROM STUDENT WHERE IDGROUP=20;
DELETE STUDENT WHERE IDGROUP=20 AND IDGROUP = 21



