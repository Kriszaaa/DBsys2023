select distinct c1.customer_id,c1.customer_name
from customer c1 join ordert o1
on c1.customer_id = o1.customer_id
where o1.order_date between '2020-01-10 00:00:00' and '2020-01-15 23:59:59'