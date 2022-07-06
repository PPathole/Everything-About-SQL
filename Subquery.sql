SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment AS p WHERE p.customer_id = c.customer_id AND amount>11);

SELECT title FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);
