-- Average time it took for each runner to arrive at Pizza Runner HQ
SELECT runner_id, AVG(EXTRACT(EPOCH FROM (pickup_time - order_time)) / 60) AS avg_time_minutes
FROM runner_orders
JOIN customer_orders ON runner_orders.order_id = customer_orders.order_id
GROUP BY runner_id;

-- What was the difference between the longest and shortest delivery times?
SELECT MAX(duration) - MIN(duration) AS delivery_time_diff
FROM runner_orders
WHERE cancellation IS NULL;
