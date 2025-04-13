-- Q4) Group the orders by date and 
-- calculate the average number of pizzas ordered per day.

 SELECT round(avg(sum_quant),0) as average_pizza from
(SELECT orders.date, sum(order_details.quantity) as sum_quant
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id 
GROUP BY orders.date) AS order_quantity

-- An average of pizzas orderwise