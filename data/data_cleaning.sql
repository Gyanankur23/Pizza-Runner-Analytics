-- Cleaning exclusions column by removing unwanted characters
UPDATE customer_orders
SET exclusions = NULL
WHERE exclusions = 'null' OR exclusions = '';

-- Convert distance from 'km' string to numeric
UPDATE runner_orders
SET distance = CAST(REPLACE(distance, 'km', '') AS DECIMAL)
WHERE distance LIKE '%km%';
