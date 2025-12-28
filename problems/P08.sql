-- Problem 8: Get Make, FuelTypeName and Number of Vehicles per FuelType per Make


SELECT m.Make ,f.FuelTypeName , COUNT (*) NumberOfVehicles
FROM  VehicleDetails v  
INNER JOIN  Makes m ON v.MakeID=m.MakeID
INNER JOIN FuelTypes f ON v.FuelTypeID = f.FuelTypeID
WHERE v.Year BETWEEN 1950 AND 2000
GROUP BY m.Make , f.FuelTypeName
ORDER BY m.Make



 


