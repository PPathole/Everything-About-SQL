SELECT id,name,city,state FROM customers WHERE city IN('CA','NC','NY') ORDER BY city DESC, /*IN statement basically combines all the OR statements together*
SELECT id,name,city FROM customers WHERE city='CA' OR city='NY' OR city='NC' ORDER BY city /*Rather than using a bunch of "OR" statements we use IN keyword */
SELECT id,name,city FROM customers WHERE city NOT IN('CA','NY','NC')