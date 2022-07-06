SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH'))
FROM payment;

SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;
