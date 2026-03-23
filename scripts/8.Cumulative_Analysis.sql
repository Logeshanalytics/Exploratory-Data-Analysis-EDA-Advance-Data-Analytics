/*
===============================================================================
Cumulative Analysis (MySQL Version)
===============================================================================
*/

SELECT
    order_date,
    total_sales,
    SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,
    AVG(avg_price) OVER (ORDER BY order_date) AS moving_average_price
FROM
(
    SELECT 
        DATE_FORMAT(order_date, '%Y-01-01') AS order_date,  -- equivalent to DATETRUNC(year, ...)
        SUM(sales_amount) AS total_sales,
        AVG(price) AS avg_price
    FROM gold_fact_sales
    WHERE order_date IS NOT NULL
    GROUP BY DATE_FORMAT(order_date, '%Y-01-01')
) t
ORDER BY order_date;
