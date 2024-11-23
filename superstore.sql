-- 1. Count Total Number of Records
SELECT COUNT(*) AS total_records 
FROM superstore;

-- 2. Find Sum and Average of Sales
SELECT SUM(Sales) AS total_sales, AVG(Sales) AS average_sales 
FROM superstore;

-- 3. Maximum and Minimum Sales Values
SELECT MAX(Sales) AS max_sales, MIN(Sales) AS min_sales 
FROM superstore;

-- 4. Average Profit by Category
SELECT Category, AVG(Profit) AS avg_profit 
FROM superstore 
GROUP BY Category 
ORDER BY avg_profit DESC;

-- 5. Top 5 Products by Total Sales
SELECT [Product Name] AS product_name, SUM(Sales) AS total_sales 
FROM superstore 
GROUP BY [Product Name] 
ORDER BY total_sales DESC 
LIMIT 5;

-- 6. Count of Orders Per Region
SELECT Region, COUNT([Order ID]) AS order_count 
FROM superstore 
GROUP BY Region 
ORDER BY order_count DESC;

-- 7. Filtered Records Where Profit > 100
SELECT * 
FROM superstore 
WHERE Profit > 100 
LIMIT 10; -- Displaying a sample of 10 records

-- 8. High Sales (Sales > 500)
SELECT * 
FROM superstore 
WHERE Sales > 500 
LIMIT 10; -- Displaying a sample of 10 records

-- 9. Specific Region (Region = 'West')
SELECT * 
FROM superstore 
WHERE Region = 'West' 
LIMIT 10; -- Displaying a sample of 10 records
