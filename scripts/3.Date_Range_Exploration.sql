/*
===============================================================================
Date Range Exploration (MySQL Version)
===============================================================================
Purpose:
    - Determine temporal boundaries of key data
    - Understand historical data range

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF(), TIMESTAMPDIFF()
===============================================================================
*/

-- Determine the first and last order date and total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    TIMESTAMPDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold_fact_sales;

-- Find the oldest and youngest customer based on birthdate
SELECT
    MIN(birthdate) AS oldest_birthdate,
    TIMESTAMPDIFF(YEAR, MIN(birthdate), CURDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    TIMESTAMPDIFF(YEAR, MAX(birthdate), CURDATE()) AS youngest_age
FROM gold_dim_customers;
