-- Problem 36: Get all vehicles that have Engin_CC below average
SELECT *
FROM VehicleDetails
WHERE Engine_CC < (SELECT AVG(Engine_CC) AS Avg FROM VehicleDetails )