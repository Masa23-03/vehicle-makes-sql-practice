-- Problem 4 : Get number vehicles made between 1950 and 2000 per make and order them by Number Of Vehicles Descending 

SELECT m.Make , NumberOfVehicles= COUNT(*)
FROM VehicleDetails v
JOIN Makes m
ON v.MakeID = m.MakeID 
WHERE v.Year BETWEEN 1950 AND 2000
GROUP BY m.Make
ORDER BY NumberOfVehicles DESC;
 