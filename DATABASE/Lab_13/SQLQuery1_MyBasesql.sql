use ARTS_MyBase

go

create function func (
@p varchar (20)

)
returns varchar(20)
as begin
declare @rc int = (select count(*) from ������������ inner join ����� on ������������.����������_ID = �����.����������_ID where ������������.������� = '������')

return @rc;
end

drop function func
select �������, dbo.func(�������) from ������������