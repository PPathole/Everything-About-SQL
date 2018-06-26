SELECT * FROM customers /*Asterisk means everything*/
SELECT * FROM items
SELECT name FROM items WHERE name LIKE 'new%' /*%- means anything*/
SELECT name FROM items WHERE name LIKE '%computer'
SELECT name FROM items WHERE name LIKE '%boxes of frogs'
SELECT name FROM items WHERE name LIKE 'h%d'
SELECT name FROM items WHERE name LIKE '_boxes of frogs' /*_ means only a single character*/