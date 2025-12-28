-- Problem 21: Get Total Vehicles that number of doors is not specified
SELECT COUNT(*) TotalVehicles
FROM VehicleDetails v 
WHERE NumDoors IS NULL