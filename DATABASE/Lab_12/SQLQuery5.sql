use UNIVER
go

CREATE PROCEDURE SUBJECT_REPORT @p char(10) as declare @rd int = 0;
begin try 
	declare @sb char(20), @t char(300) = '';
	declare SbOnPl cursor for 
	select SUBJECT.SUBJECT from SUBJECT where SUBJECT.PULPIT = @p;
	if not exists(Select SUBJECT.SUBJECT from SUBJECT where SUBJECT.PULPIT = @p)
		raiserror('������',11,1);
		else
			open SbOnPl
			fetch SbOnPl into @sb;
			print '��������� ����������: ';
			while @@FETCH_STATUS = 0
			begin
			set @t = rtrim(@sb) + ',' + @t;
			set @rd += 1;
			fetch SbOnPl into @sb;
			end;
			print @t;
			close SbOnPl
			return @rd;
		end try 
		begin  catch
			print '������ � ����������'
			if ERROR_PROCEDURE() is null
				print '��� ���������: ' + error_procedure();
			return @rd;
			end catch;


			declare @rd int;
			exec @rd = SUBJECT_REPORT @p = '����';
			print '���-�� ���������: ' + cast(@rd as nvarchar(5))

			Drop procedure SUBJECT_REPORT
