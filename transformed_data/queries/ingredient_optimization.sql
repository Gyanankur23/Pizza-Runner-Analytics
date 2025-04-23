-- What are the standard ingredients for each pizza?
SELECT pizza_id, STRING_AGG(topping_name, ', ') AS standard_ingredients
FROM pizza_recipes
JOIN pizza_toppings ON pizza_recipes.topping_id = pizza_toppings.topping_id
GROUP BY pizza_id;

-- What was the most commonly added extra?
SELECT extras, COUNT(extras) AS extra_count
FROM customer_orders
WHERE extras IS NOT NULL
GROUP BY extras
ORDER BY extra_count DESC
LIMIT 1;
