SELECT customer_id, SUM(amount) AS total_spend
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;
