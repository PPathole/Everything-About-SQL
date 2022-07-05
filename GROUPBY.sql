SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC
LIMIT 2;

SELECT rating, AVG(replacement_cost)
FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;



