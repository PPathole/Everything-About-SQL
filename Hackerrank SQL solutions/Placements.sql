SELECT Name
FROM Students
INNER JOIN Friends
ON Students.ID = Friends.ID
INNER JOIN Packages
ON Friends.Friend_ID = Packages.ID
INNER JOIN Packages P1
ON P1.ID = Students.ID
WHERE Packages.Salary > P1.Salary
ORDER BY Packages.Salary;
