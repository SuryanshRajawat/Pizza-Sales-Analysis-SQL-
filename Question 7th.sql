-- Q2) Determine the distribution of orders by hour of the day.

SELECT hour(time) AS hour, count(order_id) AS order_count FROM orders
GROUP BY hour(time);

-- So we can se the total order count in hour disributionb 11p-]1-uj111