create view order_details as
select sales_order.purchase_order_number, customer.company, (sales_item.quantity * item.price) as total, concat(sales_person.first_name, ' ' , sales_person.last_name) as Salesperson
from sales_order
join sales_item
on sales_item.sales_order_id = sales_order.id
join item 
on item.id = sales_item.item_id
join customer
on sales_order.cust_id = customer.id
join product 
on product.id = item.product_id
join sales_person
on sales_person.id = sales_order.sales_person_id
order by purchase_order_number;