-- O id dos 10 primeiros clientes que pagaram

SELECT customer_id
FROM payment
ORDER BY payment_date ASC
LIMIT 10;

-- 5 filmes mais curtos

SELECT title
FROM film
ORDER BY length ASC
LIMIT 5;

-- Quantidade de filmes com 50 minutos pra menos

SELECT COUNT(DISTINCT title) 
FROM film
WHERE length <= 50