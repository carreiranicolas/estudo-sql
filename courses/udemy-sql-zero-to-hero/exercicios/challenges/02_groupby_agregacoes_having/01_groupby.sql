-- Quantos pagamentos cada um dos staffs lidaram

SELECT s.staff_id, s.first_name, COUNT(payment_id)
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id;

-- replacement cost médio por rating

SELECT rating, AVG(replacement_cost) 
FROM film
GROUP BY rating;

-- Top 5 clientes que mais gastam

SELECT c.customer_id, SUM(p.amount) 
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
ORDER BY SUM(p.amount) DESC
LIMIT 5