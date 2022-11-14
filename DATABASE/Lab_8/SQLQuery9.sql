USE UNIVER;
BEGIN TRY
UPDATE PROGRESS SET NOTE = 'Оценка 9' WHERE NOTE = 9
END TRY
BEGIN CATCH
PRINT ERROR_NUMBER() -- Код последней ошибки
PRINT ERROR_MESSAGE() -- Сообщение последней
PRINT ERROR_LINE() -- Линия кода
PRINT ERROR_PROCEDURE() -- Имя процедуры 
PRINT ERROR_SEVERITY() -- Уровень ошибки
PRINT ERROR_STATE()  -- Метка ошибки
END CATCH