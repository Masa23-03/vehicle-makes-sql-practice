-- Problem 7: Get number of vehicles made between 1950 and 2000 per make 
--            and add total vehicles column beside it, then calculate it's percentage 

SELECT * , CAST (NumberOfVehicles AS decimal) / CAST (TotalVehicles AS decimal) AS Perc FROM 
(
SELECT  m.Make , COUNT (*) NumberOfVehicles ,TotalVehicles = (SELECT COUNT (*) FROM VehicleDetails) FROM VehicleDetails v 
INNER JOIN Makes m 
ON v.MakeID = m.MakeID
WHERE v.Year BETWEEN 1950 AND 2000
GROUP BY m.Make
)AS R1
ORDER BY NumberOfVehicles DESC