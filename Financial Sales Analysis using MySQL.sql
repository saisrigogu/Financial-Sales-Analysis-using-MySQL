/* ====================================================================
   Financial Sales Analysis – MySQL Project
   This script covers exploratory and analytical queries on a
   financial transactions dataset, focusing on revenue trends,
   product performance, regional breakdowns, and payment behaviour.
   ==================================================================== */

-- Create database (run once)
CREATE DATABASE IF NOT EXISTS Sql_Projects;
USE Sql_Projects;

-- Ensure the CSV is imported as: financial_data
-- Columns: transaction_id, sale_date, product_name, region,
--          quantity, unit_price, total_amount, payment_method

-- Preview structure
DESCRIBE financial_data;

-- Sample records
SELECT *
FROM financial_data
LIMIT 10;

-- Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM financial_data;

-- Total revenue
SELECT SUM(total_amount) AS total_revenue
FROM financial_data;

-- Total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM financial_data;

-- Average order value
SELECT AVG(total_amount) AS average_order_value
FROM financial_data;

-- Product-level performance
SELECT 
    product_name,
    SUM(quantity) AS total_quantity_sold,
    SUM(total_amount) AS total_revenue,
    AVG(unit_price) AS avg_unit_price
FROM financial_data
GROUP BY product_name
ORDER BY total_revenue DESC;

-- Top 5 revenue-generating products
SELECT 
    product_name,
    SUM(total_amount) AS total_revenue
FROM financial_data
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Region-wise revenue analysis
SELECT 
    region,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS avg_order_value
FROM financial_data
GROUP BY region
ORDER BY total_revenue DESC;

-- Monthly revenue trend
SELECT 
    DATE_FORMAT(STR_TO_DATE(sale_date, '%Y-%m-%d'), '%Y-%m') AS month,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM financial_data
GROUP BY month
ORDER BY month;

-- Payment method distribution
SELECT 
    payment_method,
    COUNT(*) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM financial_data
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- Transaction value segmentation
SELECT 
    transaction_id,
    sale_date,
    product_name,
    total_amount,
    CASE 
        WHEN total_amount >= 5000 THEN 'High Value'
        WHEN total_amount BETWEEN 2000 AND 4999 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS value_segment
FROM financial_data
ORDER BY total_amount DESC;
