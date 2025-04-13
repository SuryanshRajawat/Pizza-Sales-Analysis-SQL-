-- Q5) Determine the top 3 most ordered pizza types based on revenue.

SELECT pizza_types.name,
round(sum(order_details.quantity * pizzas.price),0) as revenue
FROM pizza_types join pizzas
ON pizza_types.pizza_type_id=pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id=pizzas.pizza_id
GROUP BY pizza_types.name ORDER BY revenue desc limit 3;

-- So here the top 3 pizzas on the basis of revenue.