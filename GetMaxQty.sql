delimiter //
create procedure GetMaxQuantity()
begin
select
max(Quantity) as 'Max Quantity in Orders'
from orders 
;

end 
delimiter 
