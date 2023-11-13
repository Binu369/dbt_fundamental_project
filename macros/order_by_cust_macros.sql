{{% macro order_by_cust_macros() %}} 
select d.customer_id , f.order_id, 
f.amount from `dbt_dataset.dim_customers` as d join 
`dbt_dataset.fct_orders`  as f on f.customer_id = d.customer_id 
{% endmacro %}

