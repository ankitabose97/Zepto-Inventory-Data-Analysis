-- Zepto Data Analysis

-- Create Table Statement
DROP TABLE IF EXISTS zepto_inventory;

CREATE TABLE IF NOT EXISTS zepto_inventory
(
	sku_id SERIAL PRIMARY KEY,
	Category VARCHAR(50),
	name VARCHAR(150) NOT NULL,
	mrp NUMERIC(10,2),
	discountPercent INT,
	availableQuantity INT,
	discountedSellingPrice NUMERIC(10,2),
	weightInGms INT,
	outOfStock BOOLEAN,
	quantity INT --(Number of unit in packet else weight in Gm)
);

-- Data population Statement

COPY 
zepto_inventory
(Category, name, mrp, discountPercent, availableQuantity, discountedSellingPrice, weightInGms,
outOfStock, quantity)
FROM 'D:\Skill_Verce\SQL\Project\3. Zepto- SQL\zepto_v2.csv'
DELIMITER ','
CSV HEADER

/* Challenge Faced - ERROR: invalid byte sequence for encoding "UTF8": 0x92. 
Saved the CSV as CSV UTF-8(Comma delimited)*/

-- Check data
SELECT * FROM zepto_inventory;

-- Create a Copy of the sample data
SELECT *
INTO zepto_data
FROM zepto_inventory;

SELECT * FROM zepto_data;

-- Check Nulls
SELECT * FROM zepto_data
WHERE 
	sku_id IS NULL OR 
	Category IS NULL OR 
	name IS NULL OR 
	mrp IS NULL OR 
	discountPercent IS NULL OR 
	availableQuantity IS NULL OR 
	discountedSellingPrice IS NULL OR 
	weightInGms IS NULL OR 
	outOfStock IS NULL OR 
	quantity IS NULL;

-- Check Product Category
SELECT DISTINCT category
FROM zepto_data;


-- Check Products that are out of stock
SELECT name, count(*) as sku_count
FROM zepto_data
WHERE outofstock = 'true'
GROUP BY name
ORDER BY sku_count DESC;


-- Product name present multiple times
SELECT name, count(*) as sku_count
FROM zepto_data
GROUP BY name
HAVING count(*) >1
ORDER BY sku_count DESC


-- Product with price 0
SELECT * FROM zepto_data
where mrp =0;

-- Remove data where price 0
DELETE FROM zepto_data
where mrp =0;

-- Convert paise into rupees
SELECT * FROM zepto_data;

UPDATE zepto_data
SET mrp = mrp/100.00, discountedsellingprice = discountedsellingprice/100.00;

-- Data Analysis
-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountpercent
FROM zepto_data
ORDER BY discountpercent DESC
LIMIT 10;

--Q2.What are the Products with High MRP but Out of Stock
SELECT DISTINCT name, mrp 
FROM zepto_data
WHERE outofstock = 'true' AND mrp >250
ORDER BY mrp DESC;

--Q3.Calculate Estimated Revenue for each category
SELECT category, sum(discountedsellingprice*availablequantity) as est_revenue
FROM zepto_data
GROUP BY category
ORDER BY est_revenue DESC;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.

SELECT DISTINCT name, mrp, discountpercent
FROM zepto_data
WHERE mrp > 500.00 AND discountpercent < 10
ORDER BY mrp DESC, discountpercent;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category, ROUND(avg(discountpercent),2) as avg_dis_perc 
FROM zepto_data
GROUP BY category
ORDER BY avg_dis_perc DESC
LIMIT 5;

-- Q6. Find the price per gram for products equal or above 100g and sort by best value.
SELECT DISTINCT name, 
		discountedsellingprice,weightingms,
		ROUND((discountedsellingprice/weightingms),2) as price_per_gram
FROM zepto_data
WHERE weightingms >= 100
ORDER BY price_per_gram;

--Q7.Group the products into categories like Low, Medium, Bulk based on weightingms.
SELECT DISTINCT name, weightingms,
	   CASE
	   		WHEN weightingms >= 5000 THEN 'Bulk'
			WHEN weightingms >= 1000 THEN 'Medium'
			ELSE 'Low'
	   END AS weight_category
FROM zepto_data
ORDER BY weightingms;


--Q8.What is the Total Inventory Weight Per Category 
SELECT category, sum(weightingms*availablequantity) as  Total_Inventory_Weight
FROM zepto_data
GROUP BY category
ORDER BY Total_Inventory_Weight;


































