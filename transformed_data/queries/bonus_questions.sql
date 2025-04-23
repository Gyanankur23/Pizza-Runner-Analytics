-- Add a new pizza (Supreme) to the menu
INSERT INTO pizza_names (pizza_id, pizza_name) 
VALUES (3, 'Supreme');

-- Insert toppings for the new Supreme pizza
INSERT INTO pizza_recipes (pizza_id, topping_id) 
VALUES (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (3, 10), (3, 11), (3, 12);
