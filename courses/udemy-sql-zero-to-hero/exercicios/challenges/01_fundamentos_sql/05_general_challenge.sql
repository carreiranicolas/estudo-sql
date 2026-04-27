-- Quantas transações foram acima de 5 dolares

SELECT COUNT(DISTINCT payment_id) 
FROM payment 
WHERE amount > 5;

-- Quantos atores tem o primeiro nome começado com p

SELECT COUNT(*)
FROM actor
WHERE first_name LIKE 'P%';

-- Quantidade de distritos unicos

SELECT COUNT(DISTINCT district)
FROM address;

-- Nome dos diferentes distritos unicos

SELECT DISTINCT district
FROM address;

-- Filmes com rating de R e replacement cost entre 5 e 15

SELECT title 
FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 and 15;

-- Quantos filmes tem a palavra truman em algum lugar do titulo

SELECT COUNT(DISTINCT film_id)
FROM film
WHERE title LIKE '%Truman%'

