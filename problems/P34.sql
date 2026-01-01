-- Problem 34: Get all vehicles that have the minimum Engine_CC
SELECT *
FROM VehicleDetails 
WHERE Engine_CC = (SELECT Min(Engine_CC) FROM VehicleDetails)