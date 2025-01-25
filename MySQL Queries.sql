-- Walmart Data Analysis

SELECT*FROM walmart;

-- Counting of data from walmart table

SELECT count(*) FROM walmart;

-- Selcting Different Payment_method from Walmart table

SELECT 
DISTINCT payment_method 
FROM walmart;

SELECT MAX(quantity) FROM walmart;

-- Bussines problems 
-- Q.1 Find the different payment method and number of transactions, number of quantity sold
 
SELECT payment_method, 
count(*) as no_payements,
SUM(quantity) as no_quantity_sold
FROM walmart
GROUP BY payment_method;

-- Q.2 Identify the highest-rated category in each branch, displaying the branch, category
-- AVG RATING

SELECT
    branch, 
    category,
    AVG(rating) AS avg_rating
FROM walmart
GROUP BY branch, category
ORDER BY branch, avg_rating DESC;