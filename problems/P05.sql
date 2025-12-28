 -- Problem 5 : Get All Makes that have manufactured more than 12000 Vehicles in years 1950 to 2000

 SELECT m.Make , COUNT(*) as NumberOfVehicles
 FROM VehicleDetails v 
 INNER JOIN Makes m
 ON v.MakeID= m.MakeID
 WHERE v.Year BETWEEN 1950  AND 2000
 GROUP BY m.Make
 HAVING Count(*) > 12000
 ORDER BY NumberOfVehicles	DESC
