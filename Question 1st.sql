-- Q1) Retrieve the total number of orders placed.

SELECT * FROM pizza.orders;

SELECT count(order_id) as total_count FROM pizza.orders;

-- Here we can see that their are total 21350 no. of orders placed