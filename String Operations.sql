SELECT first_name || ' ' || last_name AS name
FROM customer

SELECT left(first_name,1) || last_name || '@gmail.com'
FROM customer
