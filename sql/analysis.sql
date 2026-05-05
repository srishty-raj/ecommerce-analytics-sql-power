-- Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM ecommerce_dataset;

-- Revenue by Category
SELECT 
    category,
    SUM(revenue) AS total_revenue
FROM ecommerce_dataset
GROUP BY category
ORDER BY total_revenue DESC;

-- Top Products
SELECT 
    product,
    SUM(revenue) AS total_revenue
FROM ecommerce_dataset
GROUP BY product
ORDER BY total_revenue DESC;

-- Orders per Customer
SELECT 
    customer_id,
    COUNT(order_id) AS total_orders
FROM ecommerce_dataset
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Revenue Over Time
SELECT 
    order_date,
    SUM(revenue) AS daily_revenue
FROM ecommerce_dataset
GROUP BY order_date
ORDER BY order_date;
