SELECT CONCAT(city,', ',state) FROM customers
SELECT CONCAT(city,', ',state) AS proper_address FROM customers 

SELECT name,cost,ROUND(cost-1,4) AS discount FROM items