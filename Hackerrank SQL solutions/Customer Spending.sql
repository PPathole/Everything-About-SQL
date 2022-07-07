SELECT customer_name, CAST(invoice.total_price AS DECIMAL (10,6))
FROM customer
INNER JOIN invoice
ON customer.id = invoice.customer_id
WHERE invoice.total_price <= (SELECT 0.25 * AVG(total_price) FROM invoice)
GROUP BY customer.id, customer.customer_name, invoice.total_price
ORDER BY invoice.total_price DESC;
