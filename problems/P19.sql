-- Problem 19: Get total vehicles per DriveTypeName Per Make then filter only results with total > 10,000

SELECT m.Make , d.DriveTypeName , COUNT (*) TotalVehicles
FROM VehicleDetails v 
INNER JOIN Makes m ON v.MakeID=m.MakeID
INNER JOIN DriveTypes d ON v.DriveTypeID=d.DriveTypeID
GROUP BY m.Make , d.DriveTypeName
HAVING COUNT(*) > 10000