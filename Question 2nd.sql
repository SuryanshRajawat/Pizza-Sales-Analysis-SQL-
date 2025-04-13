-- Q2) Calculate the total revenue generated from pizza sales.
USE pizza;

SELECT
round(sum(order_details.quantity * pizzas.price),2) AS Total_Revenue

FROM order_details JOIN pizzas
ON order_details.pizza_id = order_details.pizza_id

-- Here we can see that total revenue is 78242644.2.