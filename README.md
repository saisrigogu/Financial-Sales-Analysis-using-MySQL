**Financial Sales Analysis – MySQL Project**

**Project Summary**
This project involves analyzing a financial sales dataset using MySQL to derive meaningful business insights. The SQL script explores the dataset, calculates key performance metrics, and evaluates 
product performance, regional trends, payment behavior, and customer value segmentation.The purpose is to demonstrate practical SQL skills applied to real-world sales data.

**Project Objective**
The primary objectives of this project are:
To understand the structure and distribution of the sales dataset
To compute essential KPIs such as total revenue, quantity sold, and average order value
To identify top-performing and low-performing products
To analyze sales patterns across different regions
To evaluate month-wise revenue trends
To study customer payment preferences
To classify transactions into value-based segments (High, Medium, Low)
These objectives align with typical business requirements in sales and financial analysis.

**Dataset Description**
The dataset consists of transaction-level sales information. Fields include:
transaction_id
sale_date
product_name
region
quantity
unit_price
total_amount
payment_method
The dataset is imported into MySQL as a table named financial_data.

**Tools and Technologies Used**
MySQL
MySQL Workbench
SQL (aggregation, grouping, date functions, CASE expressions)

**Project Workflow**
Create and select the database (Sql_Projects).
Import the CSV file as a table named financial_data.
Preview table structure and sample records.
Execute SQL queries for:
KPI calculations
Product-level aggregation
Regional analysis
Monthly trend extraction
Payment method analysis
Transaction segmentation

**Key Analysis Performed**
**Data Exploration**
Table structure inspection
First 10 rows preview
**Business Metrics**
Total transactions
Total revenue
Total quantity sold
Average order value
**Product Performance**
Revenue by product
Quantity sold by product
Top 5 products by revenue
**Regional Analysis**
Orders by region
Revenue by region
Region-wise AOV
**Time-Based Analysis**
Month-wise total orders
Month-wise total revenue
**Payment Behavior**
Orders by payment method
Revenue generated per payment type
**Value Segmentation**
Categorizing transactions as High, Medium, or Low value using a CASE statement

**Insights Summary**
High-value products generate a significant share of revenue.
Certain regions contribute more consistently to total sales.
Monthly trends can reveal seasonality or declining periods.
Payment method preferences can guide business strategy.
Transaction segmentation helps identify high-value customers or orders.

**Conclusion**

This project demonstrates the use of SQL for analyzing financial sales data in a structured and business-oriented way. Through aggregation, grouping, date extraction, and conditional logic, 
valuable insights were derived that support decision-making in product management, regional strategy, and revenue optimization.








