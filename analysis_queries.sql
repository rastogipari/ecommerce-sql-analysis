-- Total Revenue
SELECT SUM(p.price * o.quantity) AS total_revenue
FROM orders o 
JOIN  products p ON o.product_id = p.product_id;


-- Top 3 customers by spending
SELECT c.customer_name,SUM(p.price * o.quantity) AS total_spent
FROM orders o JOIN customers c ON c.customer_id = o.customer_id
JOIN  products p ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 3;

-- Top selling product
SELECT p.product_name,SUM(p.price*o.quantity) AS total_spent
FROM products p JOIN orders o 
ON p.product_id = o.product_id
GROUP BY product_name
ORDER BY total_spent DESC 
LIMIT 1;

-- Monthly Revenue Trend
SELECT DATE_TRUNC('month',o.order_date) AS order_month,
SUM(p.price * o.quantity) as monthly_revenue FROM 
orders o JOIN products p ON 
o.product_id = p.product_id 
GROUP BY order_month
ORDER BY order_month;

-- Customers Who Never Ordered
SELECT c.customer_name
FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Revenue by Category
SELECT p.category, SUM(p.price * o.quantity) AS category_revenue
FROM products p JOIN orders o 
ON p.product_id = o.product_id 
GROUP BY p.category
ORDER BY category_revenue DESC;

-- Average order value
SELECT AVG(p.price * o.quantity) AS avg_order_value
FROM orders o JOIN products p
ON o.product_id = p.product_id;

-- Total orders per customer
SELECT c.customer_name,COUNT(o.order_id) as total_orders 
FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC;







