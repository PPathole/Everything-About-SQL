SELECT id, age, coins_needed, power
FROM Wands AS W
INNER JOIN Wands_Property AS P
ON W.code = P.code
WHERE is_evil = 0 AND coins_needed = (SELECT MIN(coins_needed)
                                     FROM Wands AS X
                                     INNER JOIN Wands_Property AS Y
                                     ON X.code = Y.code
                                     WHERE X.power = W.power AND Y.age = P.age)
ORDER BY power DESC, age DESC;
