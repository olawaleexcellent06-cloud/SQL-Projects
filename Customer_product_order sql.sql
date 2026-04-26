SELECT * FROM sql_practice.`customers (1)` as customers
LIMIT 10;

SELECT * FROM sql_practice.`products (1)`
LIMIT 10;

SELECT * FROM sql_practice.`orders (1)`
LIMIT 10;

SELECT product_name, price 
FROM sql_practice.`products (1)`
ORDER BY price DESC
LIMIT 5;

SELECT COUNT(*) as total_customers
FROM sql_practice.`customers (1)`;

SELECT 
    o.order_id,
    o.order_date,
    c.customer_id,
    c.city
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`customers (1)` c 
    ON o.customer_id = c.customer_id
LIMIT 10;

SELECT 
    o.order_id,
    p.product_name,
    p.category,
    o.quantity
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p 
    ON o.product_id = p.product_id
LIMIT 10;

SELECT 
    p.category,
    SUM(o.quantity * p.price) as total_revenue
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p 
    ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

Select
c.customer_id,
c.customer_id,
o.order_id,
o.order_date
from sql_practice.`customers (1)` c 
join sql_practice.`orders (1)` o
      on c.customer_id = o.customer_id
      limit 20;
      
SELECT 
    p.product_name,
    SUM(o.quantity) as total_quantity_sold
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p 
    ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;

SELECT 
    o.order_id,
    o.customer_id,
    p.product_name,
    o.quantity,
    p.price
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p
    ON o.product_id = p.product_id
LIMIT 20;

SELECT 
    c.customer_id,
    o.order_id,
    o.order_date,
    o.quantity
FROM sql_practice.`customers (1)` c 
JOIN sql_practice.`orders (1)` o
    ON c.customer_id = o.customer_id
LIMIT 20;

SELECT 
    c.customer_id,
    p.product_name,
    o.quantity,
    o.order_date
FROM sql_practice.`customers (1)` c
JOIN sql_practice.`orders (1)` o ON c.customer_id = o.customer_id
JOIN sql_practice.`products (1)` p ON o.product_id = p.product_id
LIMIT 20;

SELECT 
    c.customer_id,
    SUM(o.quantity * p.price) as total_spent
FROM sql_practice.`customers (1)` c
JOIN sql_practice.`orders (1)` o ON c.customer_id = o.customer_id
JOIN sql_practice.`products (1)` p ON o.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;


SELECT 
    p.product_name,
    SUM(o.quantity) as total_quantity_sold
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 10;

SELECT 
    p.product_name,
    SUM(o.quantity * p.price) as revenue
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC
LIMIT 5;

SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') as month,
    SUM(o.quantity * p.price) as monthly_revenue
FROM sql_practice.`orders (1)` o
JOIN sql_practice.`products (1)` p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;