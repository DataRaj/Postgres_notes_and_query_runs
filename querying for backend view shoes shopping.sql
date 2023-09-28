select customer_name , email,phone, address, count(price) no_of_orders, sum(price) price, sum(disc_price) discounted_price  
from back_end_order_detail 
group by customer_name , email,phone , address
-- where customer_name  = 'Lauren Anderson'
order by price desc