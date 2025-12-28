-- Problem 13: Get all Makes/Count Of Vehicles that manufactures more than 20K Vehicles 

SELECT m.Make , COUNT(*) NumberOfVehicles
FROM VehicleDetails v 
INNER JOIN Makes m 
ON v.MakeID =m.MakeID
GROUP BY m.Make
HAVING COUNT(*) > 20000
ORDER BY NumberOfVehicles DESC