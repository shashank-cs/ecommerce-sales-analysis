
-- Total Sales and Profit
SELECT SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM orders;

-- Monthly Revenue
SELECT YEAR(Order_Date) AS Year,
       MONTH(Order_Date) AS Month,
       SUM(Sales) AS Monthly_Revenue
FROM orders
GROUP BY Year, Month
ORDER BY Year, Month;

-- Top 10 Customers
SELECT Customer_Name,
       SUM(Sales) AS Total_Revenue
FROM orders
GROUP BY Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Discount Impact
SELECT Discount,
       AVG(Profit) AS Avg_Profit
FROM orders
GROUP BY Discount
ORDER BY Discount;
