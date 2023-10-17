delete from order_line o2
where	o2.order_id in (
				select distinct o2.order_id
				from ordert o1 join order_line o2 
				on o1.customer_id = 10001 and o1.order_id = o2.order_id
				)
delete from ordert where customer_id = '10001'
delete from customer where customer_id = '10001'
