-- Problem 3 : Get number vehicles made between 1950 and 2000

SELECT NumberOfVehicles= COUNT(*) 
FROM VehicleDetails v
WHERE v.Year BETWEEN 1950 AND 2000