-- Total revenue
SELECT SUM(quantity * price_per_unit) AS total_revenue
FROM sales;

-- Top selling products
SELECT product_id, SUM(quantity) AS total_sold
FROM sales
GROUP BY product_id
ORDER BY total_sold DESC;

-- Customer order history
SELECT c.customer_name, s.order_id, s.order_date
FROM customers c
JOIN sales s ON c.customer_id = s.customer_id;

--Top5 selling products 
SELECT 
    p.product_name,
    SUM(s.quantity) AS total_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

--Customer with highest spendings
SELECT 
    c.customer_name,
    SUM(s.quantity * s.price_per_unit) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
WHERE s.order_status = 'Delivered'
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;
