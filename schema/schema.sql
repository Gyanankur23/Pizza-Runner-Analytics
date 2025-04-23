-- Schema: pizza_runner

-- Table: runners
CREATE TABLE pizza_runner.runners (
    runner_id INTEGER PRIMARY KEY,
    registration_date DATE
);

-- Table: customer_orders
CREATE TABLE pizza_runner.customer_orders (
    order_id INTEGER,
    customer_id INTEGER,
    pizza_id INTEGER,
    exclusions TEXT,
    extras TEXT,
    order_time TIMESTAMP
);

-- Table: runner_orders
CREATE TABLE pizza_runner.runner_orders (
    order_id INTEGER,
    runner_id INTEGER,
    pickup_time TIMESTAMP,
    distance TEXT,
    duration TEXT,
    cancellation TEXT
);

-- Table: pizza_names
CREATE TABLE pizza_runner.pizza_names (
    pizza_id INTEGER PRIMARY KEY,
    pizza_name TEXT
);

-- Table: pizza_recipes
CREATE TABLE pizza_runner.pizza_recipes (
    pizza_id INTEGER,
    toppings TEXT
);

-- Table: pizza_toppings
CREATE TABLE pizza_runner.pizza_toppings (
    topping_id INTEGER PRIMARY KEY,
    topping_name TEXT
);
