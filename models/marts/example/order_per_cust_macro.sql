SELECT a.amount, a.customer_id ,dense_rank() over(order by co.amount desc) as rank_ from 
{{ order_by_cust_macros() }} as a