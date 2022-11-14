use UNIVER

declare @a int = 5;

select @a;

select @@ROWCOUNT 
select @@VERSION
select @@ERROR
select @@SERVERNAME
select @@TRANCOUNT -- Уровень вложенности транзакции
select @@FETCH_STATUS -- Проверка строк рез.набора
select @@NESTLEVEL -- Уровень вложенности текущей процедуры

select @@SPID --возвращает системный идентификатор процесса, назначенный сервером те-кущему подключению