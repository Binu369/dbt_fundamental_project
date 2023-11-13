SELECT a.amount, a.customer_id ,dense_rank() over(order by a.amount desc) as rank_ from (
{{order_by_cust_macro() }} ) as a