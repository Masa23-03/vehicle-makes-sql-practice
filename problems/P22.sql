-- Problem 22: Get percentage of vehicles that has no doors specified

SELECT Perc= CAST (R1.TotalVehcilesWithNoDoorsSpecified AS decimal) / CAST (R1.TotalVehciles AS decimal)
FROM (
SELECT COUNT (*) TotalVehcilesWithNoDoorsSpecified ,( SELECT COUNT(*)  FROM VehicleDetails) TotalVehciles
FROM VehicleDetails
WHERE NumDoors IS NULL
)as R1

--or 

SELECT (
CAST( (SELECT COUNT (*) FROM VehicleDetails WHERE 
NumDoors IS NULL) AS decimal)
/
CAST(
(SELECT COUNT(*) FROM VehicleDetails)
AS decimal)
) AS Perc