CREATE TABLE pizza_sales (
pizza_id INT,
order_id INT,
pizza_name_id VARCHAR(50),
quantity INT,
order_date DATE,
order_time TIME,
unit_price FLOAT,
total_price FLOAT,
pizza_size VARCHAR(10),
pizza_category VARCHAR(50),
pizza_ingredients VARCHAR(500),
pizza_name VARCHAR(100)
)

SELECT * FROM pizza_sales 

"""
KPI
1. Total Revenue
2. Avg Order Value
3. Total Pizza Sold 
4. Total Orders 
5. Avg Pizza Per Orders 
"""
-- 1. Total Revenue

SELECT ROUND(SUM(total_price):: NUMERIC,2) AS total_revenue
FROM pizza_sales

-- 2. Avg Order Value

SELECT ROUND(AVG(total_price):: NUMERIC ,2) AS avg_order_value
FROM pizza_sales

-- 3. Total Pizza Sold

SELECT SUM(quantity) AS total_pizza_sold
FROM pizza_sales 

-- 4. Total Orders 

SELECT COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales 

-- 5. Avg Pizza Per Orders

SELECT ROUND(AVG(quantity):: NUMERIC ,2) AS avg_pizza
FROM pizza_sales 

"""
PROBLEM STATEMENT

 1. Hourly Trend for Total Orders
 2. Weekly Trend for Total Orders
 3. Percentage of Sales by Pizza Category
 4. Percentage of Sales by Pizza Size
 5. Total Pizzas Sold by Pizza Category
 6. Top 5 Best Sellers by Revenue, Total Quantity and Total Orders
 7. Bottom 5 Best Sellers by Revenue, Total Quantity and Total Orders
 
"""

 -- 1. Hourly Trend for Total Orders
 
SELECT  EXTRACT(HOUR FROM order_time) AS order_hour,
	COUNT(order_id) AS total_order
FROM pizza_sales
GROUP BY order_hour
ORDER BY order_hour

 -- 2. Weekly Trend for Total Orders

SELECT  EXTRACT(WEEK FROM order_date) AS order_week,
		COUNT(order_id) AS total_order
FROM pizza_sales 
GROUP BY order_week 
ORDER BY order_week

-- 3. Percentage of Sales by Pizza Category

SELECT  pizza_category, ROUND(SUM(total_price):: NUMERIC ,2) AS total_sales,
		ROUND((SUM(total_price) * 100.0 /( SELECT SUM(total_price)
									FROM pizza_sales )):: NUMERIC, 2) AS sales_percentage
FROM pizza_sales 
GROUP BY pizza_category 
ORDER BY total_sales DESC

-- 4. Percentage of Sales by Pizza Size

SELECT  pizza_size, ROUND(SUM(total_price):: NUMERIC ,2) AS total_sales,
		ROUND((SUM(total_price) * 100 / ( SELECT SUM(total_price)
									FROM pizza_sales )):: NUMERIC ,2) AS sales_percentage
FROM pizza_sales 
GROUP BY pizza_size 
ORDER BY total_sales DESC

 -- 5. Total Pizzas Sold by Pizza Category

 SELECT pizza_category, SUM(quantity) AS total_pizza_sold
 FROM pizza_sales 
 GROUP BY pizza_category 
 ORDER BY total_pizza_sold DESC

 -- 6. Top 5 Best Sellers by Revenue, Total Quantity and Total Orders
 SELECT * FROM pizza_sales

-- Revenue
 SELECT pizza_name, SUM(total_price) AS revenue
 FROM pizza_sales 
 GROUP BY pizza_name
 ORDER BY revenue DESC
 LIMIT 5

 -- Total_Quantity
 SELECT pizza_name, SUM(quantity) AS total_quantity
 FROM pizza_sales 
 GROUP BY pizza_name
 ORDER BY total_quantity DESC
 LIMIT 5

-- Total_order
 SELECT pizza_name, COUNT(order_id) AS total_order
 FROM pizza_sales 
 GROUP BY pizza_name
 ORDER BY total_order DESC
 LIMIT 5

 -- 7. Bottom 5 Best Sellers by Revenue, Total Quantity and Total Orders

 -- Revenue
 SELECT pizza_name, ROUND(SUM(total_price):: NUMERIC ,2) AS revenue
 FROM pizza_sales 
 GROUP BY pizza_name
 ORDER BY revenue 
 LIMIT 5

  -- Total_Quantity
 SELECT pizza_name, SUM(quantity) AS total_quantity
 FROM pizza_sales 
 GROUP BY pizza_name
 ORDER BY total_quantity
 LIMIT 5

 -- Total_order
 SELECT pizza_name, COUNT(order_id) AS total_order
 FROM pizza_sales 
 GROUP BY pizza_name
 ORDER BY total_order 
 LIMIT 5