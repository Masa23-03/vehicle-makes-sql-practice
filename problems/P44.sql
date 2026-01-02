-- Problem 44: Get Total Number Of Doors Manufactured by 'Ford'

SELECT SUM(NumDoors) AS TotalNumberOfDoores
FROM VehicleDetails v
INNER JOIN Makes m ON v.MakeID=m.MakeID
WHERE Make='Ford'

