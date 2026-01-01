-- Problem 37: Get total vehicles that have Engin_CC above average
SELECT COUNT(*)
FROM VehicleDetails
WHERE Engine_CC > (SELECT AVG(Engine_CC) FROM VehicleDetails)

