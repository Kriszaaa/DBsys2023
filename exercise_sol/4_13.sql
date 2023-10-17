select sum(t.price) as total_payment
from	(select *,p1.standard_price*o2.ordered_quantity as price
		from product p1 join 
		(
			select * from order_line
			where order_id = 3
		)  o2
		on p1.product_id = o2.product_id
		)as t
