#Show all customer records
SELECT * 
FROM sales.customers;

#Show total number of customers
SELECT count(*) 
FROM sales.customers;

#Show transactions for Chennai market (market code for chennai is Mark001
SELECT * 
FROM sales.transactions 
WHERE market_code='Mark001';

#Show distrinct product codes that were sold in chennai

SELECT distinct product_code 
FROM sales.transactions 
WHERE market_code='Mark001';

#Show transactions where currency is US dollars
SELECT * from sales.transactions 
WHERE currency="USD";

#Show transactions in 2020 join by date table
SELECT *
FROM sales.transactions as a
INNER JOIN sales.date as b
ON a.order_date=b.date
WHERE b.year="2020";

SELECT sum(a.sales_amount) 
FROM sales.transactions as a
INNER JOIN sales.date as b
ON a.order_date=b.date
WHERE b.year="2020" and a.market_code="Mark001";

#Show total revenue in year 2020,

SELECT SUM(a.sales_amount) 
FROM sales.transactions as a 
INNER JOIN sales.date as b
ON a.order_date=b.date
WHERE b.year=2020 AND a.currency="INR" OR a.currency="USD";

#Show total revenue in year 2020, January Month,
SELECT SUM(a.sales_amount)
FROM sales.transactions as a 
INNER JOIN sales.date as b
ON a.order_date=b.date
WHERE b.year=2020 AND b.month_name="January" AND (a.currency="INR" OR a.currency="USD");

#Show total revenue in year 2020 in Chennai
SELECT SUM(a.sales_amount) 
FROM sales.transactions as a 
INNER JOIN sales.date as b
ON a.order_date=b.date
where b.year=2020 and a.market_code="Mark001";