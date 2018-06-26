/*-------------- FUNCTIONS-----------------*/
SELECT name,UPPER(name) FROM customers,
SELECT ABS(cost) FROM items,
SELECT cost,SQRT(cost) AS square_root FROM items,
SELECT SUM(bids) FROM items,
SELECT AVG(cost) FROM items,
SELECT ROUND(SQRT(cost),4) FROM items ORDER BY cost DESC,
SELECT MAX(cost) FROM items,
SELECT MIN(cost) FROM items,
SELECT COUNT(name) FROM items WHERE seller_id=6,
SELECT COUNT(*) AS item_count, MAX(cost) AS max_cost, AVG(cost) AS avg_cost, WHERE seller_id=12;
SELECT MOD(18, 4);
SELECT RIGHT('SQL Tutorial', 3) AS ExtractString; 