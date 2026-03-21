/*
===============================================================================
Database Exploration (MySQL Version)
===============================================================================
Purpose:
    - Explore database structure (tables and schemas)
    - Inspect columns and metadata for specific tables

Tables Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

-- Retrieve a list of all tables in the current database
SELECT 
    TABLE_SCHEMA AS database_name,
    TABLE_NAME,
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = DATABASE();

-- Retrieve all columns for a specific table (gold_dim_customers)
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME = 'gold_dim_customers';
