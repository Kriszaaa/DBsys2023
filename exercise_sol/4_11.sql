select c1.customer_id,c1.customer_name
from ordert o1 right join customer c1
on o1.customer_id = c1.customer_id
where o1.order_id is NULL
order by c1.customer_id  asc