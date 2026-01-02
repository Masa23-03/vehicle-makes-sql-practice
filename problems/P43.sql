-- Problem 43: Get Make and Total Number Of Doors Manufactured Per Make 
SELECT Make , SUM  (v.NumDoors) AS TotalNumberOfDoors
FROM VehicleDetails v INNER JOIN Makes m 
ON v.MakeID = m.MakeID
GROUP BY Make 
ORDER BY TotalNumberOfDoors DESC