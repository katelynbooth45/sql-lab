-- 1
SELECT * from customers;

-- 2
SELECT country FROM customers;

-- 3
SELECT customer_id FROM Customers where customer_id LIKE 'BL%';
-- 4
SELECT * FROM orders LIMIT 100;

-- 5
SELECT * FROM customers WHERE postal_code LIKE '%1010' AND postal_code LIKE '%3012' AND postal_code LIKE '%12209' AND postal_code LIKE '%05023';

-- 6
SELECT * FROM orders WHERE NOT ship_region = 'NULL';

-- 7
SELECT * FROM customers ORDER BY country, city;

-- 8
INSERT INTO customers (
customer_id,
company_name,
contact_name,
contact_title,
address,
city,
region,
postal_code,
country,
phone,
fax)
VALUES (
'12345',
'Company Inc.',
'Katelyn Booth',
'CEO',
'1509 Dorothea Road',
'Berkley',
'Michigan',
'48072',
'USA',
'2488359057',
'2483964472');

-- 9
UPDATE orders
SET ship_region = 'EuroZone'
WHERE ship_country = 'France';

-- 10
DELETE FROM order_details
WHERE quantity = '1';

-- 11
SELECT AVG(quantity), MAX(quantity), MIN(quantity)
FROM order_details;

-- 12
SELECT AVG(quantity), MAX(quantity), MIN(quantity)
FROM order_details
GROUP BY order_id;

-- 13
SELECT customer_id FROM orders 
WHERE order_id = '10290';

-- 14
SELECT *
FROM orders
INNER JOIN customers 
ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
LEFT JOIN customers 
ON orders.customer_id = customers.customer_id;

SELECT *
FROM orders
RIGHT JOIN customers 
ON orders.customer_id = customers.customer_id;

-- 15
SELECT orders.ship_city, employees.city FROM orders 
INNER JOIN employees ON orders.ship_city = employees.city WHERE employees.city = 'London';

-- 16
SELECT ship_name FROM orders 
INNER JOIN order_details ON order_details.order_id=orders.order_id 
INNER JOIN products ON products.product_id=order_details.product_id 
WHERE discontinued='1';

-- 17

SELECT first_name FROM employees WHERE reports_to IS NULL;

SELECT first_name FROM employees WHERE reports_to = 2;