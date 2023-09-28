select C.id ,concat(C.first_name , ' ' ,C.last_name) as name, I.size , I.color, (S.quantity * I.price) as total
from item I 
join customer C 
on C.id = I.id
join sales_Item S
on C.id = S.id
order by C.id