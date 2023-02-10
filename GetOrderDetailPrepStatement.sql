prepare GetOrderDetail from 
'select o.OrderID, Quantity, Cost
from orders as o
join orderdelivery as od on o.OrderID = od.OrderID
join menu as m on od.MenuID = m.MenuID
join menuitem as mi on m.MenuItemsID = mi.MenuItemsID
where o.OrderID = ?';

