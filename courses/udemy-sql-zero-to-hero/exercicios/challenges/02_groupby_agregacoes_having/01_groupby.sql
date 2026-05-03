-- Quantos pagamentos cada um dos staffs lidaram

SELECT p.staff_id, COUNT(p.payment_id)
FROM payment p
GROUP BY p.staff_id;

-- replacement cost médio por rating

SELECT rating, AVG(replacement_cost) 
FROM film
GROUP BY rating;

-- Top 5 clientes que mais gastam

SELECT p.customer_id, SUM(p.amount) 
FROM payment p
GROUP BY p.customer_id
ORDER BY SUM(p.amount) DESC
LIMIT 5