USE UNIVER;
BEGIN TRY
UPDATE PROGRESS SET NOTE = '������ 9' WHERE NOTE = 9
END TRY
BEGIN CATCH
PRINT ERROR_NUMBER() -- ��� ��������� ������
PRINT ERROR_MESSAGE() -- ��������� ���������
PRINT ERROR_LINE() -- ����� ����
PRINT ERROR_PROCEDURE() -- ��� ��������� 
PRINT ERROR_SEVERITY() -- ������� ������
PRINT ERROR_STATE()  -- ����� ������
END CATCH