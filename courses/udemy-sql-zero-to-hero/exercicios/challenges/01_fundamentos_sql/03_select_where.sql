-- Encontrar o email de nancy thomas

SELECT email
FROM customer c
WHERE c.first_name = 'Nancy' and c.last_name = 'Thomas';


-- Encontrar a Descrição do filme Outlaw Hanky

SELECT description 
FROM film
WHERE title = 'Outlaw Hanky';

-- Encontrar o telefone de todos os customers que vivem em 259 Ipoh Drive

SELECT phone 
FROM address
WHERE address = '259 Ipoh Drive'