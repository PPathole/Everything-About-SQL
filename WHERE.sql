SELECT id,name FROM customers WHERE id=6,
SELECT name,zip FROM customers WHERE name='pranay',
SELECT id,city,state FROM customers WHERE id<6,
SELECT id,city,state FROM customers WHERE id!=6,
SELECT id,city,state FROM customers WHERE id>6,
SELECT id,city,state FROM customers WHERE id<=6,
SELECT id,city,state FROM customers WHERE id>=6,
SELECT id,city,state FROM customers WHERE id BETWEEN 25 AND 30,
SELECT name,state,city FROM customers WHERE state='CA' AND city='Hollywood',
SELECT name,state,city FROM customers WHERE state='MH' OR city='Boston',
SELECT id,name,city FROM customers WHERE (id=1 OR id=2) AND city='Raleigh' /*MySQL works inside out!*/


