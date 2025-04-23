# **🍕 Pizza Runner Analytics**

Welcome to the **Pizza Runner Analytics** project!  
This is part of the **8 Week SQL Challenge** by [Data With Danny](https://8weeksqlchallenge.com/), focused on real-world SQL case studies to build your data analysis and SQL skills.

---

## **📁 Project Structure**

Pizza-Runner-Analytics ├── data/ │   ├── data_cleaning.sql            # SQL scripts for cleaning raw data │   ├── transformed_data/ │   │   └── transformed_data.sql     # Cleaned and structured SQL data ├── queries/ │   ├── pizza_metrics.sql            # Pizza orders and sales insights │   ├── runner_customer_experience.sql # Delivery, runners and timing metrics │   ├── ingredient_optimisation.sql  # Extras, exclusions, and ingredients │   ├── pricing_ratings.sql          # Pricing, rating and revenue analytics │   └── bonus_questions.sql          # Data modeling and scenario challenges ├── schema/ │   └── schema.sql                   # Original schema and table creation ├── README.md                        # Project documentation (you're here!) └── .gitignore                       # Git exclusions

---

## **🚀 Getting Started**

### **Clone the repository**
```bash
git clone https://github.com/yourusername/Pizza-Runner-Analytics.git
cd Pizza-Runner-Analytics


---

⚙️ Setup Environment

Use DB Fiddle or any SQL IDE of your choice (e.g., DBeaver, PgAdmin, SQL Server).

1. Run the schema

-- Inside schema/schema.sql
CREATE TABLE pizza_runner.runners (...);
-- (all table definitions here)

2. Load raw and cleaned data

-- Inside data/data_cleaning.sql
-- Cleans nulls, whitespace, and incorrect data types

-- Inside data/transformed_data/transformed_data.sql
-- Inserts cleaned data into tables


---

📊 SQL Query Modules

1. Pizza Metrics

File: queries/pizza_metrics.sql

-- How many pizzas were ordered?
SELECT COUNT(*) AS total_pizzas_ordered FROM customer_orders;

2. Runner & Customer Experience

File: queries/runner_customer_experience.sql

-- Avg time to pickup per runner
SELECT runner_id, AVG(duration) 
FROM runner_orders 
WHERE cancellation IS NULL 
GROUP BY runner_id;

3. Ingredient Optimisation

File: queries/ingredient_optimisation.sql

-- Most common extras added
SELECT extras, COUNT(*) 
FROM customer_orders 
WHERE extras IS NOT NULL 
GROUP BY extras 
ORDER BY COUNT(*) DESC;

4. Pricing & Ratings

File: queries/pricing_ratings.sql

-- Total revenue generated
SELECT 
  SUM(CASE WHEN pizza_id = 1 THEN 12 ELSE 10 END) AS total_revenue
FROM customer_orders;

5. Bonus Challenges

File: queries/bonus_questions.sql

-- Adding a new pizza type
INSERT INTO pizza_names (pizza_id, pizza_name) 
VALUES (3, 'Supreme');


---

🛠️ Transformed Data Usage

The transformed data files in data/transformed_data/ provide a cleaned version of the original data. These include:

Cleaned NULL and string inconsistencies

Split multiple values like 1, 2, 3 into arrays or normalized entries

Ready-to-query formats for analysis


Usage:

-- Load the cleaned data into the tables after running schema.sql
\i data/transformed_data/transformed_data.sql


---

⚠️ Error Handling / Exceptions

Queries are written in standard PostgreSQL 13 syntax

Null-safe handling is used for filters like:


WHERE cancellation IS NULL

Ensure correct data types (e.g., convert distance to float) before calculations



---

📝 License & Credits

MIT License © 2025
Created for the 8 Week SQL Challenge by Danny Ma
Analytics Project & Repository by Gyanankur Baruah


---

✨ Contributions Welcome!

Found a bug? Want to improve queries?
Feel free to fork the repo and submit a pull request (PR)!


---

🔗 Let's Connect

LinkedIn: Gyanankur Baruah

GitHub: @Gyanankur23



---

⭐ If you found this project helpful, give it a star!