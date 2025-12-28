-- Problem 12: Count Vehicles by make and order them by NumberOfVehicles from high to low.

SELECT m.Make , COUNT(*) AS NumberOfVehicles
FROM VehicleDetails v
INNER JOIN Makes m
ON v.MakeID = m.MakeID
GROUP BY m.Make
ORDER BY NumberOfVehicles DESC