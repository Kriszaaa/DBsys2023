select p1.product_id,p1.product_description
from	(
		select max(product_count) as max_count
		from (
			select product_id , count(product_id) as product_count
			from order_line
			group by product_id
			) as p2
		) as p3, 
		product p1,
		(
		select product_id , count(product_id) as product_count
		from order_line
		group by product_id
		) as p2
where p2.product_count = p3.max_count and p1.product_id = p2.product_id
