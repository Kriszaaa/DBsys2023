select *
from (	select postal_code, count(postal_code) as customer_numbers
		from customer
		group by postal_code
		order by customer_numbers desc
	 ) as q1
where customer_numbers >1