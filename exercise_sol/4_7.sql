
select t2.product_id,o1.product_description
from	(
		select max(t2.sum_quantity) as max_sum
		from 	(
				select product_id, sum(ordered_quantity) as sum_quantity 
				from order_line
				group by product_id
				) as t2
		) as t3,product o1,
		(
			select product_id, sum(ordered_quantity) as sum_quantity 
			from order_line
			group by product_id
		) as t2
where t2.product_id = o1.product_id  and t2.sum_quantity = t3.max_sum