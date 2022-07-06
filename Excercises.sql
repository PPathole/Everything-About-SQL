SELECT * FROM cd.facilities;

SELECT name, membercost FROM cd.facilities;

SELECT * FROM cd.facilities
WHERE membercost != 0;

SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE (membercost < (monthlymaintenance * 0.02) AND membercost != 0);

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

SELECT * FROM cd.facilities
WHERE (facid = 1 OR facid = 5);

SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE (joindate > '2012-09-1')

SELECT DISTINCT surname FROM cd.members
ORDER BY surname ASC LIMIT 10;

SELECT joindate FROM cd.members
ORDER BY memid 
DESC LIMIT 1;

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

SELECT cd.facilities.facid, SUM(cd.facilities.facid) FROM cd.facilities
INNER JOIN cd.bookings
ON cd.bookings.facid = cd.facilities.facid
INNER JOIN cd.members
ON cd.members.memid = cd.bookings.memid
WHERE cd.members.joindate BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY cd.facilities.facid
ORDER BY SUM(cd.facilities.facid) DESC;

SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

SELECT starttime, name 
FROM cd.bookings
INNER JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE name IN ('Tennis Court 1', 'Tennis Court 2') AND starttime >= '2012-09-21'
ORDER BY starttime;


SELECT starttime FROM cd.bookings
INNER JOIN cd.members
ON cd.bookings.memid = cd.members.memid
WHERE firstname = 'David' AND surname = 'Farrell';

