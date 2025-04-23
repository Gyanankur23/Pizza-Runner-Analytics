-- Calculate total money Pizza Runner has made (without delivery fees)
SELECT SUM(CASE
             WHEN pizza_id = 1 THEN 12
             WHEN pizza_id = 2 THEN 10
             ELSE 0
           END) AS total_revenue
FROM customer_orders;

-- Add cheese extra cost ($1)
SELECT SUM(CASE
             WHEN pizza_id = 1 THEN 12
             WHEN pizza_id = 2 THEN 10
             ELSE 0
           END + 
           CASE
             WHEN POSITION('Cheese' IN extras) > 0 THEN 1
             ELSE 0
           END) AS total_revenue_with_extras
FROM customer_orders;
