SELECT country_name, COUNT(invoice.id), AVG(invoice.total_price)
FROM country
INNER JOIN city
ON country.id = city.country_id
INNER JOIN customer
ON city.id = customer.city_id
INNER JOIN invoice
ON customer.id = invoice.customer_id
GROUP BY country_name
HAVING AVG(invoice.total_price) > (SELECT AVG(total_price) FROM invoice); 
