CREATE TABLE SALES_DATA (
Region VARCHAR(50),
Product VARCHAR(50),
Sales_Amount INT,
YEAR INT
)

INSERT INTO SALES_DATA VALUES
('North America', 'Watch',1500,2023),
('Europe','Mobile',1200,2023),
('Asia','Watch',1800,2023),
('North America','TV',900,2024),
('Europe','Watch',2000,2024),
('Asia','Mobile',1000,2024),
('North America','Mobile',1600,2023),
('Europe','TV',1500,2023),
('Asia','TV',1100,2024),
('North America','Watch',1700,2024)--Part – A:
--1. Display Total Sales Amount by Region.
SELECT 
	SUM(Sales_Amount)
	,REGION 
FROM SALES_DATA
GROUP BY REGION
--2. Display Average Sales Amount by Product
SELECT 
	PRODUCT,
	AVG(Sales_Amount) 
FROM SALES_DATA
GROUP BY Product
--3. Display Maximum Sales Amount by Year
SELECT 
	YEAR,
	MAX(Sales_Amount) 
FROM SALES_DATA
GROUP BY YEAR
--4. Display Minimum Sales Amount by Region and Year
SELECT 
	REGION,
	YEAR,
	MIN(Sales_Amount) 
FROM SALES_DATA
GROUP BY YEAR,Region
--5. Count of Products Sold by Region
SELECT 
	COUNT(PRODUCT),
	REGION 
FROM SALES_DATA
GROUP BY Region
--6. Display Sales Amount by Year and Product
SELECT 
	YEAR,
	PRODUCT,
	SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY YEAR,PRODUCT
--7. Display Regions with Total Sales Greater Than 5000
SELECT
REGION,
	SUM(Sales_Amount) 
FROM SALES_DATA
GROUP BY Region
HAVING SUM(Sales_Amount) > 5000
--8. Display Products with Average Sales Less Than 10000
SELECT
	Product,
	AVG(Sales_Amount) 
FROM SALES_DATA
GROUP BY Product
HAVING AVG(Sales_Amount) < 10000
--9. Display Years with Maximum Sales Exceeding 500
SELECT 
	YEAR,
	MAX(Sales_Amount)
FROM SALES_DATA
GROUP BY YEAR
HAVING MAX(Sales_Amount) > 500
--10. Display Regions with at Least 3 Distinct Products Sold.
SELECT 
	REGION,
	COUNT(DISTINCT PRODUCT)
FROM SALES_DATA
GROUP BY REGION
HAVING COUNT(PRODUCT) > 3
--11. Display Years with Minimum Sales Less Than 1000
SELECT 
	YEAR,
	MIN(SALES_AMOUNT)
FROM SALES_DATA
GROUP  BY YEAR
HAVING MIN(SALES_AMOUNT) < 1000
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
SELECT
	REGION,
	YEAR,SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY REGION,YEAR
HAVING YEAR = '2023'
ORDER BY SUM(Sales_Amount)


--Part – B:
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
SELECT
	YEAR,
	REGION,
	COUNT(Sales_Amount)
FROM SALES_DATA
GROUP BY YEAR,Region
ORDER BY YEAR,Region
--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
SELECT
	REGION,
	MAX(Sales_Amount)
FROM SALES_DATA
GROUP BY Region
HAVING MAX(Sales_Amount) > 1000
ORDER BY Region
--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
SELECT
	YEAR,
	SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY YEAR
HAVING SUM(Sales_Amount) < 1000
ORDER BY YEAR DESC
--4. Display Top 3 Regions by Total Sales Amount in Year 2024
SELECT
	TOP 3 REGION,
	YEAR,
	SUM(Sales_Amount)
FROM SALES_DATA
GROUP BY Region,YEAR
HAVING YEAR = '2024'



--Part – C:
--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
SELECT 
	PRODUCT,
	AVG(Sales_Amount)
FROM SALES_DATA
GROUP BY PRODUCT
HAVING AVG(Sales_Amount) BETWEEN 1000 AND 2000
ORDER BY Product
--2. Display Years with More Than 5 Orders from Each Region
SELECT
	YEAR,
	REGION,
	COUNT(PRODUCT)
FROM SALES_DATA
GROUP BY YEAR,Region
HAVING COUNT(PRODUCT) > 5

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
SELECT
	REGION,
	AVG(Sales_Amount)
FROM SALES_DATA
WHERE YEAR = 2023
GROUP BY Region
HAVING AVG(Sales_Amount) > 1500  
ORDER BY AVG(Sales_Amount) DESC
--4. Find out region wise duplicate product.
SELECT
	REGION,
	COUNT(PRODUCT)
FROM SALES_DATA
GROUP BY REGION
HAVING COUNT(PRODUCT) > 1
--5. Find out region wise highest sales amount.
SELECT
	REGION,
	MAX
FROM SALES_DATA
GROUP BY REGION
HAVING COUNT(PRODUCT) > 1