#1.Total Revenue
SELECT ROUND(SUM(payment_value), 2) AS Total_Revenue
FROM order_payments;

#2. Total Customers
SELECT COUNT(DISTINCT customer_id) AS Total_Customers
FROM customers;

#3. Total Orders
SELECT COUNT(DISTINCT order_id) AS Total_Orders
FROM orders;

#4. Average Order Value (AOV)
SELECT
    ROUND(SUM(payment_value) / COUNT(DISTINCT order_id), 2) AS Average_Order_Value
FROM order_payments;

SELECT ROUND(AVG(payment_value), 2) AS average_payment
FROM order_payments;

#5. Monthly Revenue Trend
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS Order_Month,
    ROUND(SUM(op.payment_value), 2) AS Monthly_Revenue
FROM orders o
JOIN order_payments op
    ON o.order_id = op.order_id
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY Order_Month desc
LIMIT 10;

#6. Total Orders by Month
SELECT
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS Order_Month,
    COUNT(DISTINCT order_id) AS Total_Orders
FROM orders
GROUP BY DATE_FORMAT(order_purchase_timestamp, '%Y-%m')
ORDER BY Order_Month;

select sum(product_category_name) as revenue
from products 
group by revenue
limit 10;

#7. Top 10 Product Categories by Revenue
SELECT
    ct.product_category_name_english AS Category,
    ROUND(SUM(oi.price), 2) AS Total_Revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
LEFT JOIN category_translation ct
    ON p.product_category_name = ct.product_category_name
GROUP BY ct.product_category_name_english
ORDER BY Total_Revenue DESC
LIMIT 10;

#8. Top 10 Sellers by Revenue
SELECT
    s.seller_id,
    ROUND(SUM(oi.price), 2) AS Total_Revenue
FROM order_items oi
JOIN sellers s
    ON oi.seller_id = s.seller_id
GROUP BY s.seller_id
ORDER BY Total_Revenue DESC
LIMIT 10;

#9. Revenue by State
SELECT
customer_state,
ROUND(SUM(payment_value),2) AS Revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN order_payments op
ON o.order_id=op.order_id
GROUP BY customer_state
ORDER BY Revenue DESC;

#10. Revenue by City
SELECT
customer_city,
ROUND(SUM(payment_value),2) AS Revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN order_payments op
ON o.order_id=op.order_id
GROUP BY customer_city
ORDER BY Revenue DESC
LIMIT 10;

#11. Payment Method Distribution
SELECT
payment_type,
COUNT(*) AS Transactions
FROM order_payments
GROUP BY payment_type;

#12. Orders by Status
SELECT
order_status,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY order_status;

#13. Average Delivery Time
SELECT
ROUND(AVG(DATEDIFF(order_delivered_customer_date,
order_purchase_timestamp)),2) AS Avg_Delivery_Days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;

#14. Monthly Sales (Revenue), use this SQL query:
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS Month,
    ROUND(SUM(op.payment_value), 2) AS Monthly_Sales
FROM orders o
JOIN order_payments op
    ON o.order_id = op.order_id
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY Month;
