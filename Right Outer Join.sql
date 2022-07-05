SELECT film.film_id, title, inventory_id, store_id
FROM inventory
RIGHT OUTER JOIN film
ON film.film_id = inventory.film_id;
