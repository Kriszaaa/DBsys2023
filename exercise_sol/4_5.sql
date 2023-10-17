select c1.customer_id,c1.customer_name,t2.number_of_orders
from 	(
		select o1.customer_id, count(o1.customer_id) as number_of_orders
		from ordert o1
		group by o1.customer_id
		) as t2 , customer c1
where t2.customer_id = c1.customer_id
order by t2.number_of_orders  desc