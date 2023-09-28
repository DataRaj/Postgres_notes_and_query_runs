create view back_end_order_detail as
select concat(first_name, ' ' , last_name) as customer_name, C.email, C.phone ,
concat(C.street , ', ',C.city,', ',C.state, '-',C.zip) as address,
concat(P.name, ' (',P.supplier ,') ') as product,
I.color , I.price , X.discount,discounted_price(I.price , X.discount)as disc_price,
O.time_order_taken

from sales_item X
join item I
on I.id = X.item_id
join sales_order O 
on O.id = X.sales_order_id
join customer C
on C.id = O.cust_id
join product P
on P.id = I.product_id

