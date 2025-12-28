-- Problem 6: Get number of vehicles made between 1950 and 2000 per make and add total vehicles column beside 

SELECT m.Make , COUNT(*) NumberOfVehicles ,( SELECT COUNT (*)  FROM VehicleDetails) AS TotalVehicles 
FROM VehicleDetails v 
INNER JOIN Makes m ON v.MakeID=m.MakeID
WHERE v.Year BETWEEN 1950 AND 2000
GROUP BY m.Make
ORDER BY NumberOfVehicles DESC 
