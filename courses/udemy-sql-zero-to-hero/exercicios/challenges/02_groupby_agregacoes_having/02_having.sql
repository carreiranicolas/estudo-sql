-- Pegar os customers ids que tiveram mais de 40 pagamentos

SELECT p.customer_id, COUNT(p.payment_id) 
FROM payment p
GROUP BY p.customer_id
HAVING COUNT(p.payment_id) >= 40;


-- customers ids que gastaram mais de 100 com o staff id 2

SELECT p.customer_id, p.staff_id ,SUM(p.amount) 
FROM payment p
WHERE p.staff_id = 2
GROUP BY p.customer_id, p.staff_id
HAVING SUM(p.amount) > 100;
