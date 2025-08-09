-- 1. Total Revenue
SELECT SUM(Weekly_Sales) AS Total_Revenue
FROM dbo.walmart_sales_dataset_1000;

-- 2. Average Weekly Sales per Store
SELECT Store, AVG(Weekly_Sales) AS Avg_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000
GROUP BY Store
ORDER BY Store ASC;

-- 3. Revenue by Store
SELECT Store, SUM(Weekly_Sales) AS Total_Revenue
FROM dbo.walmart_sales_dataset_1000
GROUP BY Store
ORDER BY Store ASC;

-- 4. Holiday vs Non-Holiday Revenue
SELECT IsHoliday, SUM(Weekly_Sales) AS Total_Revenue
FROM dbo.walmart_sales_dataset_1000
GROUP BY IsHoliday;

-- 5. Total Weeks & Average Weekly Sales
SELECT 
  SUM(Weekly_Sales) AS Total_Revenue,
  COUNT(*) AS Total_Weeks,
  ROUND(AVG(Weekly_Sales),2) AS Avg_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000;

-- 6. Max and Min Weekly Sales
SELECT
  MAX(Weekly_Sales) AS Max_Weekly_Sales,
  MIN(Weekly_Sales) AS Min_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000;

-- 7. Sales Variability
SELECT
  ROUND(STDEV(Weekly_Sales), 2) AS StdDev_Weekly_Sales,
  ROUND(VAR(Weekly_Sales), 2) AS Variance_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000;

-- 8. Yearly Sales Trends
SELECT 
  YEAR(Date) AS Sales_Year,
  SUM(Weekly_Sales) AS Total_Revenue,
  ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000
GROUP BY YEAR(Date)
ORDER BY Sales_Year;

-- 9. Monthly Sales Trends
SELECT 
  MONTH(Date) AS Sales_Month,
  SUM(Weekly_Sales) AS Total_Revenue,
  ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000
GROUP BY MONTH(Date)
ORDER BY Sales_Month;

-- 10. Store-Month Sales Breakdown
SELECT 
  Store,
  MONTH(Date) AS Sales_Month,
  SUM(Weekly_Sales) AS Total_Revenue,
  ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM dbo.walmart_sales_dataset_1000
GROUP BY Store, MONTH(Date)
ORDER BY Store, Sales_Month;
