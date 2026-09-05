# Write your MySQL query statement below
SELECT  ROUND(SUM(IF(min_order_date=min_customer_pref_delivery_date,1,0)*100) / count(min_order_date),2) AS immediate_percentage 
FROM ( SELECT delivery_id,
              customer_id,
              min(order_date) AS min_order_date,
              min(customer_pref_delivery_date ) AS min_customer_pref_delivery_date
              FROM delivery
              GROUP BY customer_id) new_table;