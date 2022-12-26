use ARTS_MyBase

go

create function func (
@p varchar (20)

)
returns varchar(20)
as begin
declare @rc int = (select count(*) from Пользователь inner join Заказ on Пользователь.Покупатель_ID = Заказ.Покупатель_ID where Пользователь.Фамилия = 'Трубач')

return @rc;
end

drop function func
select Фамилия, dbo.func(Фамилия) from Пользователь