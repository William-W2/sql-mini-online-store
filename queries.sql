SELECT o.id, u.name, o.order_date
FROM orders o
JOIN users u ON o.user_id = u.id;

SELECT o.id,
       SUM(p.price * oi.quantity) AS total_amount
FROM orders o
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
GROUP BY o.id;

SELECT u.name,
       SUM(p.price * oi.quantity) AS total_spent
FROM users u
JOIN orders o ON u.id = o.user_id
JOIN order_items oi ON o.id = oi.order_id
JOIN products p ON oi.product_id = p.id
GROUP BY u.name
ORDER BY total_spent DESC
LIMIT 1;

SELECT u.name
FROM users u
LEFT JOIN orders o ON u.id = o.user_id
WHERE o.id IS NULL;
