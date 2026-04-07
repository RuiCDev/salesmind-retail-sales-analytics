USE salesmind;

-- 1. FULL CLEANUP (Safe order to handle constraints)
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS sales_clean;
DROP TABLE IF EXISTS products_clean;
DROP TABLE IF EXISTS stores_clean;
DROP TABLE IF EXISTS calendar_clean;
DROP TABLE IF EXISTS customer_segments_clean;
SET FOREIGN_KEY_CHECKS = 1;

-- =========================
-- CLEAN PRODUCTS DIMENSION
-- =========================
CREATE TABLE products_clean AS
SELECT 
    CAST(product_id AS SIGNED) AS product_id, -- Standardizing to SIGNED (INT)
    product_category AS category,
    brand,
    product_price AS price
FROM products_raw;

ALTER TABLE products_clean MODIFY product_id INT NOT NULL;
ALTER TABLE products_clean ADD PRIMARY KEY (product_id);

-- =========================
-- CLEAN STORES DIMENSION
-- =========================
CREATE TABLE stores_clean AS
SELECT 
    CAST(store_id AS SIGNED) AS store_id,
    ANY_VALUE(city) AS city,
    ANY_VALUE(region) AS region,
    ANY_VALUE(store_type) AS store_type
FROM stores_raw
GROUP BY store_id;

ALTER TABLE stores_clean MODIFY store_id INT NOT NULL;
ALTER TABLE stores_clean ADD PRIMARY KEY (store_id);

-- =========================
-- CLEAN CALENDAR DIMENSION
-- =========================
CREATE TABLE calendar_clean AS
SELECT 
    STR_TO_DATE(date, '%Y-%m-%d') AS date,
    year,
    month,
    quarter,
    season
FROM calendar_raw;

ALTER TABLE calendar_clean MODIFY date DATE NOT NULL;
ALTER TABLE calendar_clean ADD PRIMARY KEY (date);

-- =========================
-- CLEAN CUSTOMER SEGMENTS DIMENSION
-- =========================
CREATE TABLE customer_segments_clean AS
SELECT 
    CAST(customer_segment AS CHAR(50)) AS customer_segment,
    ANY_VALUE(repeat_customer_rate) AS repeat_customer_rate,
    ANY_VALUE(customer_satisfaction_score) AS customer_satisfaction_score,
    ANY_VALUE(churn_rate) AS churn_rate
FROM customer_segments_raw
GROUP BY customer_segment;

ALTER TABLE customer_segments_clean MODIFY customer_segment VARCHAR(50) NOT NULL;
ALTER TABLE customer_segments_clean ADD PRIMARY KEY (customer_segment);

-- =========================
-- CLEAN SALES (FACT TABLE)
-- =========================
CREATE TABLE sales_clean AS
SELECT
    transaction_id,
    STR_TO_DATE(date, '%Y-%m-%d') AS date,
    CAST(product_id AS SIGNED) AS product_id, -- Data type standardization
    CAST(store_id AS SIGNED) AS store_id,     -- Data type standardization
    CAST(customer_segment AS CHAR(50)) AS customer_segment,
    units_sold AS quantity,
    total_sales_revenue AS revenue,
    gross_profit AS profit
FROM sales_raw;

ALTER TABLE sales_clean MODIFY transaction_id INT NOT NULL;
ALTER TABLE sales_clean ADD PRIMARY KEY (transaction_id);
ALTER TABLE sales_clean MODIFY product_id INT;
ALTER TABLE sales_clean MODIFY store_id INT;
ALTER TABLE sales_clean MODIFY customer_segment VARCHAR(50);
ALTER TABLE sales_clean MODIFY date DATE;

-- =========================
-- RELATIONSHIPS (FOREIGN KEYS)
-- =========================
-- Ensuring compatibility across all keys (INT to INT, VARCHAR to VARCHAR)
ALTER TABLE sales_clean ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products_clean(product_id);
ALTER TABLE sales_clean ADD CONSTRAINT fk_store FOREIGN KEY (store_id) REFERENCES stores_clean(store_id);
ALTER TABLE sales_clean ADD CONSTRAINT fk_segment FOREIGN KEY (customer_segment) REFERENCES customer_segments_clean(customer_segment);
ALTER TABLE sales_clean ADD CONSTRAINT fk_date FOREIGN KEY (date) REFERENCES calendar_clean(date);

-- =========================
-- FINAL VALIDATION
-- =========================
SELECT 
    'SUCCESS' AS status,
    SUM(revenue) AS total_revenue, 
    ROUND((SUM(profit) / SUM(revenue)) * 100, 2) AS margin_percent
FROM sales_clean;

-- Row count validation
SELECT COUNT(*) AS total_rows FROM sales_clean;