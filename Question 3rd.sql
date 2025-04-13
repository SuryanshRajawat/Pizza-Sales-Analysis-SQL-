-- Q3) Identify the highest-priced pizza.

SELECT * FROM pizza.pizzas;

SELECT pizza_types.name, pizzas.price
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC LIMIT 1;

-- So We can say that The Greek Pizza has the highest price among all pizzas that is 35.95.