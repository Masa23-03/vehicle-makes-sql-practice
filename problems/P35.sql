-- Problem 35: Get all vehicles that have the Maximum Engine_CC
SELECT * 
FROM VehicleDetails
WHERE Engine_CC = (SELECT MAX(Engine_CC) AS Max FROM VehicleDetails)