-- Q5) List the top 5 most ordered pizza types
-- along with their quantities

USE pizza;
SELECT pizza_types.name, sum(order_details.quantity) AS Sum_Of_Order
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id=pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id=pizzas.pizza_id
GROUP BY pizza_types.name
ORDER BY Sum_Of_Order DESC LIMIT 5;
