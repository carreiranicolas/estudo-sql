-- Clientes que nunca fizeram pedidos



-- 5 produtos mais vendidos

SELECT p.product_name, COUNT(DISTINCT od.order_id) 
FROM products p
JOIN order_details od ON p.product_id = od.product_id
GROUP BY p.product_id
ORDER BY COUNT(DISTINCT od.order_id) DESC
LIMIT 5;


-- Para cada cliente calcular total de gasto e qtde de pedidos (ordenar desc)

SELECT c.customer_id, c.contact_name, SUM(od.unit_price), SUM(od.quantity) 
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_id



