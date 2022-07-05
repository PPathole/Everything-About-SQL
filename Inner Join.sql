SELECT * FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;

SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;


SELECT email FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California';

SELECT actor_id, first_name, last_name FROM actor
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';

SELECT title FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
WHERE film_actor.actor_id = 2;

SELECT title, first_name, last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';
