/*
=============================================================
Create Database and Tables (MySQL Version)
=============================================================
WARNING:
    This will DROP the 'DataWarehouseAnalytics' database if it exists.
    All data will be permanently deleted.
*/

-- Drop and recreate database
DROP DATABASE IF EXISTS DataWarehouseAnalytics;

CREATE DATABASE DataWarehouseAnalytics;

USE DataWarehouseAnalytics;

-- ============================================
-- Create Tables (using 'gold_' prefix instead of schema)
-- ============================================

CREATE TABLE gold_dim_customers (
    customer_key INT,
    customer_id INT,
    customer_number VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    marital_status VARCHAR(50),
    gender VARCHAR(50),
    birthdate DATE,
    create_date DATE
);

CREATE TABLE gold_dim_products (
    product_key INT,
    product_id INT,
    product_number VARCHAR(50),
    product_name VARCHAR(50),
    category_id VARCHAR(50),
    category VARCHAR(50),
    subcategory VARCHAR(50),
    maintenance VARCHAR(50),
    cost INT,
    product_line VARCHAR(50),
    start_date DATE
);

CREATE TABLE gold_fact_sales (
    order_number VARCHAR(50),
    product_key INT,
    customer_key INT,
    order_date DATE,
    shipping_date DATE,
    due_date DATE,
    sales_amount INT,
    quantity TINYINT,
    price INT
);

-- ============================================
-- Load Data from CSV files
-- ============================================

-- Enable this if needed (requires FILE privilege)
-- SET GLOBAL local_infile = 1;

TRUNCATE TABLE gold_dim_customers;

LOAD DATA INFILE '/path/to/gold.dim_customers.csv'
INTO TABLE gold_dim_customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

TRUNCATE TABLE gold_dim_products;

LOAD DATA INFILE '/path/to/gold.dim_products.csv'
INTO TABLE gold_dim_products
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

TRUNCATE TABLE gold_fact_sales;

LOAD DATA INFILE '/path/to/gold.fact_sales.csv'
INTO TABLE gold_fact_sales
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
