/* 
    ADHOC QUESTIONS AND QUERIES: NOVA-TECH ELECTRONIC TEAM
*/

-- What are the earliest and latest order dates in the system?
SELECT 
    MIN(purchase_ts) AS earliest_order,
    MAX(purchase_ts) AS latest_order
FROM core.orders;


-- What was the Average Order Value (AOV) for purchases made in EUR in 2019?
SELECT
    ROUND(AVG(usd_price), 2) AS eur_aov
FROM core.orders
WHERE currency = 'EUR'
  AND EXTRACT(YEAR FROM purchase_ts) = 2019;


-- What are the account creation dates for accounts made on desktop and mobile, including loyalty status?
SELECT 
    id AS customer_id,
    CASE 
        WHEN loyalty_program = 1 THEN 'Loyalty_member' 
        ELSE 'Non_loyalty_member' 
    END AS loyalty_program_status,
    created_on AS account_created_on
FROM core.customers
WHERE account_creation_method IN ('desktop', 'mobile')
ORDER BY created_on;


-- What are the unique products sold in EUR via the mobile app?
SELECT DISTINCT 
    product_name
FROM core.orders
WHERE currency = 'EUR'
  AND purchase_platform = 'mobile app'
ORDER BY 1 ASC;


-- Provide the customer IDs and country codes for the first 10 records in the North American region.
SELECT 
    c.id AS customer_id,
    c.country_code,
    g.region
FROM core.customers c
JOIN core.geo_lookup g 
  ON c.country_code = g.country
WHERE g.region = 'NA'
ORDER BY 1
LIMIT 10;


-- What is the total number of orders by shipping month, sorted from most recent to oldest?
SELECT
    DATE_TRUNC(ship_ts, MONTH) AS ship_month,
    COUNT(order_id) AS order_count
FROM core.order_status
GROUP BY 1
ORDER BY 1 DESC; 


-- What are the Product IDs and names for all Apple and Macbook products?
SELECT DISTINCT 
    product_id,
    product_name
FROM core.orders
WHERE LOWER(product_name) LIKE '%apple%'
   OR LOWER(product_name) LIKE '%macbook%';


-- Calculate the number of days to ship for every order in the order_status table.
SELECT *,
    DATE_DIFF(ship_ts, purchase_ts, DAY) AS days_to_ship
FROM core.order_status;


-- What is the average quarterly order count and total sales for Macbooks sold in North America?
WITH quarterly_metrics AS (
    SELECT 
        DATE_TRUNC(o.purchase_ts, QUARTER) AS purchase_quarter,
        COUNT(DISTINCT o.id) AS order_count,
        SUM(o.usd_price) AS total_sales
    FROM core.orders o
    LEFT JOIN core.customers c ON o.customer_id = c.id
    LEFT JOIN core.geo_lookup g ON c.country_code = g.country
    WHERE LOWER(o.product_name) LIKE '%macbook%'
      AND g.region = 'NA'
    GROUP BY 1
)
SELECT 
    ROUND(AVG(order_count), 2) AS avg_quarter_orders,
    ROUND(AVG(total_sales), 2) AS avg_quarter_sales
FROM quarterly_metrics;


-- Which region has the highest average weeks to deliver for 2022 website orders or any mobile app orders?
SELECT 
    g.region,
    AVG(DATE_DIFF(s.delivery_ts, s.purchase_ts, WEEK)) AS avg_weeks_to_deliver
FROM core.orders o
LEFT JOIN core.customers c ON o.customer_id = c.id 
LEFT JOIN core.order_status s ON o.id = s.order_id
LEFT JOIN core.geo_lookup g ON c.country_code = g.country
WHERE (o.purchase_platform = 'website' AND EXTRACT(YEAR FROM s.purchase_ts) = 2022)
   OR (o.purchase_platform = 'mobile app')
GROUP BY 1
ORDER BY 2 DESC; 


-- What is the annual refund rate (percentage of orders with a refund timestamp)?
SELECT 
    EXTRACT(YEAR FROM purchase_ts) AS year,
    ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) * 100, 2) AS refund_rate_pct
FROM core.order_status
GROUP BY 1
ORDER BY 1;


-- What is the total number of orders per month for each product? (Includes name cleanup for the 4k gaming monitor).
SELECT 
    DATE_TRUNC(purchase_ts, MONTH) AS month,
    CASE 
        WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' 
        ELSE product_name 
    END AS cleaned_product_name,
    COUNT(DISTINCT id) AS order_count
FROM core.orders
GROUP BY 1, 2
ORDER BY 1, 2;


-- What is the average order value (AOV) per year for products that are either laptops or headphones?
SELECT 
    EXTRACT(YEAR FROM purchase_ts) AS year,
    ROUND(AVG(usd_price), 2) AS aov
FROM core.orders
WHERE LOWER(product_name) LIKE '%laptop%'
   OR LOWER(product_name) LIKE '%headphones%'
GROUP BY 1
ORDER BY 1;
